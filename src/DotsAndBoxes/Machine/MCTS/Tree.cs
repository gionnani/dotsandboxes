namespace DotsAndBoxes.Machine.MCTS
{
    /// <summary>
    /// Tree representation.
    /// </summary>
    public class Tree
    {
        #region Constructors

        /// <summary>
        /// Gets or sets the root.
        /// </summary>
        /// <value>
        /// The root.
        /// </value>
        public Node Root { get; set; }

        /// <summary>
        /// Initializes a new instance of the <see cref="Tree"/> class.
        /// </summary>
        /// <param name="board">The board.</param>
        public Tree(IBoard board)
        {
            Root = new Node(board);
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="Tree"/> class.
        /// </summary>
        /// <param name="root">The root.</param>
        public Tree(Node root)
        {
            Root = root;
        }

        #endregion

        #region Methods

        /// <summary>
        /// Adds the child.
        /// </summary>
        /// <param name="parent">The parent.</param>
        /// <param name="child">The child.</param>
        public void AddChild(Node parent, Node child)
        {
            parent.ChildArray.Add(child);
        }

        #endregion
    }
}
