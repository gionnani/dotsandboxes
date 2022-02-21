using Microsoft.ML.Data;

namespace NeuralNetwork.Models.Core
{
    /// <summary>
    /// Output for CNN.
    /// </summary>
    public class Output
    {
        #region Constants

        public const string PolicyNetworkAttribute = "StatefulPartitionedCall:0";
        public const string ValueNetworkAttribute = "StatefulPartitionedCall:1";

        #endregion

        #region Properties

        /// <summary>
        /// Gets or sets the policy network.
        /// </summary>
        /// <value>
        /// The policy network.
        /// </value>
        [ColumnName(PolicyNetworkAttribute), VectorType(1)]
        public float[] PolicyNetwork { get; set; }

        /// <summary>
        /// Gets or sets the value network.
        /// </summary>
        /// <value>
        /// The value network.
        /// </value>
        [ColumnName(ValueNetworkAttribute), VectorType(1)]
        public float[] ValueNetwork { get; set; }

        /// <summary>
        /// Gets the output properties.
        /// </summary>
        /// <value>
        /// The output properties.
        /// </value>
        public static string[] OutputProperties => new[] { PolicyNetworkAttribute, ValueNetworkAttribute };

        #endregion
    }
}
