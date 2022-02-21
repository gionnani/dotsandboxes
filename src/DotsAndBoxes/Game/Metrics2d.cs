using System.Collections.Generic;
using System.Linq;
using System.Text;
using DotsAndBoxes.Machine.MCTS;
using MoreLinq.Extensions;

namespace DotsAndBoxes.Game
{
    public class Metrics2d : IMetrics
    {
        #region Properties

        /// <summary>
        /// Gets or sets the value to the value network.
        /// </summary>
        /// <value>
        /// The value network value.
        /// </value>
        public List<float> Value { get; set; }
        /// <summary>
        /// Gets or sets values to the policy network.
        /// </summary>
        /// <value>
        /// The policy network values.
        /// </value>
        public List<float[]> PolicyValues { get; set; }
        /// <summary>
        /// Gets or sets the dump string.
        /// </summary>
        /// <value>
        /// The dump string.
        /// </value>
        public List<string> Dump { get; set; }
        /// <summary>
        /// Gets or sets the board representation.
        /// </summary>
        /// <value>
        /// The board representation.
        /// </value>
        public List<float[]> BoardRepresentation { get; set; }

        /// <summary>
        /// The number of itens to export.
        /// </summary>
        protected const int NumberOfItens = 10;

        /// <summary>
        /// The matrix length
        /// </summary>
        private int MatrixLength;

        #endregion

        #region Constructor

        /// <summary>
        /// Initializes a new instance of the <see cref="Metrics2d"/> class.
        /// </summary>
        public Metrics2d(int matrixLength)
        {
            Value = new List<float>();
            PolicyValues = new List<float[]>();
            Dump = new List<string>();
            BoardRepresentation = new List<float[]>();
            MatrixLength = matrixLength;

            for (int i = 0; i < NumberOfItens; i++)
            {
                Value.Add(0);
                PolicyValues.Add(Enumerable.Repeat(0f, matrixLength).ToArray());
                Dump.Add("");
                BoardRepresentation.Add(Enumerable.Repeat(0f, matrixLength).ToArray());
            }
        }

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
            // adds the new value
            BoardRepresentation.Add(boardRepresentation);
            Value.Add(value);
            PolicyValues.Add(policyValues);
            Dump.Add(dump);
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
            // adds the new value
            BoardRepresentation.Add(boardRepresentation);
            Value.Add(value);
            PolicyValues.Add(policyValues);
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
            Dump.Add(dumpString);
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
        public string GetEndPolicyNetworkWithSymmetries(int boxes)
        {
            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < NumberOfItens; i++)
                PolicyValues.Add(Enumerable.Repeat(0f, MatrixLength).ToArray());

            for (int i = 0; i < MatrixLength; i++)
                for (int j = NumberOfItens - 1; j >= 0; j--)
                    sb.AppendFormat("{0} ", PolicyValues[i + j].ToDelimitedString(" "));

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
            var values = Value.ToArray();

            for (int i = 0; i < NumberOfItens; i++)
                return string.Join(" ", Enumerable.Repeat($"{values[i] }\r\n", MatrixLength));
            
            return sb.ToString();
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
        public string GetEndBoardsNetworkWithSymmetries(int boxes)
        {
            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < NumberOfItens; i++)
                BoardRepresentation.Add(Enumerable.Repeat(0f, MatrixLength).ToArray());

            for (int i = 0; i < MatrixLength; i++)
                for (int j = NumberOfItens - 1; j >= 0; j--)
                    sb.AppendFormat("{0} ", BoardRepresentation[i + j].ToDelimitedString(" "));

            return $"{sb}\r\n";
        }

        /// <summary>
        /// Gets the dump string.
        /// </summary>
        /// <returns></returns>
        public string GetDump() => string.Join("", Dump);

        #endregion
    }
}
