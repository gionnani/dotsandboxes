namespace NeuralNetwork.Models.Core
{
    public interface IModel<out T> where T : class, IInput
    {
        /// <summary>
        /// Gets or sets the name.
        /// </summary>
        /// <value>
        /// The name.
        /// </value>
        string Name { get; set; }

        /// <summary>
        /// Gets or sets the version.
        /// </summary>
        /// <value>
        /// The version.
        /// </value>
        int Version { get; set; }

        /// <summary>
        /// Gets or sets the seed.
        /// </summary>
        /// <value>
        /// The seed.
        /// </value>
        int? Seed { get; set; }

        /// <summary>
        /// The variables path for model
        /// </summary>
        string[] VariablesPath { get; set; }

        /// <summary>
        /// Gets the input CNN.
        /// </summary>
        /// <value>
        /// The input CNN.
        /// </value>
        string[] InputProperties { get; }

        /// <summary>
        /// Gets the output properties.
        /// </summary>
        /// <value>
        /// The output properties.
        /// </value>
        string[] OutputProperties { get; }

        /// <summary>
        /// Gets the input instance.
        /// </summary>
        /// <param name="state">The state.</param>
        /// <returns></returns>
        T CreateInputInstance(float[] state);

        /// <summary>
        /// Creates the input sample.
        /// </summary>
        /// <returns></returns>
        T CreateInputSample();
    }
}