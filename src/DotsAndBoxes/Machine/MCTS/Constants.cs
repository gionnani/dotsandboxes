namespace DotsAndBoxes.Machine.MCTS
{
    public class Constants
    {
        /// <summary>
        /// The game count to change temperature value.
        /// </summary>
        public const int GameCount = 3;

        /// <summary>
        /// The maximum temperature
        /// </summary>
        public const float MaxTemperature = 1.0f;
        
        /// <summary>
        /// The minimum temperature
        /// </summary>
        public const float MinTemperature = 0.01f;
        
        /// <summary>
        /// The e value
        /// </summary>
        public const float E = 0.25f;

        /// <summary>
        /// The dir alpha
        /// 10/possibilities
        /// </summary>
        public const float DirAlpha = 0.41f;

        /// <summary>
        /// The exploration level
        /// </summary>
        public const float ExplorationLevel = 1;

        /// <summary>
        /// Total symmetries
        /// </summary>
        public const int Symmetries = 8;
    }
}
