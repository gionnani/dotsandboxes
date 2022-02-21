using DotsAndBoxes.Game;

namespace DotsAndBoxes.Machine.MCTS
{
    public interface IAgent
    {
        /// <summary>
        /// Gets or sets the MCTS.
        /// </summary>
        /// <value>
        /// The MCTS.
        /// </value>
        public static MonteCarloTreeSearch Mcts { get; set; }

        /// <summary>
        /// Gets or sets the agent name.
        /// </summary>
        /// <value>
        /// The name.
        /// </value>
        string Name { get; set; }

        /// <summary>
        /// Gets or sets the agent's mark.
        /// </summary>
        /// <value>
        /// The mark.
        /// </value>
        string Mark { get; set; }

        /// <summary>
        /// Gets or sets the agent's type.
        /// </summary>
        /// <value>
        /// The type.
        /// </value>
        AgentType Type { get; set; }

        /// <summary>
        /// Gets the points.
        /// </summary>
        /// <value>
        /// The points.
        /// </value>
        int Points { get; }

        /// <summary>
        /// Gets the number of the agent.
        /// </summary>
        /// <value>
        /// The number of the agent.
        /// </value>
        int Number { get; }

        /// <summary>
        /// Gets a value indicating whether this instance is human or other IA.
        /// </summary>
        /// <value>
        ///   <c>true</c> if this instance is human or other IA; otherwise, <c>false</c>.
        /// </value>
        bool IsManual { get; }

        /// <summary>
        /// Gets the random play.
        /// </summary>
        /// <param name="board">The board.</param>
        /// <returns></returns>
        IBoard GetRandomPlay(IBoard board);

        /// <summary>
        /// Plays the specified string play in the board.
        /// </summary>
        /// <param name="stringPlay">The string play.</param>
        /// <param name="board">Board to play.</param>
        /// <returns>The new board.</returns>
        IBoard Play(string stringPlay, IBoard board);

        /// <summary>
        /// Increments the point.
        /// </summary>
        /// <param name="points">The points.</param>
        void IncrementPoint(int points = 1);

        /// <summary>
        /// Clones this instance.
        /// </summary>
        /// <returns></returns>
        IAgent Clone();
    }
}
