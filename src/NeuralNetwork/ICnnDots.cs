using System;
using System.Collections.Generic;
using NeuralNetwork.Models.Core;

namespace NeuralNetwork
{
    public interface ICnnDots : IDisposable
    {
        /// <summary>
        /// Gets the prediction for the state.
        /// </summary>
        /// <param name="state">The state.</param>
        /// <returns></returns>
        Output GetPrediction(float[] state);

        /// <summary>
        /// Gets the prediction for many states.
        /// </summary>
        /// <param name="states">List of states.</param>
        /// <returns></returns>
        Output GetPrediction(IList<float[]> states);

        /// <summary>
        /// Gets or sets the version.
        /// </summary>
        /// <value>
        /// The version.
        /// </value>
        int Version { get; }
    }
}