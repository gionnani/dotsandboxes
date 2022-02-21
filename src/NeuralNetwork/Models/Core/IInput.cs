namespace NeuralNetwork.Models.Core
{
    public interface IInput
    {
        /// <summary>
        /// Gets the state sample.
        /// </summary>
        /// <value>
        /// The state sample.
        /// </value>
        float[] StateSample { get; }
        /// <summary>
        /// Gets or sets the state.
        /// </summary>
        /// <value>
        /// The state.
        /// </value>
        float[] State { get; set; }

        /// <summary>
        /// Gets or sets the variables path.
        /// </summary>
        /// <value>
        /// Variables path.
        /// </value>
        string[] VariablesPath { get; set; }

        /// <summary>
        /// Gets the input properties for NN.
        /// </summary>
        /// <value>
        /// The input properties.
        /// </value>
        string[] InputProperties { get; }
    }
}