using System;
using DotsAndBoxes.Game;
using DotsAndBoxes.Machine.MCTS;
using Newtonsoft.Json;

namespace DotsAndBoxes.Settings
{
    /// <summary>
    /// Class that defines the program settings.
    /// </summary>
    public class Settings
    {
        #region Json Properties

        /// <summary>
        /// Gets or sets the uct.
        /// </summary>
        [JsonProperty]
        public static double Uct { get; set; }
        /// <summary>
        /// Number of simulations P1.
        /// </summary>
        [JsonProperty]
        public static int SimulationsP1 { get; set; }
        /// <summary>
        /// Number of simulations P2.
        /// </summary>
        [JsonProperty]
        public static int SimulationsP2 { get; set; }
        /// <summary>
        /// Seed value.
        /// </summary>
        [JsonProperty]
        public static int? Seed { get; set; }
        /// <summary>
        /// Milliseconds to wait - Monte Carlo thinking P1.
        /// </summary>
        [JsonProperty]
        public static int MillisecondsP1 { get; set; }
        /// <summary>
        /// Milliseconds to wait - Monte Carlo thinking P2.
        /// </summary>
        [JsonProperty]
        public static int MillisecondsP2 { get; set; }
        /// <summary>
        /// Bonus value. -1 to estimate.
        /// </summary>
        [JsonProperty]
        public static int Bonus { get; set; }
        /// <summary>
        /// Number of boxes.
        /// </summary>
        [JsonProperty]
        public static int Boxes { get; set; }
        /// <summary>
        /// Number of games.
        /// </summary>
        [JsonProperty]
        public static int NumberOfGames { get; set; }
        /// <summary>
        /// Agent 1 type - Human (1), Random (2), MCTS (3), CNN (4)
        /// </summary>
        [JsonProperty]
        public static int Agent1Type { get; set; }
        /// <summary>
        /// Gets or sets the agent1 CNN.
        /// </summary>
        /// <value>
        /// The agent1 CNN.
        /// </value>
        [JsonProperty]
        public static int Agent1Cnn { get; set; }
        /// <summary>
        /// Agent 2 type - Human (1), Random (2), MCTS (3), CNN (4)
        /// </summary>
        [JsonProperty]
        public static int Agent2Type { get; set; }
        /// <summary>
        /// Gets or sets the agent2 CNN.
        /// </summary>
        /// <value>
        /// The agent2 CNN.
        /// </value>
        [JsonProperty]
        public static int Agent2Cnn { get; set; }
        /// <summary>
        /// Gets or sets the output folder.
        /// </summary>
        [JsonProperty]
        public static string OutputFolder { get; set; }
        /// <summary>
        /// Output result file in case of automatic play.
        /// </summary>
        [JsonProperty]
        public static string OutputFile { get; set; }
        /// <summary>
        /// Gets or sets a value indicating whether [output identifier].
        /// </summary>
        /// <value>
        ///   <c>true</c> if [output identifier]; otherwise, <c>false</c>.
        /// </value>
        [JsonProperty]
        public static bool OutputId { get; set; }
        /// <summary>
        /// Gets or sets the mode for MCTS.
        /// </summary>
        /// <value>
        /// The MCTS mode.
        /// </value>
        [JsonProperty]
        public static Mode Mode { get; set; }

        #endregion

        #region Properties

        /// <summary>
        /// Random class instance.
        /// </summary>
        public static Random Random { get; set; }

        #endregion

        #region Static Methods

        /// <summary>
        /// Initializes the settings.
        /// </summary>
        public static void InitializeDefaultSettings(int boxes)
        {
            Initialize();
            Boxes = boxes;
            MillisecondsP1 = 5000;
            MillisecondsP2 = 5000;
            Seed = 435;
            SimulationsP1 = 100;
            SimulationsP2 = 100;
            Uct = 1.41;
            Bonus = Boxes;
            OutputFolder = "results";
            OutputFile = $"results-{boxes}";
            Mode = Mode.CompetitiveMode;
            OutputId = true;
        }

        /// <summary>
        /// Initializes this instance.
        /// </summary>
        public static void Initialize()
        {
            Random = Seed.HasValue ? new Random(Seed.Value) : new Random();
        }

        /// <summary>
        /// Initializes the default export settings.
        /// </summary>
        /// <param name="boxes">The boxes.</param>
        public static void InitializeDefaultExportSettings(int boxes)
        {
            InitializeDefaultSettings(boxes);
            NumberOfGames = 100;
            Agent1Type = (int)AgentType.MCTS;
            Agent2Type = (int)AgentType.Random;
            OutputFile = $"results-{boxes}";
            OutputId = true;
        }

        /// <summary>
        /// Generates the metrics for the game.
        /// </summary>
        /// <returns></returns>
        public static IMetrics GenerateMetrics()
        {
            return new MetricsZ();
        }

        #endregion
    }
}
