namespace DotsAndBoxes.Machine.MCTS
{
    public interface IMetrics
    {
        /// <summary>
        /// Adds the specified board representation.
        /// </summary>
        /// <param name="agentNumber">The agent's number of the game.</param>
        /// <param name="boardRepresentation">The board representation.</param>
        /// <param name="value">The value.</param>
        /// <param name="policyValues">The policy values.</param>
        /// <param name="dump">The dump.</param>
        void Add(int agentNumber, float[] boardRepresentation, float value, float[] policyValues, string dump);

        /// <summary>
        /// Adds the specified board representation.
        /// </summary>
        /// <param name="agentNumber">The agent's number of the game.</param>
        /// <param name="boardRepresentation">The board representation.</param>
        /// <param name="value">The value.</param>
        /// <param name="policyValues">The policy values.</param>
        void Add(int agentNumber, float[] boardRepresentation, float value, float[] policyValues);

        /// <summary>
        /// Adds the winner.
        /// </summary>
        /// <param name="agentNumber">The agent number.</param>
        void AddWinner(int agentNumber);

        /// <summary>
        /// Adds the specified dump string.
        /// </summary>
        /// <param name="dumpString">The dump string.</param>
        void AddDump(string dumpString);

        /// <summary>
        /// Gets the policy network representation with symmetries.
        /// </summary>
        /// <param name="boxes">The boxes.</param>
        /// <returns></returns>
        string GetPolicyNetworkWithSymmetries(int boxes);

        /// <summary>
        /// Gets the end policy network with symmetries.
        /// </summary>
        /// <returns></returns>
        string GetEndPolicyNetworkWithSymmetries(int boxes);
        
        /// <summary>
        /// Gets the value network with symmetries.
        /// </summary>
        /// <returns></returns>
        string GetValueNetworkWithSymmetries();

        /// <summary>
        /// Gets the end value network with symmetries.
        /// </summary>
        /// <returns></returns>
        string GetEndValueNetworkWithSymmetries();

        /// <summary>
        /// Gets the board with symmetries.
        /// </summary>
        /// <param name="boxes">The boxes.</param>
        /// <returns></returns>
        string GetBoardWithSymmetries(int boxes);

        /// <summary>
        /// Gets the end boards network with symmetries.
        /// </summary>
        /// <returns></returns>
        string GetEndBoardsNetworkWithSymmetries(int boxes);
        
        /// <summary>
        /// Gets the dump.
        /// </summary>
        /// <returns></returns>
        string GetDump();
    }
}