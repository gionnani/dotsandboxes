using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using DotsAndBoxes.Game;
using DotsAndBoxes.Machine.MCTS;
using DotsAndBoxesWeb.Models;
using NeuralNetwork;

namespace DotsAndBoxesWeb.Pages
{
    public class IndexModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;
        private readonly ICnnDots _cnn;
        private readonly IDictionary<string, IBoard> _boards;

        [BindProperty]
        public DataResponse DataResponse { get; set; }

        public IndexModel(ILogger<IndexModel> logger, ICnnDots cnn, IDictionary<string, IBoard> boards)
        {
            _logger = logger;
            _cnn = cnn;
            _boards = boards;
        }

        public void OnGet()
        {
            
        }

        public IActionResult OnPostStep()
        {
            // init settings
            DotsAndBoxes.Settings.Settings.InitializeDefaultSettings(DataResponse.Boxes);

            DataResponse.Id = Guid.NewGuid().ToString();
            var board = new Board(DataResponse.Boxes);
            _boards.Add(DataResponse.Id, board);
            IntroduceGame(board);
            return RedirectToPage("./Game", DataResponse);
        }

        /// <summary>
        /// Params
        /// </summary>
        private void IntroduceGame(IBoard _board)
        {
            _board.AddAgent(DataResponse.Player1Name, (AgentType)DataResponse.Player1, _cnn);
            _board.AddAgent(DataResponse.Player2Name, (AgentType)DataResponse.Player2, _cnn);
            IAgent.Mcts = new MonteCarloTreeSearch(DotsAndBoxes.Settings.Settings.Mode);
        }
    }
}
