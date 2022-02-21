using System;
using System.Collections.Generic;
using System.Linq;
using Accord.Math;
using Accord.Statistics.Distributions.Multivariate;
using DotsAndBoxes.Game;
using DotsAndBoxes.Tools;
using MoreLinq;
using NeuralNetwork.Models.Core;

namespace DotsAndBoxes.Machine.MCTS
{
    /// <summary>
    /// Class that represents Monte Carlo Tree Search.
    /// </summary>
    public class MonteCarloTreeSearch
    {
        #region Variables

        /// <summary>
        /// Gets the MCTS mode.
        /// </summary>
        /// <value>
        /// The MCTS mode.
        /// </value>
        public Mode Mode { get; }

        #endregion

        #region Constructors

        /// <summary>
        /// Instance of Monte Carlo Tree Search.
        /// </summary>
        /// <param name="mctsMode">Training or Competitive.</param>
        public MonteCarloTreeSearch(Mode mctsMode)
        {
            Mode = mctsMode;
        }

        #endregion

        #region Methods

        /// <summary>
        /// Finds the next move.
        /// </summary>
        /// <param name="board">The board.</param>
        /// <param name="modelPrediction">Optional model prediction.</param>
        /// <returns></returns>
        public IBoard FindNextMove(IBoard board, Func<float[], Output> modelPrediction = null)
        {
            // defines an end time which will act as a terminating condition
            var agent = board.GetActiveAgent();
            Tree tree = new Tree(board);
            // winner node
            Node winnerNode = null;
            
            // executes MCTS
            if (modelPrediction == null)
            {
                winnerNode = Mcts(agent, tree.Root);
            }
            else
            {
                winnerNode = MctsNn(agent, tree.Root, modelPrediction);
            }

            // winner node
            if (winnerNode == null)
                return board;

            if (winnerNode.Parent != null)
                CreateMetrics(board, winnerNode, agent, winnerNode.State.Board.RoundNumber <= Constants.GameCount && Mode == Mode.TrainingMode
                    ? Constants.MaxTemperature
                    : Constants.MinTemperature);

            return winnerNode.State.Board;
        }

        /// <summary>
        /// Create metrics to exportation.
        /// </summary>
        /// <param name="board">Board.</param>
        /// <param name="winnerNode">Winner node.</param>
        /// <param name="agent">Current agent.</param>
        /// <param name="temperature">Temperature.</param>
        /// <returns></returns>
        private void CreateMetrics(IBoard board, Node winnerNode, IAgent agent, float temperature)
        {
            int j = 0;
            var positionList = winnerNode.State.Board.GetPositions();
            var policyList = new List<float>();
            var normalizedPositions = new List<float>();
            // sum of scores
            foreach (var position in positionList)
            {
                Node node;
                // put zeros at the end if available values is over.
                try
                {
                    node = winnerNode.Parent.ChildArray[j];
                }
                catch (Exception)
                {
                    policyList.Add(0);
                    continue;
                }

                // compares position
                if (node.State.Position.Equals(position))
                {
                    // policy 
                    float p;
                    if (temperature < 1)
                        p = winnerNode == node ? 1 : 0;
                    else
                        p = (float) Math.Pow(node.State.N,  1.0 / temperature);
                    
                    if (float.IsNaN(p) || float.IsInfinity(p) || float.IsNegativeInfinity(p))
                        p = 0;
                    
                    policyList.Add(Math.Abs(p));
                    j++;
                }
                // non valid move
                else
                {
                    policyList.Add(0);
                }
            }

            // normalize positions
            var sum = policyList.Sum();
            policyList.ForEach(x => normalizedPositions.Add(x / sum));

            // Q Metric
            var positiveNode = winnerNode.Parent.ChildArray.MaxBy(x => x.State.Q).RandomSubset(1).FirstOrDefault();
            IBoard.Metrics.Add(agent.Number, board.ToFloat(),
                // value
                winnerNode == positiveNode ? 1 : -1,
                        normalizedPositions.ToArray());
            IBoard.Metrics.AddDump($"{winnerNode.State.Board.RoundNumber}-{agent}|Next: {winnerNode.State.Board.GetActiveAgent()}|Pts: {winnerNode.State.Board.LastPoints}|{winnerNode.Parent.DumpNodes(winnerNode)}{winnerNode.State.Board.CreateBoard(true)}");
        }

