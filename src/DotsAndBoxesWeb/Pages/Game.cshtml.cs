using System.Collections.Generic;
using System.Linq;
using System.Text;
using DotsAndBoxes.Machine.MCTS;
using DotsAndBoxesWeb.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;
using NeuralNetwork;

namespace DotsAndBoxesWeb.Pages
{
    public class GameModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;
        private readonly ICnnDots _cnn;
        private readonly IDictionary<string, IBoard> _boards;

        [BindProperty]
        public DataResponse DataResponse { get; set; }

        public GameModel(ILogger<IndexModel> logger, ICnnDots cnn, IDictionary<string, IBoard> boards)
        {
            _logger = logger;
            _cnn = cnn;
            _boards = boards;
        }

        public void OnGet(DataResponse dataResponse)
        {
            DataResponse = dataResponse;
            var board = _boards[DataResponse.Id];
            DataResponse.Message = CreateMessage(board);
        }

        public void OnPostPlay()
        {
            var board = _boards[DataResponse.Id];
            var agent = board.GetActiveAgent();
            board = agent.IsManual ? agent.Play(DataResponse.Play, board) : agent.GetRandomPlay(board);

            // make point
            var agent2 = board.GetActiveAgent();

            if (agent.IsManual && !agent2.IsManual)
            {
                agent = board.GetActiveAgent();
                board = agent.GetRandomPlay(board);
            }

            agent2 = board.GetActiveAgent();

            while (!agent.IsManual && agent.Number == agent2.Number && !board.IsFinished)
            {
                board = agent2.GetRandomPlay(board);
                agent2 = board.GetActiveAgent();
            }

            _boards[DataResponse.Id] = board;
            DataResponse.Message = CreateMessage(board);
            DataResponse.Play = string.Empty;
        }

        private string CreateMessage(IBoard board)
        {
            var sb = new StringBuilder();
            sb.AppendLine(board.CreateBoard(true));
            sb.AppendLine("State -----------------");
            sb.AppendLine($"[{board} ]");
            sb.AppendLine("All Positions ---------");
            sb.AppendLine($"[{string.Join(" ", board.GetPositions().Select(x => x.Text))} ]");
            sb.AppendLine("Empty Positions -------");
            sb.AppendLine($"[{string.Join(" ", board.GetEmptyPositions().Select(x => x.Text))} ]");

            if (board.IsFinished)
            {
                sb.AppendLine();
                sb.AppendLine("End -------------------");
                sb.AppendLine($"[Agent 1: {board.PointsA1} Agent 2: {board.PointsA2}]");
            }

            var result = sb.ToString();
                
            result = result.Replace("\r\n   o", "<br/>     o")
                .Replace("\r\n   a", "<br/>     a")
                .Replace("\r\n", "<br/>")
                .Replace(" ", "&nbsp;");

            return result;
        }
    }
}
