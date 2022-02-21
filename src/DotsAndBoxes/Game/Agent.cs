using DotsAndBoxes.Machine.MCTS;
using NeuralNetwork;

namespace DotsAndBoxes.Game
{
    /// <summary>
    /// Class that represents a game agent.
    /// </summary>
    public class Agent : IAgent
    {
        #region Variables
        
        private ICnnDots _cnn;
        private string _name;

        #endregion

        #region Constructors

        /// <summary>
        /// Initializes a new instance of the <see cref="Agent"/> class.
        /// </summary>
        /// <param name="name">The name.</param>
        /// <param name="type">The type.</param>
        /// <param name="agentNumber">The agent number.</param>
        /// <param name="cnn">The cnn.</param>
        public Agent(string name, AgentType type, int agentNumber, ICnnDots cnn)
        {
            Name = name;
            Type = type;
            Number = agentNumber;
            _cnn = cnn;
            Points = 0;
        }

        #endregion

        #region Interface Implementation

        /// <summary>
        /// Gets or sets the agent name.
        /// </summary>
        /// <value>
        /// The name.
        /// </value>
        public string Name
        {
            get => _name;
            set
            {
                _name = value;
                Mark = " " + value.Substring(0, 1).ToUpper();
            }
        }

        /// <summary>
        /// Gets or sets the agent's mark.
        /// </summary>
        /// <value>
        /// The mark.
        /// </value>
        public string Mark { get; set; }
        /// <summary>
        /// Gets or sets the agent's type.
        /// </summary>
        /// <value>
        /// The type.
        /// </value>
        public AgentType Type { get; set; }
        /// <summary>
        /// Gets the points.
        /// </summary>
        /// <value>
        /// The points.
        /// </value>
        public int Points { get; private set; }
        /// <summary>
        /// Gets the number of the agent.
        /// </summary>
        /// <value>
        /// The number of the agent.
        /// </value>
        public int Number { get; }
        /// <summary>
        /// Gets a value indicating whether this instance is humam or other IA.
        /// </summary>
        /// <value>
        ///   <c>true</c> if this instance is humam or other IA; otherwise, <c>false</c>.
        /// </value>
        public bool IsManual => Type == AgentType.Human || Type == AgentType.OtherIA;

        /// <summary>
        /// Gets the random play.
        /// If MCTS the board maybe needs to be kept in outside.
        /// </summary>
        /// <param name="board">Board to play.</param>
        /// <returns>
        /// The new board.
        /// </returns>
        public IBoard GetRandomPlay(IBoard board)
        {
            switch (Type)
            {
                case AgentType.Random:
                    return board.RandomPlay();
                case AgentType.MCTS:
                    return IAgent.Mcts.FindNextMove(board);
                case AgentType.MCTS_CNN:
                case AgentType.OtherIA:
                    return IAgent.Mcts.FindNextMove(board, _cnn.GetPrediction);
            }

            return null;
        }

        /// <summary>
        /// Plays the specified string play in the board.
        /// </summary>
        /// <param name="stringPlay">The string play.</param>
        /// <param name="board">Board to play.</param>
        /// <returns>The new board.</returns>
        public IBoard Play(string stringPlay, IBoard board)
        {
            return board.Play(stringPlay);
        }

        /// <summary>
        /// Increments the point.
        /// </summary>
        /// <param name="points">The points.</param>
        public void IncrementPoint(int points = 1)
        {
            Points += points;
        }

        /// <summary>
        /// Clones this instance.
        /// </summary>
        /// <returns></returns>
        public IAgent Clone()
        {
            return new Agent(Name, Type, Number, _cnn)
            {
                Points = this.Points
            };
        }

        /// <summary>
        /// Converts to string.
        /// </summary>
        /// <returns>
        /// A <see cref="System.String" /> that represents this instance.
        /// </returns>
        public override string ToString()
        {
            return Type switch
            {
                AgentType.MCTS_CNN => $"{Name}/{_cnn.Version}",
                AgentType.OtherIA => $"{Name}/OtIA",
                _ => $"{Name}"
            };
        }

        #endregion
    }
}
