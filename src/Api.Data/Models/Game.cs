using System;

namespace Api.Data.Models
{
    /// <summary>
    /// Model Game
    /// </summary>
    public class Game
    {
        /// <summary>
        /// Gets or sets the identifier.
        /// </summary>
        /// <value>
        /// The identifier.
        /// </value>
        public Guid Id { get; set; }
        /// <summary>
        /// Gets or sets the identifier agent1.
        /// </summary>
        /// <value>
        /// The identifier agent1.
        /// </value>
        public Guid IdAgent1 { get; set; }
        /// <summary>
        /// Gets or sets the identifier agent2.
        /// </summary>
        /// <value>
        /// The identifier agent2.
        /// </value>
        public Guid IdAgent2 { get; set; }
        /// <summary>
        /// Gets or sets the type of the game.
        /// </summary>
        /// <value>
        /// The type of the game.
        /// </value>
        public short GameType { get; set; }
        /// <summary>
        /// Gets or sets the started date.
        /// </summary>
        /// <value>
        /// The started date.
        /// </value>
        public DateTime StartedDate { get; set; }

        /// <summary>
        /// Fills the agents ids.
        /// </summary>
        public void FillIds()
        {
            IdAgent1 = Guid.NewGuid();
            IdAgent2 = Guid.NewGuid();
        }
    }
}
