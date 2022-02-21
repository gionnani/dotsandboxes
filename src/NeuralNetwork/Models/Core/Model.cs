using System;

namespace NeuralNetwork.Models.Core
{
    public class Model<T> : IModel<T> where T : class, IInput
    {
        #region Constructors

        public Model(string name, string variablesPath, int? seed, int version)
        {
            Name = name;
            VariablesPath = new[] { variablesPath };
            Seed = seed;
            Version = version;
        }

        #endregion

        #region Properties

        /// <summary>
        /// Gets or sets the name.
        /// </summary>
        /// <value>
        /// The name.
        /// </value>
        public string Name { get; set; }

        /// <summary>
        /// Gets or sets the version.
        /// </summary>
        /// <value>
        /// The version.
        /// </value>
        public int Version { get; set; }

        /// <summary>
        /// Gets or sets the seed.
        /// </summary>
        /// <value>
        /// The seed.
        /// </value>
        public int? Seed { get; set; }

        /// <summary>
        /// The variables path for model
        /// </summary>
        public string[] VariablesPath { get; set; }

        #endregion

        #region Interface Implementation

        /// <summary>
        /// Gets the input instance.
        /// </summary>
        /// <param name="state">The state.</param>
        /// <returns></returns>
        public T CreateInputInstance(float[] state)
        {
            T instance = Activator.CreateInstance<T>();
            instance.VariablesPath = VariablesPath;
            instance.State = state;
            return instance;
        }

        /// <summary>
        /// Creates the input sample.
        /// </summary>
        /// <returns></returns>
        public T CreateInputSample()
        {
            T instance = Activator.CreateInstance<T>();
            instance.VariablesPath = VariablesPath;
            instance.State = instance.StateSample;
            return instance;
        }

        /// <summary>
        /// Gets the input CNN.
        /// </summary>
        /// <value>
        /// The input CNN.
        /// </value>
        public string[] InputProperties => Activator.CreateInstance<T>().InputProperties;

        /// <summary>
        /// Gets the output properties.
        /// </summary>
        /// <value>
        /// The output properties.
        /// </value>
        public string[] OutputProperties => Output.OutputProperties;

        #endregion
    }
}