        /// <summary>
        /// MCTSs the specified agent.
        /// </summary>
        /// <param name="agent">The agent.</param>
        /// <param name="rootNode">The root node.</param>
        /// <returns></returns>
        private Node Mcts(IAgent agent, Node rootNode)
        {
            var time = Environment.TickCount64;
            var endTime = Environment.TickCount64 + (agent.Number == 1 ? Settings.Settings.MillisecondsP1 : Settings.Settings.MillisecondsP2);

            while (time < endTime)
            {
                // Phase 1 - Selection
                Node promisingNode = SelectPromisingNode(rootNode);

                // Phase 2 - Expansion
                if (!promisingNode.State.Board.IsFinished)
                {
                    ExpandNode(promisingNode);
                }

                // Phase 3 - Simulation
                Node nodeToExplore = promisingNode;
                if (promisingNode.ChildArray.Count > 0)
                {
                    nodeToExplore = promisingNode.GetRandomChildNode();
                }

                for (int i = 0; i < (agent.Number == 1 ? Settings.Settings.SimulationsP1 : Settings.Settings.SimulationsP2); i++)
                {
                    BoardStatus playoutResult = SimulateRandomPlayout(nodeToExplore, out var winScore);
                    // Phase 4 - Backpropagation
                    BackPropagation(nodeToExplore, playoutResult, agent.Number, winScore);
                }

                time = Environment.TickCount64;
            }

            return rootNode.GetChildWithMaxScore();
        }

        /// <summary>
        /// MCTSs the specified agent.
        /// </summary>
        /// <param name="agent">The agent.</param>
        /// <param name="rootNode">The root node.</param>
        /// <returns></returns>
        private Node MctsNn(IAgent agent, Node rootNode, Func<float[], Output> modelPrediction)
        {
            DataController.Store($"INPUT START       : [{rootNode.State.Board}]\r\n", FileType.DumpNet);
            var j = 0;
            
            while (j < (agent.Number == 1 ? Settings.Settings.SimulationsP1 : Settings.Settings.SimulationsP2))
            {
                // Phase 1 - Selection
                Node priorNode = rootNode;
                
                // Phase 3 - Simulation
                Node nodeToExplore = rootNode;

                int plus = -1;

                // Phase 4 - Backpropagation
                while (!nodeToExplore.State.Board.IsFinished)
                {
                    nodeToExplore = SelectPromisingNodeNn(nodeToExplore);
                    
                    // expands only new nodes
                    if (!nodeToExplore.ChildArray.Any())
                    {
                        Output prediction;

                        //js network
                        if (agent.Type == AgentType.OtherIA)
                        {
                            // only n = 3
                            prediction = modelPrediction(Converters.ToJsState(nodeToExplore.State.GetStateRepresentation(),
                                nodeToExplore.State.Board.PointsA1, nodeToExplore.State.Board.PointsA2,
                                nodeToExplore.State.Board.IsFinished));
                            prediction.PolicyNetwork = Converters.ToDotsAndBoxesState(prediction.PolicyNetwork);
                        }
                        else
                        {
                            prediction = modelPrediction(nodeToExplore.State.GetStateRepresentation());
                        }

                        priorNode.State.AddScore(plus * prediction.ValueNetwork[0]);

                        ExpandNodeNn(nodeToExplore, prediction.PolicyNetwork);

                        DataController.Store($"INPUT-NET         : [{nodeToExplore.State.Board}]\r\n", FileType.DumpNet);
                        DataController.Store($"POINTS            : [{nodeToExplore.State.Board.LastPoints}]\r\n", FileType.DumpNet);
                        DataController.Store($"VALUE-NET MULTI   : [{plus}]\r\n", FileType.DumpNet);
                        DataController.Store($"OUTPUT-VALUE-NET  : [{prediction.ValueNetwork[0]}]\r\n", FileType.DumpNet);
                        DataController.Store($"OUTPUT-POLICY-NET : [{string.Join(" ", prediction.PolicyNetwork)}]\r\n", FileType.DumpNet);
                        DataController.Store($"BOARD             : [{nodeToExplore.State.Board.CreateBoard(true)}]\r\n", FileType.DumpNet);
                    }

                    BackPropagationNn(nodeToExplore);

                    // invert player if no points
                    plus *= (nodeToExplore.State.Board.LastPoints > 0 ? 1 : -1);
                }

                j++;
            }

            // temperature must be set to ~0 or 1
            if (rootNode.ChildArray.Any())
                rootNode = rootNode.GetChildWithMaxVisits(
                    rootNode.State.Board.RoundNumber <= Constants.GameCount && Mode == Mode.TrainingMode
                        ? Constants.MaxTemperature
                        : Constants.MinTemperature);

            DataController.Store($"INPUT FINAL       : [{rootNode.State.Board}]\r\n", FileType.DumpNet);

            return rootNode;
        }

