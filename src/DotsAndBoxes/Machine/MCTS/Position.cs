using System;

namespace DotsAndBoxes.Machine.MCTS
{
    /// <summary>
    /// Positions for elements.
    /// </summary>
    public class Position: IEquatable<Position>
    {
        #region Constructors

        /// <summary>
        /// Initializes a new instance of the <see cref="Position"/> class.
        /// </summary>
        /// <param name="text">The text.</param>
        /// <param name="numeric">The numeric.</param>
        public Position(string text, int numeric)
        {
            Text = text;
            Numeric = numeric;
        }

        #endregion

        #region Properties

        /// <summary>
        /// Gets or sets the text position.
        /// </summary>
        /// <value>
        /// The text position.
        /// </value>
        public string Text { get; set; }
        /// <summary>
        /// Gets or sets the numeric position.
        /// </summary>
        /// <value>
        /// The numeric position.
        /// </value>
        public int Numeric { get; set; }

        #endregion

        #region Interface Implementation

        /// <summary>
        /// Indicates whether the current object is equal to another object of the same type.
        /// </summary>
        /// <param name="other">An object to compare with this object.</param>
        /// <returns>
        ///   <see langword="true" /> if the current object is equal to the <paramref name="other" /> parameter; otherwise, <see langword="false" />.
        /// </returns>
        public bool Equals(Position other)
        {
            return Numeric.Equals(other?.Numeric);
        }

        #endregion
    }
}
