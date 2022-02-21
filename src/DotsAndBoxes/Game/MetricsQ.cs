using DotsAndBoxes.Machine.MCTS;
using DotsAndBoxes.Tools;

namespace DotsAndBoxes.Game
{
    /// <summary>
    /// Metrics for the MCTS.
    /// </summary>
    public class MetricsQ : IMetrics
    {
        #region Properties

        /// <summary>
        /// Gets or sets the value to the value network.
        /// </summary>
        /// <value>
        /// The value network value.
        /// </value>
        public float Value { get; set; }
        /// <summary>
        /// Gets or sets values to the policy network.
        /// </summary>
        /// <value>
        /// The policy network values.
        /// </value>
        public float[] PolicyValues { get; set; }
        /// <summary>
        /// Gets or sets the dump string.
        /// </summary>
        /// <value>
        /// The dump string.
        /// </value>
        public string Dump { get; set; }
        /// <summary>
        /// Gets or sets the board representation.
        /// </summary>
        /// <value>
        /// The board representation.
        /// </value>
        public float[] BoardRepresentation { get; set; }

        #endregion

        #region Interface Implementation

        /// <summary>
        /// Adds the specified value.
        /// </summary>
        /// <param name="agentNumber">The agent's number of the game.</param>
        /// <param name="boardRepresentation">Board string representation.</param>
        /// <param name="value">The value network value.</param>
        /// <param name="policyValues">The policy network values.</param>
        /// <param name="dump">The dump values.</param>/>
        public void Add(int agentNumber, float[] boardRepresentation, float value, float[] policyValues, string dump)
        {
            BoardRepresentation = boardRepresentation;
            Value = value;
            PolicyValues = policyValues;
            Dump = dump;
        }

        /// <summary>
        /// Adds the specified board representation.
        /// </summary>
        /// <param name="agentNumber">The agent's number of the game.</param>
        /// <param name="boardRepresentation">The board representation.</param>
        /// <param name="value">The value.</param>
        /// <param name="policyValues">The policy values.</param>
        public void Add(int agentNumber, float[] boardRepresentation, float value, float[] policyValues)
        {
            BoardRepresentation = boardRepresentation;
            Value = value;
            PolicyValues = policyValues;
        }

        /// <summary>
        /// Adds the winner.
        /// </summary>
        /// <param name="agentNumber">The agent number.</param>
        public void AddWinner(int agentNumber)
        {
            // ignored
        }


        /// <summary>
        /// Adds the specified dump string.
        /// </summary>
        /// <param name="dumpString">The dump string.</param>
        public void AddDump(string dumpString)
        {
            Dump += dumpString;
        }

        /// <summary>
        /// Gets the policy network representation with symmetries.
        /// </summary>
        /// <param name="boxes">The boxes.</param>
        /// <returns></returns>
        public string GetPolicyNetworkWithSymmetries(int boxes)
        {
            return PolicyValues.ToSymmetriesRepresentation(boxes);
        }

        /// <summary>
        /// Gets the value network with symmetries.
        /// </summary>
        /// <returns></returns>
        public string GetValueNetworkWithSymmetries()
        {
            return string.Format("{0} {0} {0} {0} {0} {0} {0} {0} ", Value);
        }

        /// <summary>
        /// Gets the end value network with symmetries.
        /// </summary>
        /// <returns></returns>
        public string GetEndValueNetworkWithSymmetries()
        {
            return "\r\n";
        }

        /// <summary>
        /// Gets the board with symmetries.
        /// </summary>
        /// <param name="boxes">The boxes.</param>
        /// <returns></returns>
        public string GetBoardWithSymmetries(int boxes)
        {
            return BoardRepresentation.ToSymmetriesRepresentation(boxes);
        }

        /// <summary>
        /// Gets the dump string.
        /// </summary>
        /// <returns></returns>
        public string GetDump() => Dump;

        /// <summary>
        /// Gets the end boards network with symmetries.
        /// </summary>
        /// <returns></returns>
        public string GetEndBoardsNetworkWithSymmetries(int boxes)
        {
            return "\r\n";
        }

        /// <summary>
        /// Gets the end policy network with symmetries.
        /// </summary>
        /// <returns></returns>
        public string GetEndPolicyNetworkWithSymmetries(int boxes)
        {
            return "\r\n";
        }

        #endregion

    }
}
