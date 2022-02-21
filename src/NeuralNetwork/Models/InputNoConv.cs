using Microsoft.ML.Data;
using NeuralNetwork.Models.Core;

namespace NeuralNetwork.Models
{
    /// <summary>
    /// Input for CNN.
    /// </summary>
    public class InputNoConv : IInput
    {
        #region Constants

        public const string StateAttribute = "serving_default_state_7_4";
        public const string VariablesPathAttribute = "saver_filename";

        #endregion

        #region Properties

        /// <summary>
        /// Gets the sample state.
        /// </summary>
        /// <value>
        /// The sample state.
        /// </value>
        public float[] StateSample => new float[28];

        /// <summary>
        /// Gets or sets the state.
        /// </summary>
        /// <value>
        /// The state.
        /// </value>
        [ColumnName(StateAttribute), VectorType(7, 4)]
        public float[] State { get; set; }

        /// <summary>
        /// Gets or sets the variables path.
        /// </summary>
        /// <value>
        /// Variables path.
        /// </value>
        [ColumnName(VariablesPathAttribute), VectorType(1)]
        public string[] VariablesPath { get; set; }

        /// <summary>
        /// Gets the input properties for NN.
        /// </summary>
        /// <value>
        /// The input properties.
        /// </value>
        public string[] InputProperties => new[] { StateAttribute, VariablesPathAttribute };
        
        #endregion
    }
}
