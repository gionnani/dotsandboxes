using System;
using System.IO;
using System.Linq;
using System.Text;
using DotsAndBoxes.Machine;
using DotsAndBoxes.Machine.MCTS;
using DotsAndBoxes.Tools;
using NeuralNetwork;
using NeuralNetwork.Models;
using NeuralNetwork.Models.Core;
using Newtonsoft.Json;

namespace DotsAndBoxes.Game
{
    public class DotsAndBoxes
    {
        private IBoard _board;

        /// <summary>
        /// Starts the game
        /// </summary>
        /// <param name="args">Args - settings.json</param>
        public void Start(string[] args)
        {
            var time = DateTime.Now;

            // debug file
            // args = new[] {"Settings\\settings3_N.json"};

            if (args.Any())
            {
                foreach (var s in args)
                {
                    if (s.ToLower().Equals("createsettings"))
                    {
                        Settings.Settings.InitializeDefaultExportSettings(3);
                        var settingsString = JsonConvert.SerializeObject(new Settings.Settings(), Formatting.Indented);
                        using StreamWriter sw = new StreamWriter("settings.json");
                        sw.Write(settingsString);
                        sw.Flush();
                    }
                    else
                    {
                        string json = "";
                        try
                        {
                            if (s.Trim().ToLower().StartsWith("-j:"))
                            {
                                // adjustments json
                                json = json.Trim()[3..];
                            }
                            else
                            {
                                using StreamReader sr = new StreamReader(s);
                                json = sr.ReadToEnd();
                            }
                        }
                        catch (FileNotFoundException)
                        {
                            Console.WriteLine($"File {s} doesn't exist.");
                            return;
                        }
                        catch (JsonReaderException)
                        {
                            Console.WriteLine($"Json {s}, {json} is not a valid Json Object!");
                            return;
                        }

                        Console.WriteLine($"Json: {json}");
                        Settings.Settings settings = JsonConvert.DeserializeObject<Settings.Settings>(json);
                        Settings.Settings.Initialize();

                        // export data of gameplay
                        if (!string.IsNullOrEmpty(Settings.Settings.OutputFile))
                        {
                            SimulateGame();
                            // release files
                            DataController.ReleaseFiles();
                        }
                        else
                        {
                            Console.WriteLine("Output not defined in settings file.");
                        }
                    }
                }
            }
            else
            {
                InitiateVisualGame();
                time = DateTime.Now.AddTicks(time.Ticks * -1);
                Console.WriteLine($"\r\nFinished. {_board.Result} {time.TimeOfDay}");
            }
        }

        /// <summary>
        /// Loads the CNN.
        /// </summary>
        /// <param name="cnn">The CNN.</param>
        /// <param name="cnnVersion">The CNN version.</param>
        /// <param name="seed">Seed for CNN.</param>
        private void LoadCnn(CnnDots<InputNoConv> cnn, int cnnVersion, int seed)
        {
            cnn.LoadTrainedModel((cnnVersion) == 0
                ? new Model<InputNoConv>("dotsandboxes3", "dotsandboxes3/variables/variables", seed, cnnVersion)
                : new Model<InputNoConv>($"dotsandboxes3_{cnnVersion}",
                    $"dotsandboxes3_{cnnVersion}/variables/variables", seed, cnnVersion));
        }

        /// <summary>
        /// Loads the CNN.
        /// </summary>
        /// <param name="cnn">The CNN.</param>
        /// <param name="cnnVersion">The CNN version.</param>
        /// <param name="seed">Seed for CNN.</param>
        private void LoadCnn(CnnDots<InputJs> cnn, int cnnVersion, int seed)
        {
            cnn.LoadTrainedModel((cnnVersion) == 0
                ? new Model<InputJs>("dotsandboxes3_js", "dotsandboxes3_js/variables/variables", seed, cnnVersion)
                : new Model<InputJs>($"dotsandboxes3_js{cnnVersion}",
                    $"dotsandboxes3_js{cnnVersion}/variables/variables", seed, cnnVersion));
        }

