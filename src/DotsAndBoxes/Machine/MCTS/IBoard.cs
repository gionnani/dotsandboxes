using System;
using System.Collections.Generic;
using DotsAndBoxes.Game;
using NeuralNetwork;

namespace DotsAndBoxes.Machine.MCTS
{
    /// <summary>
    /// Interface to the MCTS board.
    /// </summary>
    public interface IBoard : IEquatable<IBoard>
    {
        /// <summary>
        /// Gets or sets the metrics.
        /// </summary>
        /// <value>
        /// The metrics.
        /// </value>
        static IMetrics Metrics { get; set; }
        /// <summary>
        /// Gets the maximum turns.
        /// </summary>
        /// <value>
        /// The maximum turns.
        /// </value>
        int MaxTurns { get; }
        /// <summary>
        /// Gets the maximum matrix.
        /// </summary>
        /// <value>
        /// The maximum matrix.
        /// </value>
        int MatrixLength { get; }
        /// <summary>
        /// Gets or sets the last points.
        /// </summary>
        /// <value>
        /// The last points.
        /// </value>
        int LastPoints { get; }
        /// <summary>
        /// Gets the lines.
        /// </summary>
        /// <value>
        /// The lines.
        /// </value>
        int[,] Lines { get; }
        /// <summary>
        /// Gets the columns.
        /// </summary>
        /// <value>
        /// The columns.
        /// </value>
        int[,] Columns { get; }
        /// <summary>
        /// Gets the round number.
        /// </summary>
        /// <value>
        /// The round number.
        /// </value>
        int RoundNumber { get; }
        /// <summary>
        /// Gets the turn agent.
        /// </summary>
        /// <returns></returns>
        IAgent GetActiveAgent();
        /// <summary>
        /// Gets the status.
        /// </summary>
        /// <returns></returns>
        BoardStatus GetStatus();
        /// <summary>
        /// Executes the random play.
        /// </summary>
        /// <returns>The board.</returns>
        IBoard RandomPlay();
        /// <summary>
        /// Gets the empty positions.
        /// </summary>
        /// <returns></returns>
        List<Position> GetEmptyPositions();
        /// <summary>
        /// Gets all the positions.
        /// </summary>
        /// <returns></returns>
        List<Position> GetPositions();
        /// <summary>
        /// Plays the specified string play.
        /// </summary>
        /// <param name="stringPlay">The string play.</param>
        /// <returns>The final board.</returns>
        IBoard Play(string stringPlay);
        /// <summary>
        /// Gets the turn points.
        /// </summary>
        /// <returns></returns>
        int GetEndPoints();
        /// <summary>
        /// Clones this instance.
        /// </summary>
        /// <returns></returns>
        IBoard Clone();
        /// <summary>
        /// Converts to float.
        /// </summary>
        /// <returns></returns>
        public float[] ToFloat();
        /// <summary>
        /// Converts to random symmetry [1..8].
        /// </summary>
        /// <returns></returns>
        public float[] ToRandomSymmetry();
        /// <summary>
        /// Creates the board.
        /// </summary>
        /// <returns></returns>
        string CreateBoard(bool force = false);
                /// <summary>
        /// Adds the agent.
        /// </summary>
        /// <param name="pc">The pc.</param>
        /// <param name="agent1Type">Type of the agent1.</param>
        /// <param name="cnn">The CNN.</param>
        void AddAgent(string pc, AgentType agent1Type, ICnnDots cnn);
        /// <summary>
        /// Gets or sets a value indicating whether this <see cref="IBoard"/> is finished.
        /// </summary>
        /// <value>
        ///   <c>true</c> if finished; otherwise, <c>false</c>.
        /// </value>
        bool IsFinished { get; }
        /// <summary>
        /// Gets the winner text status.
        /// </summary>
        /// <value>
        /// The winner text status.
        /// </value>
        string WinnerStatus { get; }
        /// <summary>
        /// Gets the winner.
        /// </summary>
        /// <value>
        /// The winner.
        /// </value>
        IAgent Winner { get; }
        /// <summary>
        /// Gets or sets the result.
        /// </summary>
        /// <value>
        /// The result.
        /// </value>
        string Result { get; }
        /// <summary>
        /// Gets or sets the name of the turn agent.
        /// </summary>
        /// <value>
        /// The name of the turn agent.
        /// </value>
        string TurnAgentName { get; }
        /// <summary>
        /// Gets a value indicating whether this <see cref="IBoard"/> is finished before complete all marks.
        /// </summary>
        /// <value>
        ///   <c>true</c> if finished before; otherwise, <c>false</c>.
        /// </value>
        bool IsFinishedBefore { get; }
        /// <summary>
        /// Gets a value indicating whether this instance is lost.
        /// </summary>
        /// <value>
        ///   <c>true</c> if this instance is lost; otherwise, <c>false</c>.
        /// </value>
        bool IsLost { get; }
        /// <summary>
        /// Gets or sets the winner before complete all marks.
        /// </summary>
        /// <value>
        /// The winner before complete all marks.
        /// </value>
        IAgent WinnerBefore { get; }
        /// <summary>
        /// Gets the points for the agent 1.
        /// </summary>
        /// <value>
        /// The points of agent 1.
        /// </value>
        int PointsA1 { get; }
        /// <summary>
        /// Gets the points agent 2.
        /// </summary>
        /// <value>
        /// The points agent 2.
        /// </value>
        int PointsA2 { get; }
        /// <summary>
        /// Gets the new board.
        /// </summary>
        /// <returns></returns>
        IBoard GetNewBoard();
        /// <summary>
        /// Gets the last play.
        /// </summary>
        /// <value>
        /// The last play.
        /// </value>
        string LastPlay { get; }
    }
}
