using System;
using System.Linq;
using MoreLinq;

namespace DotsAndBoxes.Machine.MCTS
{
    /// <summary>
    /// Class UCT to calculate better node.
    /// </summary>
    public class Ucb
    {
        #region Methods

        /// <summary>
        /// Ucb to tree - Uct value.
        /// </summary>
        /// <param name="totalVisit">The total visit.</param>
        /// <param name="nodeWinScore">The node win score.</param>
        /// <param name="nodeVisit">The node visit.</param>
        /// <returns></returns>
        public static double UctValue(int totalVisit, float nodeWinScore, int nodeVisit)
        {
            if (nodeVisit == 0)
            {
                return int.MaxValue;
            }
            return ((nodeWinScore) / nodeVisit)
                   + Settings.Settings.Uct * Math.Sqrt(Math.Log(totalVisit) / (nodeVisit));
        }

        /// <summary>
        /// Upper confidence bound used for the neural network
        /// </summary>
        /// <param name="totalVisit">The total visit.</param>
        /// <param name="q">Q value.</param>
        /// <param name="p">Probability.</param>
        /// <param name="nodeVisit">The node visits.</param>
        /// <returns></returns>
        public static double UcbValue(int totalVisit, float q, float p, int nodeVisit)
        {
            return q + (Constants.ExplorationLevel * p * (Math.Sqrt(totalVisit) / (1 + nodeVisit)));
        }

        /// <summary>
        /// Finds the best child node with uct.
        /// </summary>
        /// <param name="node">The node.</param>
        /// <returns></returns>
        public static Node FindBestChildWithUct(Node node)
        {
            int parentVisit = node.State.VisitCount;
            return node.ChildArray.MaxBy(x => UctValue(parentVisit, x.State.WinScore, x.State.VisitCount))
                .RandomSubset(1)
                .FirstOrDefault();
        }

        /// <summary>
        /// Finds the best child node with ucb.
        /// </summary>
        /// <param name="node">The node.</param>
        /// <returns></returns>
        public static Node FindBestChildWithUcb(Node node)
        {
            int totalVisit = node.State.N;
            return node.ChildArray.MaxBy(x =>
                UcbValue(totalVisit, x.State.Q, x.State.P, x.State.VisitCount))
                .RandomSubset(1)
                .FirstOrDefault();
        }

        #endregion
    }
}