        /// <summary>
        /// Selects the promising node.
        /// </summary>
        /// <param name="rootNode">The root node.</param>
        /// <returns></returns>
        private Node SelectPromisingNode(Node rootNode)
        {
            Node node = rootNode;
            while (node.ChildArray.Count != 0)
            {
                node = Ucb.FindBestChildWithUct(node);
            }
            return node;
        }

        /// <summary>
        /// Selects the promising node.
        /// </summary>
        /// <param name="rootNode">The root node.</param>
        /// <returns></returns>
        private Node SelectPromisingNodeNn(Node rootNode)
        {
            Node node = rootNode;

            //// Additional noise - doesn't work very well
            //if (Mode == Mode.TrainingMode)
            //AddNoise(rootNode);

            if (rootNode.State.Board.RoundNumber <= Constants.GameCount && Mode == Mode.TrainingMode)
            {
                while (node.ChildArray.Count != 0)
                {
                    node = node.GetRandomChildByProbability(true);
                }
            }
            else
            {
                while (node.ChildArray.Count != 0)
                {
                    node = Ucb.FindBestChildWithUcb(node);
                }
            }

            return node;
        }

        /// <summary>
        /// Noise by DirichletDistribution
        /// </summary>
        /// <param name="node"></param>
        private void AddNoise(Node node)
        {
            if (node.Parent == null || node.Parent.ChildArray.Count <= 1)
                return;
            
            var dd = new DirichletDistribution(node.Parent.ChildArray.Count, Constants.DirAlpha);
            var i = 0;
            node.Parent.ChildArray.ForEach(x =>
                x.State.P = (float) (((1 - Constants.E) * node.State.P) + (Constants.E * dd.Mean[i++])));
        }

        /// <summary>
        /// Expands the node.
        /// </summary>
        /// <param name="node">The node.</param>
        private void ExpandNode(Node node)
        {
            List<State> possibleStates = node.State.GetAllPossibleStates();
            possibleStates.ForEach(state =>
            {
                Node newNode = new Node(state);
                newNode.Parent = node;
                node.ChildArray.Add(newNode);
            });
        }

        /// <summary>
        /// Expands the node.
        /// </summary>
        /// <param name="node">The node.</param>
        /// <param name="policyNetwork">Prediction output for the policy network.</param>
        private void ExpandNodeNn(Node node, float[] policyNetwork)
        {
            List<State> possibleStates = node.State.GetAllPossibleStates(policyNetwork);
            possibleStates.ForEach(state =>
            {
                Node newNode = new Node(state);
                newNode.Parent = node;
                node.ChildArray.Add(newNode);
            });
        }

        /// <summary>
        /// Default Backpropagation.
        /// </summary>
        /// <param name="nodeToExplore">The node to explore.</param>
        /// <param name="winner">The winner.</param>
        /// <param name="agentNo">The agent no.</param>
        /// <param name="winScore">The win score.</param>
        private void BackPropagation(Node nodeToExplore, BoardStatus winner, int agentNo, int winScore)
        {
            Node tempNode = nodeToExplore;
            while (tempNode != null)
            {
                tempNode.State.IncrementVisit();
                if (agentNo == (int)winner)
                {
                    // sum with bonus
                    tempNode.State.AddScore(winScore + tempNode.State.Bonus);
                }
                tempNode = tempNode.Parent;
            }
        }

        /// <summary>
        /// Backpropagation regulated by NN.
        /// </summary>
        /// <param name="nodeToExplore">The node to explore.</param>
        private void BackPropagationNn(Node nodeToExplore)
        {
            Node tempNode = nodeToExplore;

            while (tempNode != null)
            {
                // node update
                tempNode.State.CalculateQ();
                // visit update
                tempNode.State.IncrementVisit();
                tempNode = tempNode.Parent;
            }
        }

        /// <summary>
        /// Simulates the random playout.
        /// </summary>
        /// <param name="node">The node.</param>
        /// <param name="winScore">The win score.</param>
        /// <returns></returns>
        private BoardStatus SimulateRandomPlayout(Node node, out int winScore)
        {
            Node tempNode = new Node(node);
            State tempState = tempNode.State;
            while (!tempState.Board.IsFinished)
            {
                // play one time
                tempState.Board.RandomPlay();
            }

            // keep score
            winScore = tempState.Board.GetEndPoints();
            return tempState.Board.GetStatus();
        }

        #endregion
    }
}
