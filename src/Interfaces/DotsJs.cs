using System;
using Api.Data.Models;
using DotsAndBoxes.Game;
using DotsAndBoxes.Machine.MCTS;
using DotsAndBoxes.Settings;
using NeuralNetwork;

namespace Interfaces
{
    /// <summary>
    /// DotsJs Opponent
    /// </summary>
    /// <seealso cref="Interfaces.IInterface" />
    public class DotsJs: IInterface
    {
        /// <summary>
        /// Gets or sets the CNN.
        /// </summary>
        /// <value>
        /// The CNN.
        /// </value>
        public ICnnDots Cnn { get; set; }
        /// <summary>
        /// Gets or sets the identifier.
        /// </summary>
        /// <value>
        /// The identifier.
        /// </value>
        public Guid Id { get; set; }

        /// <summary>
        /// Initializes a new instance of the <see cref="DotsJs"/> class.
        /// </summary>
        /// <param name="cnn">The CNN.</param>
        /// <param name="id">The identifier.</param>
        public DotsJs(ICnnDots cnn, Guid id)
        {
            Cnn = cnn;
            Id = id;
            IAgent.Mcts = new MonteCarloTreeSearch(Mode.CompetitiveMode);
            Settings.Random = new Random();
        }

        /// <summary>
        /// Gets the data to play.
        /// Integration Turn.
        /// </summary>
        /// <param name="opponentTurn">The opponent turn.</param>
        /// <returns></returns>
        public Turn GetDataPlay(Turn opponentTurn)
        {   
            IBoard board = new Board(ToDotsAndBoxesState(opponentTurn.ResultedBoard), Cnn, 3, opponentTurn.GameId.ToString());
            board = board.GetNewBoard();
            var state = board.ToFloat();

            var myTurn = new Turn()
            {
                GameId = opponentTurn.GameId,
                Pass = board.GetActiveAgent().Number == 1,
                Step = opponentTurn.Step,
                Points = (short) board.GetEndPoints(),
                ResultedBoard = string.Join("", state),
                PositionPlayed = board.LastPlay,
                AgentNo = board.GetActiveAgent().Number,
                AgentId = Id,
                FullBoard = board.CreateBoard(true),
                OpponentBoard = ToJsState(state, board.PointsA1, board.PointsA2, board.IsFinished),
                OpponentPosition = ToDotJsPosition(board.LastPlay)
            };
            myTurn.Step++;

            return myTurn;
        }

        /// <summary>
        /// Converts to simples state.
        /// </summary>
        /// <param name="state">The state.</param>
        /// <returns></returns>
        public static string ToSimpleState(string state)
        {
            return state.Replace(",", "");
        }

        /// <summary>
        /// Converts to dots and boxes state.
        /// </summary>
        /// <param name="state">The state.</param>
        /// <returns></returns>
        public static string[] ToDotsAndBoxesState(string state)
        {
            var s = state.Split(',');
            return new[]
            {
                s[0], s[1], s[2], s[3], s[16], s[17], s[18], s[19], s[4], s[5], s[6], s[7], s[20], s[21],
                s[22], s[23], s[8], s[9], s[10], s[11], s[24], s[25], s[26], s[27], s[12], s[13], s[14], s[15]
            };
        }

        /// <summary>
        /// Converts to js state.
        /// </summary>
        /// <param name="s">The s.</param>
        /// <param name="pointsA">The points a.</param>
        /// <param name="pointsB">The points b.</param>
        /// <param name="isFinished">if set to <c>true</c> [is finished].</param>
        /// <returns></returns>
        public static string ToJsState(float[] s, int pointsA, int pointsB, bool isFinished)
        {
            string finished = isFinished ? "1" : "0";
            return
                $"{s[0]},{s[1]},{s[2]},{pointsA},{s[8]},{s[9]},{s[10]},{pointsB},{s[16]},{s[17]},{s[18]},{finished},{s[24]},{s[25]},{s[26]},{s[27]}," +
                $"{s[4]},{s[5]},{s[6]},{s[7]},{s[12]},{s[13]},{s[14]},{s[15]},{s[20]},{s[21]},{s[22]},{s[23]}";
        }

        /// <summary>
        /// Converts to dotjs position.
        /// </summary>
        /// <param name="postion">The postion.</param>
        /// <returns></returns>
        public static string ToDotJsPosition(string postion)
        {
            return postion switch
            {
                "aA" => "0",
                "bA" => "1",
                "cA" => "2",
                "aB" => "3",
                "bB" => "4",
                "cB" => "5",
                "aC" => "6",
                "bC" => "7",
                "cC" => "8",
                "aD" => "9",
                "bD" => "10",
                "cD" => "11",
                "Aa" => "12",
                "Ab" => "13",
                "Ac" => "14",
                "Ad" => "15",
                "Ba" => "16",
                "Bb" => "17",
                "Bc" => "18",
                "Bd" => "19",
                "Ca" => "20",
                "Cb" => "21",
                "Cc" => "22",
                "Cd" => "23",
                _ => "0"
            };
        }

        public string GetGuid()
        {
            throw new NotImplementedException();
        }
    }
}
