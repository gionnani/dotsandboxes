using System;
using System.Linq;
using Api.Data;
using Api.Data.Models;
using DotsAndBoxes.Machine.MCTS;
using Microsoft.AspNetCore.Mvc;
using Interfaces;
using Microsoft.Extensions.Logging;
using NeuralNetwork;
using Newtonsoft.Json;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DotsJsController : ControllerBase
    {
        private readonly DotsContext _context;
        private readonly ILogger<DotsJsController> _logger;
        private readonly ICnnDots _cnn;

        public DotsJsController(DotsContext context, ILogger<DotsJsController> logger, ICnnDots cnn)
        {
            _logger = logger;
            _context = context;
            _cnn = cnn;
        }

        // GET api/<DotsJs>/5
        [HttpGet("{id}")]
        public string Get(short id)
        {
            var game = new Game()
            {
                GameType = id,
                StartedDate = DateTime.Now
            };
            game.FillIds();
            _context.Games.Add(game);
            _context.SaveChanges();
            return game.Id.ToString();
        }

        // GET api/<DotsAndBoxes>/agent1
        [HttpGet("agent1/{id}")]
        public string GetAgent1(Guid id)
        {
            return _context.Games.Find(id)?.IdAgent1.ToString();
        }

        // GET api/<DotsAndBoxes>/agent2
        [HttpGet("agent2/{id}")]
        public string GetAgent2(Guid id)
        {
            return _context.Games.Find(id)?.IdAgent2.ToString();
        }

        [HttpGet("{id}/getplayerturn")]
        public int GetPlayerTurn(Guid id)
        {
            var actual = _context.Turns.Where(x => x.GameId.Equals(id)).OrderBy(x=>x.Step).Select(x=>(int?) x.AgentNo).FirstOrDefault() ?? 2;
            return actual == 1 ? 2 : 1;
        }

        // POST api/<DotsAndBoxes>
        [HttpPost]
        public string Post([FromBody] Turn turn)
        {
            var game = _context.Games.Find(turn.GameId);

            if (game != null)
            {
                var dotsJs = new DotsJs(_cnn, game.IdAgent1);

                turn.GameId = game.Id;
                turn.Step = _context.Turns.Where(x => x.GameId.Equals(game.Id)).Max(x => (short?) x.Step) ?? 0;
                turn.Step++;

                var cnnTurn = dotsJs.GetDataPlay(turn);
                // adjust board
                turn.ResultedBoard = DotsJs.ToSimpleState(turn.ResultedBoard);
                _context.Turns.Add(turn);
                _context.Turns.Add(cnnTurn);

                _context.SaveChanges();

                return JsonConvert.SerializeObject(new
                {
                    position = cnnTurn.OpponentPosition,
                    board = cnnTurn.OpponentBoard,
                    fullBoard = cnnTurn.FullBoard
                });
            }

            return "Ok";
        }
    }
}
