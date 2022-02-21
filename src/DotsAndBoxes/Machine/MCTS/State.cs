using System.Collections.Generic;

namespace DotsAndBoxes.Machine.MCTS
{
    /// <summary>
    /// State of the game representation
    /// </summary>
    public class State
    {
        #region Properties

        /// <summary>
        /// Gets or sets the position.
        /// </summary>
        /// <value>
        /// The position.
        /// </value>
        public Position Position { get; set; }
        /// <summary>
        /// Gets or sets the board.
        /// </summary>
        /// <value>
        /// The board.
        /// </value>
        public IBoard Board { get; set; }
        /// <summary>
        /// Gets or sets the visit count.
        /// </summary>
        /// <value>
        /// The visit count.
        /// </value>
        public int VisitCount { get; set; }
        /// <summary>
        /// Gets or sets the win score.
        /// </summary>
        /// <value>
        /// The win score.
        /// </value>
        public float WinScore { get; set; }
        /// <summary>
        /// Gets or sets the bonus.
        /// </summary>
        /// <value>
        /// The bonus.
        /// </value>
        public float Bonus { get; set; }

        // NN        
        /// <summary>
        /// Gets the W.
        /// </summary>
        /// <value>
        /// The w.
        /// </value>
        public float W => WinScore;
        /// <summary>
        /// Gets the N.
        /// </summary>
        /// <value>
        /// The n.
        /// </value>
        public int N => VisitCount;

        /// <summary>
        /// Gets or sets the Q.
        /// </summary>
        /// <value>
        /// The q.
        /// </value>
        public float Q { get; set; }
        /// <summary>
        /// Gets or sets the P.
        /// </summary>
        /// <value>
        /// The p.
        /// </value>
        public float P { get; set; }

        #endregion

        #region Constructors

        /// <summary>
        /// Initializes a new instance of the <see cref="State"/> class.
        /// </summary>
        /// <param name="state">The state.</param>
        public State(State state)
        {
            Board = state.Board.Clone();
            VisitCount = state.VisitCount;
            WinScore = state.WinScore;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="State"/> class.
        /// </summary>
        /// <param name="board">The board.</param>
        public State(IBoard board)
        {
            Board = board.Clone();
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="State"/> class.
        /// </summary>
        /// <param name="board">The board.</param>
        /// <param name="position">The position.</param>
        public State(IBoard board, Position position) : this(board)
        {
            Position = position;
        }

        #endregion

        #region Methods

        /// <summary>
        /// Gets all possible states.
        /// </summary>
        /// <returns></returns>
        public List<State> GetAllPossibleStates()
        {
            // constructs a list of all possible states from current state
            List<State> states = new List<State>();

            foreach (var emptyPosition in Board.GetEmptyPositions())
            {
                State state = new State(Board, emptyPosition);
                // keep data
                IAgent p = state.Board.GetActiveAgent();
                state.Board.Play(emptyPosition.Text);
                // set the bonus if play made a point
                if (p == state.Board.GetActiveAgent())
                    state.Bonus = Settings.Settings.Bonus;
                states.Add(state);
            }
            return states;
        }

        /// <summary>
        /// Gets all possible states with prediction.
        /// </summary>
        /// <param name="policyNetwork">The prediction for policy network.</param>
        /// <returns></returns>
        public List<State> GetAllPossibleStates(float[] policyNetwork)
        {
            // constructs a list of all possible states from current state
            List<State> states = new List<State>();
            float summation = 0f;

            foreach (var emptyPosition in Board.GetEmptyPositions())
            {
                State state = new State(Board, emptyPosition);
                // keep data
                state.Board.Play(emptyPosition.Text);
                state.P = policyNetwork[emptyPosition.Numeric];
                summation += state.P;
                states.Add(state);
            }

            // regularization
            if (summation > 0)
                states.ForEach(x => x.P /= summation);
            return states;
        }

        /// <summary>
        /// Increments the visit.
        /// </summary>
        public void IncrementVisit()
        {
            VisitCount++;
        }

        /// <summary>
        /// Adds the score.
        /// </summary>
        /// <param name="wiwScore">The wiw score.</param>
        public void AddScore(float wiwScore)
        {
            WinScore += wiwScore;
        }

        /// <summary>
        /// Calculates the Q value.
        /// </summary>
        public void CalculateQ()
        {
            Q = (N * Q + W) / (N + 1);
        }
        
        /// <summary>
        /// Gets the state representation for CNN input.
        /// </summary>
        /// <returns></returns>
        public float[] GetStateRepresentation()
        {
            return Board.ToFloat();
        }

        /// <summary>
        /// Gets the symmetric representation.
        /// </summary>
        /// <returns></returns>
        public float[] GetSymmetricRepresentation()
        {
            return Board.ToRandomSymmetry();
        }

        #endregion
    }
}
