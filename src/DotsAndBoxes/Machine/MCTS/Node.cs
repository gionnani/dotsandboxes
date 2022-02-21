using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Accord.Statistics.Distributions.Multivariate;
using MoreLinq;

namespace DotsAndBoxes.Machine.MCTS
{
    /// <summary>
    /// Class Node
    /// </summary>
    public class Node
    {
        #region Properties

        /// <summary>
        /// Gets or sets the state.
        /// </summary>
        /// <value>
        /// The state.
        /// </value>
        public State State { get; set; }

        /// <summary>
        /// Gets or sets the parent.
        /// </summary>
        /// <value>
        /// The parent.
        /// </value>
        public Node Parent { get; set; }

        /// <summary>
        /// Gets or sets the child array.
        /// </summary>
        /// <value>
        /// The child array.
        /// </value>
        public List<Node> ChildArray { get; set; }

        private List<Tuple<Node, double>> DistributedNodes { get; set; }

        #endregion

        #region Methods

        /// <summary>
        /// Initializes a new instance of the <see cref="Node"/> class.
        /// </summary>
        /// <param name="board">The board.</param>
        public Node(IBoard board)
        {
            State = new State(board);
            ChildArray = new List<Node>();
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="Node"/> class.
        /// </summary>
        /// <param name="state">The state.</param>
        public Node(State state)
        {
            State = state;
            ChildArray = new List<Node>();
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="Node"/> class.
        /// </summary>
        /// <param name="node">The node.</param>
        public Node(Node node)
        {
            ChildArray = new List<Node>();
            State = new State(node.State);
            if (node.Parent != null)
                this.Parent = node.Parent;
            List<Node> childArray = node.ChildArray;
            foreach (Node child in childArray)
            {
                ChildArray.Add(new Node(child));
            }
        }

        /// <summary>
        /// Gets the random child node.
        /// </summary>
        /// <returns></returns>
        public Node GetRandomChildNode()
        {
            return ChildArray[Settings.Settings.Random.Next(0, ChildArray.Count - 1)];
        }

        /// <summary>
        /// Gets the child with maximum score.
        /// </summary>
        /// <returns></returns>
        public Node GetChildWithMaxScore()
        {
            return ChildArray.MaxBy(x => x.State.WinScore).RandomSubset(1).FirstOrDefault();
        }

        /// <summary>
        /// Gets the child by probability.
        /// </summary>
        /// <returns></returns>
        public Node GetRandomChildByProbability(bool distribution)
        {
            if (DistributedNodes == null)
            {
                if (distribution)
                {
                    var dd = new DirichletDistribution(ChildArray.Count, Constants.DirAlpha);
                    var i = 0;
                    // based on distribution
                    DistributedNodes = ChildArray.Select(x => new Tuple<Node, double>
                            (x, (((1 - Constants.E) * x.State.P) + (Constants.E * dd.Mean[i++]))))
                        .OrderByDescending(x => x.Item2).ToList();
                }
                else
                {
                    DistributedNodes = ChildArray.Select(x => new Tuple<Node, double>
                            (x, x.State.P)).OrderByDescending(x => x.Item2).ToList();
                }
            }

            var rNumber = Settings.Settings.Random.NextDouble();
            var v = 0.0;

            foreach (var d in DistributedNodes)
            {
                v += d.Item2;
                if (v >= rNumber)
                    return d.Item1;
            }

            return DistributedNodes.Last().Item1;

        }

        /// <summary>
        /// Gets the child with maximum visits.
        /// </summary>
        /// <returns></returns>
        public Node GetChildWithMaxVisits(double temperature)
        {
            // normalize to avoid infinity
            var cArray = ChildArray.Select(x => Math.Pow(Convert.ToDouble(x.State.N), (1.0 / temperature))).Zip(ChildArray).ToArray();
            // total
            var totalSum = cArray.Sum(y => y.First);
            return cArray.MaxBy(x => x.First / totalSum).RandomSubset(1).FirstOrDefault().Second;
        }

        /// <summary>
        /// Dumps the nodes.
        /// </summary>
        /// <param name="winnode">The winnode.</param>
        /// <returns></returns>
        public string DumpNodes(Node winnode = null)
        {
            var result = new StringBuilder();
            result.Append(Dump());

            if (winnode != null)
                result.AppendFormat("Winner: {0}>> ", winnode.Dump());

            if (ChildArray.Any())
            {
                foreach (var node in ChildArray)
                {
                    result.Append(node.Dump());
                }
            }

            return result.ToString();
        }

        /// <summary>
        /// Dumps this instance.
        /// </summary>
        /// <returns></returns>
        public string Dump()
        {
            return $"{State.Position?.Text ?? "Root"}(v{State.N}/q{State.Q}/w{State.W}/p{State.P}) ";
        }

        #endregion
    }
}