        /// <summary>
        /// Simulates the automatic game.
        /// </summary>
        private void SimulateGame()
        {
            // p1 victories
            var p1 = 0;
            // p2 victories
            var p2 = 0;
            // draws
            var d = 0;
            var time = DateTime.Now;
            ICnnDots cnn = null;
            ICnnDots cnn2 = null;

            Console.WriteLine($"Starting Simulation...");
            Console.WriteLine($"(M)emory: {GC.GetTotalMemory(false)}");

            try
            {
                Console.WriteLine($"Loading TensorFlow Pre-Trained Model...");

                switch (Settings.Settings.Agent1Type)
                {
                    // loading cnn's
                    case (int)AgentType.MCTS_CNN:
                        cnn = new CnnDots<InputNoConv>();
                        LoadCnn((CnnDots<InputNoConv>) cnn, Settings.Settings.Agent1Cnn, Settings.Settings.Random.Next(0, int.MaxValue));
                        break;
                    case (int)AgentType.OtherIA:
                        cnn = new CnnDots<InputJs>();
                        LoadCnn((CnnDots<InputJs>) cnn, Settings.Settings.Agent1Cnn,
                            Settings.Settings.Random.Next(0, int.MaxValue));
                        break;
                }

                switch (Settings.Settings.Agent2Type)
                {
                    case (int)AgentType.MCTS_CNN:
                        cnn2 = new CnnDots<InputNoConv>();
                        LoadCnn((CnnDots<InputNoConv>) cnn2, Settings.Settings.Agent2Cnn, Settings.Settings.Random.Next(0, int.MaxValue));
                        break;
                    case (int)AgentType.OtherIA:
                        cnn2 = new CnnDots<InputJs>();
                        LoadCnn((CnnDots<InputJs>)cnn2, Settings.Settings.Agent2Cnn,
                            Settings.Settings.Random.Next(0, int.MaxValue));
                        break;
                }

                Console.WriteLine($"Started - Playing games");
                for (int i = 0; i < Settings.Settings.NumberOfGames; i++)
                {
                    _board = new Board(Settings.Settings.Boxes);
                    _board.AddAgent("1 PC", (AgentType)Settings.Settings.Agent1Type, cnn);
                    _board.AddAgent("2 PC", (AgentType)Settings.Settings.Agent2Type, cnn2);

                    DataController.StartExport();
                    IAgent.Mcts = new MonteCarloTreeSearch(Settings.Settings.Mode);

                    // finished before finalize when someone win, don't finish all the board
                    //while (!_board.FinishedBefore)
                    while (!_board.IsFinished)
                    {
                        // needs to keep the winner board
                        _board = _board.GetActiveAgent().GetRandomPlay(_board);
                        DataController.StoreExport();
                    }

                    // winner count
                    if (_board.GetStatus() == BoardStatus.Agent1)
                    {
                        p1++;
                        IBoard.Metrics.AddWinner((int)BoardStatus.Agent1);
                    }
                    else if (_board.GetStatus() == BoardStatus.Agent2)
                    {
                        p2++;
                        IBoard.Metrics.AddWinner((int)BoardStatus.Agent2);
                    }
                    else
                    {
                        d++;
                        IBoard.Metrics.AddWinner((int)BoardStatus.Draw);
                    }


                    Console.Write($"{i + 1}(M):{GC.GetTotalMemory(false)}) > ");

                    DataController.FinishExport(Settings.Settings.Boxes);
                }

                Console.WriteLine("");

                Console.WriteLine($"Agent 1: {p1}");
                Console.WriteLine($"Agent 2: {p2}");
                time = DateTime.Now.AddTicks(time.Ticks * -1);
                Console.WriteLine($"\r\nFinished. {time.TimeOfDay}");

                if (!string.IsNullOrEmpty(Settings.Settings.OutputFile))
                {
                    var sb = new StringBuilder();
                    sb.AppendLine($"Games: {Settings.Settings.NumberOfGames}");
                    sb.AppendLine($"Boxes: {Settings.Settings.Boxes}");
                    sb.AppendLine($"MCTS time P1: {Settings.Settings.MillisecondsP1} ms");
                    sb.AppendLine($"MCTS time P2: {Settings.Settings.MillisecondsP2} ms");
                    sb.AppendLine($"Simulations P1 / node: {Settings.Settings.SimulationsP1}");
                    sb.AppendLine($"Simulations P2 / node: {Settings.Settings.SimulationsP2}");
                    sb.AppendLine($"Utc: {Settings.Settings.Uct}");
                    sb.AppendLine($"Bonus: {Settings.Settings.Bonus}");
                    sb.AppendLine($"---------------------------");
                    sb.AppendLine($"Agent 1 {Settings.Settings.Agent1Type}/{Settings.Settings.Agent1Cnn}: {p1} wins");
                    sb.AppendLine($"Agent 2 {Settings.Settings.Agent2Type}/{Settings.Settings.Agent2Cnn}: {p2} wins");
                    sb.AppendLine($"Draws   : {d}");
                    sb.AppendLine($"---------------------------");
                    sb.AppendLine($"\r\nFinished. {time.TimeOfDay}");

                    DataController.Store(sb.ToString(), FileType.End);
                    DataController.Store(
                        p1 >= p2 ? Settings.Settings.Agent1Cnn.ToString() : Settings.Settings.Agent2Cnn.ToString(),
                        FileType.Final);
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
            finally
            {
                cnn?.Dispose();
                cnn2?.Dispose();
            }
        }

        /// <summary>
        /// Normal game
        /// </summary>
        private void InitiateVisualGame()
        {
            Settings.Settings.Initialize();
            Console.WriteLine($"Starting Visual Game...");
            using var cnn = new CnnDots<InputNoConv>();
            using var cnn2 = new CnnDots<InputNoConv>();
            Console.WriteLine("Loading TensorFlow Pre-Trained Model...");
            cnn.LoadTrainedModel(new Model<InputNoConv>("dotsandboxes3_100", "dotsandboxes3_100/variables/variables", Settings.Settings.Random.Next(0, int.MaxValue), 0));
            cnn2.LoadTrainedModel(new Model<InputNoConv>("dotsandboxes3_100", "dotsandboxes3_100/variables/variables", Settings.Settings.Random.Next(0, int.MaxValue), 0));
            
            IntroduceGame(cnn, cnn2);

            DataController.StartExport();
            do
            {
                Console.Write($"\r\n ROW x column or COLUMN x row ({_board.TurnAgentName}): ");
                var agent = _board.GetActiveAgent();
                _board = agent.IsManual ? agent.Play(Console.ReadLine(), _board) : agent.GetRandomPlay(_board);
                DataController.StoreExport();

                Console.Clear();
                Console.WriteLine(_board.CreateBoard(true));
                Console.WriteLine("Prediction ------------");
                Console.WriteLine("-----Value Network ----");
                Console.WriteLine($"[{IBoard.Metrics?.GetValueNetworkWithSymmetries()}]");
                Console.WriteLine("-----Policy Network----");
                Console.WriteLine($"[{IBoard.Metrics?.GetPolicyNetworkWithSymmetries(Settings.Settings.Boxes)}]");
                Console.WriteLine("State -----------------");
                Console.WriteLine($"[{IBoard.Metrics?.GetBoardWithSymmetries(Settings.Settings.Boxes)}]");
                Console.WriteLine("State -----------------");
                Console.WriteLine($"[{_board} ]");
                Console.WriteLine("Board -----------------");
                Console.WriteLine($"[{_board} ]");
                Console.WriteLine("Empty Positions -------");
                Console.WriteLine($"[{string.Join(" ", _board.GetEmptyPositions().Select(x=>x.Text))} ]");
                Console.WriteLine("All Positions ---------");
                Console.WriteLine($"[{string.Join(" ", _board.GetPositions().Select(x=>x.Text))} ]");
            } while (!_board.IsFinished);
            DataController.FinishExport(Settings.Settings.Boxes);
        }

        /// <summary>
        /// Params
        /// </summary>
        private void IntroduceGame(ICnnDots cnn, ICnnDots cnn2)
        {
            string p1, p2, n;
            int boxes, p1Gt, p2Gt;

            Console.WriteLine("Starting Game\r\n");

            // getting parameters
            do
            {
                Console.Write("Number of boxes: ");
                n = Console.ReadLine();
                int.TryParse(n, out boxes);
            } while (boxes <= 0);

            Console.Write("\r\n");

            do
            {
                Console.Write("Agent 1 Human (1), Random (2), MCTS (3), MCTS CNN (4): ");
                n = Console.ReadLine();
                int.TryParse(n, out p1Gt);
            } while (p1Gt < 1 || p1Gt > 4);

            Console.Write("\r\n");

            do
            {
                Console.Write("Agent 1 name's: ");
                p1 = Console.ReadLine();
            } while (string.IsNullOrEmpty(p1));

            Console.Write("\r\n");

            do
            {
                Console.Write("Agent 2 Human (1), Random (2), MCTS (3), MCTS CNN (4): ");
                n = Console.ReadLine();
                int.TryParse(n, out p2Gt);
            } while (p2Gt < 1 || p2Gt > 4);

            Console.Write("\r\n");

            do
            {
                Console.Write("Agent 2 name's: ");
                p2 = Console.ReadLine();
            } while ((string.IsNullOrEmpty(p2)));

            // init settings
            Settings.Settings.InitializeDefaultSettings(boxes);

            if (p1Gt == 4)
                Settings.Settings.SimulationsP1 = 100;
            if (p2Gt == 4)
                Settings.Settings.SimulationsP2 = 100;

            // bonus only to MCTS
            Settings.Settings.Bonus = 3;

            _board = new Board(boxes);
            _board.AddAgent(p1, (AgentType)p1Gt, cnn);
            _board.AddAgent(p2, (AgentType)p2Gt, cnn2);
            IAgent.Mcts = new MonteCarloTreeSearch(Settings.Settings.Mode);

            Console.Clear();
            Console.Write(_board.CreateBoard(true));
        }
    }
}
