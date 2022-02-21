using System.Collections.Generic;
using System.Linq;
using System.Text;
using DotsAndBoxes.Machine.MCTS;
using DotsAndBoxes.Tools;

namespace DotsAndBoxes.Game
{
    public class MetricsZ : IMetrics
    {
        #region Constructors

        /// <summary>
        /// Initializes a new instance of the <see cref="MetricsZ"/> class.
        /// </summary>
        public MetricsZ()
        {
            Boards = new List<float[]>();
            Policies = new List<float[]>();
            Sequence = new List<int>();
        }

        #endregion

        #region Properties

        /// <summary>
        /// Gets or sets the value to the value network.
        /// </summary>
        /// <value>
        /// The value network value.
        /// </value>
        public float Value { get; set; }
        /// <summary>
        /// Gets or sets the dump string.
        /// </summary>
        /// <value>
        /// The dump string.
        /// </value>
        public string Dump { get; set; }

        /// <summary>
        /// Gets or sets the boards.
        /// </summary>
        /// <value>
        /// The boards.
        /// </value>
        public List<float[]> Boards { get; set; }

        /// <summary>
        /// Sequence to agents.
        /// </summary>
        private List<int> Sequence { get; set; } 

        /// <summary>
        /// Winner Agent Number.
        /// </summary>
        private int WinnerAgentNumber { get; set; }

        /// <summary>
        /// Gets or sets the policies.
        /// </summary>
        /// <value>
        /// The policies.
        /// </value>
        private List<float[]> Policies { get; set; }

        #endregion

        #region Interface Implementation

        /// <summary>
        /// Adds the specified value. Value ignored until the end.
        /// </summary>
        /// <param name="agentNumber">The agent's number of the game.</param>
        /// <param name="boardRepresentation">Board string representation.</param>
        /// <param name="value">The value network value.</param>
        /// <param name="policyValues">The policy network values.</param>
        /// <param name="dump">The dump values.</param>/>
        public void Add(int agentNumber, float[] boardRepresentation, float value, float[] policyValues, string dump)
        {
            Add(agentNumber, boardRepresentation, value, policyValues);
            Dump = dump;
        }

        /// <summary>
        /// Adds the specified board representation. Value ignored until the end.
        /// </summary>
        /// <param name="agentNumber">The agent's number of the game.</param>
        /// <param name="boardRepresentation">The board representation.</param>
        /// <param name="value">The value.</param>
        /// <param name="policyValues">The policy values.</param>
        public void Add(int agentNumber, float[] boardRepresentation, float value, float[] policyValues)
        {
            Boards.Add(boardRepresentation);
            Policies.Add(policyValues);
            Sequence.Add(agentNumber);
        }

        /// <summary>
        /// Adds the winner, 0 to none.
        /// </summary>
        /// <param name="agentNumber">Agent number.</param>
        public void AddWinner(int agentNumber)
        {
            WinnerAgentNumber = agentNumber;
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
            return "";
        }

        /// <summary>
        /// Gets the end policy network with symmetries.
        /// </summary>
        /// <returns></returns>
        /// <exception cref="System.NotImplementedException"></exception>
        public string GetEndPolicyNetworkWithSymmetries(int boxes)
        {
            var sb = new StringBuilder();
            foreach (var policy in Policies)
            {
                sb.Append(policy.ToSymmetriesRepresentation(boxes));
            }

            return $"{sb}\r\n";
        }

        /// <summary>
        /// Gets the value network with symmetries.
        /// </summary>
        /// <returns></returns>
        public string GetValueNetworkWithSymmetries()
        {
            return "";
        }

        /// <summary>
        /// Gets the end value network with symmetries.
        /// </summary>
        /// <returns></returns>
        public string GetEndValueNetworkWithSymmetries()
        {
            var sb = new StringBuilder();
            for (int i = 0; i < Boards.Count; i++)
            {
                var value = WinnerAgentNumber == 0 ? 0 : Sequence[i] == WinnerAgentNumber ? 1 : -1;
                sb.Append(string.Join("", Enumerable.Repeat($"{value} ", Constants.Symmetries)));
            }
            return $"{sb}\r\n";
        }

        /// <summary>
        /// Gets the board with symmetries.
        /// </summary>
        /// <param name="boxes">The boxes.</param>
        /// <returns></returns>
        public string GetBoardWithSymmetries(int boxes)
        {
            return "";
        }

        /// <summary>
        /// Gets the end boards network with symmetries.
        /// </summary>
        /// <returns></returns>
        /// <exception cref="System.NotImplementedException"></exception>
        public string GetEndBoardsNetworkWithSymmetries(int boxes)
        {
            var sb = new StringBuilder();
            foreach (var board in Boards)
            {
                sb.Append(board.ToSymmetriesRepresentation(boxes));
            }

            return $"{sb}\r\n";
        }

        /// <summary>
        /// Gets the dump string.
        /// </summary>
        /// <returns></returns>
        public string GetDump()
        {
            var dump = Dump?.Clone().ToString() ?? "";
            Dump = "";
            return dump;
        }

        #endregion
    }
}
