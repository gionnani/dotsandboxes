using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;
using System.Linq;
using DotsAndBoxes.Game;
using DotsAndBoxes.Machine.MCTS;

namespace DotsAndBoxes.Tools.Tests
{
    [TestClass()]
    public class ConvertersTests
    {
        /// <summary>
        /// Rotates the and flip tests.
        /// </summary>
        [TestMethod()]
        public void RotateAndFlipTests()
        {
            for (int n = 1; n <= 10; n++)
            {
                Settings.Settings.InitializeDefaultSettings(n);
                Board board = new Board(n);
                board.InitializeAgentsForTests();

                foreach (var position in board.GetPositions())
                {
                    board.Play(position.Text);
                    IBoard.Metrics = new MetricsQ();
                    IBoard.Metrics.Add(board.GetActiveAgent().Number, board.ToFloat(), 1, board.ToFloat());
                    Assert.AreEqual(board.ToString(), IBoard.Metrics.GetBoardWithSymmetries(n));
                }
            }
        }

        /// <summary>
        /// Inversions the of test.
        /// </summary>
        [TestMethod()]
        public void InversionOfTest()
        {
            var list = new List<string>() {"0", "1", "0", "1", "0", "-1"};
            var listInverted = new List<string>() {"0", "-1", "0", "-1", "0", "1"};
            Assert.AreEqual(string.Join(" ", listInverted), string.Join(" ", Converters.InversionOf(list)));
        }

        /// <summary>
        /// Inversions the of test1.
        /// </summary>
        [TestMethod()]
        public void InversionOfTest1()
        {
            Assert.AreEqual("0", Converters.InversionOf("0"));
            Assert.AreEqual("1", Converters.InversionOf("-1"));
            Assert.AreEqual("-1", Converters.InversionOf("1"));
            Assert.AreEqual("2", Converters.InversionOf("-2"));
            Assert.AreEqual("-2", Converters.InversionOf("2"));
        }

        /// <summary>
        /// Combines all string test.
        /// </summary>
        [TestMethod()]
        public void CombineAllStringTest()
        {
            for (int n = 1; n <= 10; n++)
            {
                Settings.Settings.InitializeDefaultSettings(n);
                Board board = new Board(n);
                board.InitializeAgentsForTests();
                int k = 1;
                foreach (var position in board.GetPositions())
                {
                    board.Play(position.Text);
                    List<string> e = Enumerable.Repeat("1", k).ToList();
                    e.AddRange(Enumerable.Repeat("0", board.MatrixLength - k));

                    // first zero
                    e[n] = "0";
                    // next zeros
                    int j = 3 * (n + 1) - 1;
                    for (int i = j; i <= board.MatrixLength; i++)
                    {
                        if (i == j)
                        {
                            e[i] = "0";
                            j += 2 * (n + 1);
                        }
                    }

                    Assert.AreEqual(string.Join(" ", e), board.Lines.CombineAllString(board.Columns, n));
                    k++;
                }
            }
        }

        /// <summary>
        /// Combines all test.
        /// </summary>
        [TestMethod()]
        public void CombineAllTest()
        {
            for (int n = 1; n <= 3; n++)
            {
                Settings.Settings.InitializeDefaultSettings(n);
                Board board = new Board(n);
                board.InitializeAgentsForTests();
                int k = 1;
                foreach (var position in board.GetPositions())
                {
                    board.Play(position.Text);
                    List<float> e = Enumerable.Repeat(1f, k).ToList();
                    e.AddRange((Enumerable.Repeat(0f, board.MatrixLength - k)));

                    // first zero
                    e[n] = 0f;
                    // next zeros
                    int j = 3 * (n + 1) - 1;
                    for (int i = j; i <= board.MatrixLength; i++)
                    {
                        if (i == j)
                        {
                            e[i] = 0f;
                            j += 2 * (n + 1);
                        }
                    }

                    Assert.AreEqual(string.Join(" ", e), string.Join(" ", board.ToFloat()));
                    k++;
                }
            }
        }
    }
}