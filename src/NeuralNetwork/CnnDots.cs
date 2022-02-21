using System.Collections.Generic;
using Microsoft.ML;
using Microsoft.ML.Transforms;
using NeuralNetwork.Models.Core;
using Tensorflow;

namespace NeuralNetwork
{
    /// <summary>
    /// Implementation of Neural Network for Dots and Boxes.
    /// </summary>
    /// <seealso cref="System.IDisposable" />
    public class CnnDots<T>: ICnnDots where T : class, IInput
    {
        #region Variables

        private IModel<T> _model;
        /// <summary>
        /// The machine learning context
        /// </summary>
        private MLContext _mlContext;
        /// <summary>
        /// The tensor flow model
        /// </summary>
        private TensorFlowModel _tensorFlowModel;
        /// <summary>
        /// The pipeline
        /// </summary>
        private IEstimator<ITransformer> _pipeline;
        /// <summary>
        /// Machine learning model trained
        /// </summary>
        private ITransformer _mlModel;

        #endregion

        #region Properties

        /// <summary>
        /// Gets or sets the version.
        /// </summary>
        /// <value>
        /// The version.
        /// </value>
        public int Version => _model.Version;

        #endregion

        #region Methods

        /// <summary>
        /// Loads the trained model.
        /// </summary>
        public void LoadTrainedModel(IModel<T> model)
        {
            if (model == null)
                return;

            _model = model;
            _mlContext = new MLContext(_model.Seed);
            _tensorFlowModel = _mlContext.Model.LoadTensorFlowModel(_model.Name);

            // debug propose
            // var t1 = _tensorFlowModel.GetInputSchema();
            // var t2 = _tensorFlowModel.GetModelSchema();

            _pipeline = _tensorFlowModel.ScoreTensorFlowModel(
                _model.OutputProperties,
                _model.InputProperties);

            // Creates an executable model from the estimator pipeline
            IDataView dataView = _mlContext.Data.LoadFromEnumerable(new[] { model.CreateInputSample() });
            // Trains the ML model (this doesn't train the tf model)
            _mlModel = _pipeline.Fit(dataView);
        }

        #endregion

        #region Interface Implementation

        /// <summary>
        /// Gets the prediction for the state.
        /// </summary>
        /// <param name="state">The state.</param>
        /// <returns></returns>
        public Output GetPrediction(float[] state)
        {
            var input = _model.CreateInputInstance(state);

            // predict based on cnn
            var engine = _mlContext.Model.CreatePredictionEngine<T, Output>(_mlModel);
            var prediction = engine.Predict(input);

            // return prediction
            return prediction;
        }

        /// <summary>
        /// Gets the prediction for many states.
        /// </summary>
        /// <param name="states">List of states.</param>
        /// <returns></returns>
        public Output GetPrediction(IList<float[]> states)
        {
            var inputs = new List<T>(states.Count);
            var outputs = new List<Output>();

            foreach (var state in states)
            {
                inputs.Add(_model.CreateInputInstance(state));
            }

            // predict based on cnn
            var engine = _mlContext.Model.CreatePredictionEngine<T, Output>(_mlModel);
            foreach (var input in inputs)
            {
                outputs.add(engine.Predict(input));
            }

            // return all predictions
            return null;
        }

        /// <summary>
        /// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
        /// </summary>
        public void Dispose()
        {
            _tensorFlowModel?.Dispose();
        }

        #endregion
    }
}
