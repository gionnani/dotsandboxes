using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Api.Data.Models
{
    /// <summary>
    /// Model Turns
    /// </summary>
    public class Turn
    {
        /// <summary>
        /// Gets or sets the game identifier.
        /// </summary>
        /// <value>
        /// The game identifier.
        /// </value>
        public Guid GameId { get; set; }
        /// <summary>
        /// Gets or sets the position played.
        /// </summary>
        /// <value>
        /// The position played.
        /// </value>
        public string PositionPlayed { get; set; }
        /// <summary>
        /// Gets or sets the agent identifier.
        /// </summary>
        /// <value>
        /// The agent identifier.
        /// </value>
        public Guid AgentId { get; set; }
        /// <summary>
        /// Gets or sets the agent no.
        /// </summary>
        /// <value>
        /// The agent no.
        /// </value>
        public int AgentNo { get; set; }
        /// <summary>
        /// Gets or sets the resulted board.
        /// </summary>
        /// <value>
        /// The resulted board.
        /// </value>
        public string ResultedBoard { get; set; }
        /// <summary>
        /// Gets or sets the step.
        /// </summary>
        /// <value>
        /// The step.
        /// </value>
        public short Step { get; set; }
        /// <summary>
        /// Gets or sets the points.
        /// </summary>
        /// <value>
        /// The points.
        /// </value>
        public short Points { get; set; }
        /// <summary>
        /// Gets or sets a value indicating whether this <see cref="Turn"/> is pass.
        /// </summary>
        /// <value>
        ///   <c>true</c> if pass; otherwise, <c>false</c>.
        /// </value>
        public bool Pass { get; set; }

        /// <summary>
        /// Gets or sets the full board.
        /// </summary>
        /// <value>
        /// The full board.
        /// </value>
        [NotMapped]
        public string FullBoard { get; set; }
        /// <summary>
        /// Gets or sets the opponent board.
        /// </summary>
        /// <value>
        /// The opponent board.
        /// </value>
        [NotMapped]
        public string OpponentBoard { get; set; }
        /// <summary>
        /// Gets or sets the opponent position.
        /// </summary>
        /// <value>
        /// The opponent position.
        /// </value>
        [NotMapped]
        public string OpponentPosition { get; set; }
    }
}