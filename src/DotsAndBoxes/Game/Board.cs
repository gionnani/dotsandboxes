using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DotsAndBoxes.Machine.MCTS;
using DotsAndBoxes.Tools;
using NeuralNetwork;

namespace DotsAndBoxes.Game
{
    /// <summary>
    /// Class that implements a board for MCTS.
    /// </summary>
    /// <seealso cref="global::DotsAndBoxes.Machine.MCTS.IBoard" />
    public class Board : IBoard
    {
        #region Constants
        
        private const string V = "o";
        private const string Wm = "---";
        private const string Hm = "¦";
        private const string W = "   ";
        private const string H = " ";
        private const string E = "  ";
        private const string ColumnsMarks = "ABCDEFGHIJKLMNOPQRSTUVYXWZ";
        private const string LinesMarks = "abcdefghijklmnopqrstuvyxwz";
        
        #endregion

        #region Variables
        
        // static ones
        private static int _n;
        private static List<Position> _positionList;
        public static int Boxes => _n * _n;
        public static int BoxesToWin => (Boxes / 2) + 1;
        
        // private ones
        private int[,] _mLines;
        private int[,] _mColumns;
        private int[,] _mBoxesP1;
        private int[,] _mBoxesP2;
        private bool _turnP1;
        private Stack<int> _randomLines;
        private Stack<int> _randomColumns;
        public int _roundNumber;
        
        // export ones
        private List<short> _points;
        private short _lastPoints;
        
        // public ones
        public IAgent Agent1 { get; private set; }
        public IAgent Agent2 { get; private set; }
        public int[,] Lines => _mLines;
        public int[,] Columns => _mColumns;
        public int MaxTurns => 2 * _n * (_n + 1);
        public int MatrixLength => (_n + 1) * (2 * _n + 1);
        public int TurnNumber { get; set; }
        public int PointsA1 => Agent1.Points;
        public int PointsA2 => Agent2.Points;
        public bool IsFinished => MaxTurns == TurnNumber;
        public bool IsFinishedBefore => PointsA1 >= BoxesToWin || PointsA2 >= BoxesToWin;
        public bool IsLost => (PointsA1 >= BoxesToWin && GetActiveAgent().Number != 1) || (PointsA2 >= BoxesToWin && GetActiveAgent().Number != 2);
        public string TurnAgentName => _turnP1 ? Agent1.Name : Agent2.Name;
        public int LastPoints => _lastPoints;
        public string WinnerStatus =>
            IsFinished ? PointsA1 > PointsA2 ? Agent1.Name : PointsA2 > PointsA1 ? Agent2.Name : "Draw" : "Not Finished";
        public IAgent Winner =>
            IsFinished ? PointsA1 > PointsA2 ? Agent1 : PointsA2 > PointsA1 ? Agent2 : null : null;
        public string WinnerBeforeStatus => PointsA1 > PointsA2 ? Agent1.Name : PointsA2 > PointsA1 ? Agent2.Name : "Draw";
        public IAgent WinnerBefore => PointsA1 > PointsA2 ? Agent1 : PointsA2 > PointsA1 ? Agent2 : null;
        public string Result =>  $"Agent {WinnerStatus} wins. {Agent1.Name}: {Agent1.Points} / {Agent2.Name}: {Agent2.Points}.";
        public int RoundNumber => _roundNumber;
        
        #endregion

        #region Constructors

        /// <summary>
        /// Initializes a new instance of the <see cref="Board"/> class.
        /// Used for first board.
        /// </summary>
        /// <param name="n">The number of boxes.</param>
        public Board(int n)
        {
            _n = n;
            // vertical bars
            _mColumns = new int[n, n + 1];
            // horizontal bars
            _mLines = new int[n + 1, n];
            _mBoxesP1 = new int[n, n];
            _mBoxesP2 = new int[n, n];
            // P1 begins
            _turnP1 = true;
            _randomLines = new Stack<int>((n + 1) * n);
            _randomColumns = new Stack<int>((n + 1) * n);
            // Export config
            _points = new List<short>();
            _roundNumber = 0;

            // stack random places - all possible position are scrambled
            foreach (var i in Enumerable.Range(0, (n + 1) * n).OrderBy(i => Settings.Settings.Random.Next()))
                _randomLines.Push(i);
            foreach (var i in Enumerable.Range(0, (n + 1) * n).OrderBy(i => Settings.Settings.Random.Next()))
                _randomColumns.Push(i);
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="Board"/> class.
        /// </summary>
        /// <param name="state">The state.</param>
        /// <param name="cnn">The CNN.</param>
        /// <param name="boxes">The boxes.</param>
        /// <param name="description">The description.</param>
        public Board(string[] state, ICnnDots cnn, int boxes, string description): this(boxes)
        {
            (_mLines, _mColumns) = state.CreateFromStateRepresentation(_n);
            AddAgent("NN", AgentType.MCTS_CNN, cnn);
            AddAgent("Opponent", AgentType.OtherIA, cnn);
            Agent1.IncrementPoint(Convert.ToInt32(state[3]));
            Agent2.IncrementPoint(Convert.ToInt32(state[11]));
        }

        /// <summary>
        /// Gets the new board.
        /// </summary>
        /// <returns></returns>
        public IBoard GetNewBoard() => GetActiveAgent().GetRandomPlay(this);

        /// <summary>
        /// Prevents a default instance of the <see cref="Board"/> class from being created.
        /// Clone uses that.
        /// </summary>
        private Board()
        {

        }

        #endregion

        #region Methods       

        /// <summary>
        /// Adds the agent.
        /// </summary>
        /// <param name="name">The name.</param>
        /// <param name="type">The type.</param>
        /// <param name="cnn">The CNN.</param>
        /// <exception cref="Exception">Added more agents than possible!</exception>
        public void AddAgent(string name, AgentType type, ICnnDots cnn)
        {
            if (Agent1 == null)
                Agent1 = new Agent(name, type, 1, cnn);
            else if (Agent2 == null)
                Agent2 = new Agent(name, type, 2, cnn);
            else
                throw new Exception("You're try to add more agents than possible!");
        }

        /// <summary>
        /// Initializes the agents for tests.
        /// </summary>
        public void InitializeAgentsForTests()
        {
            IAgent.Mcts = new MonteCarloTreeSearch(Mode.CompetitiveMode);
            AddAgent("A1", AgentType.Human, null);
            AddAgent("A2", AgentType.Human, null);
        }

        /// <summary>
        /// Designs the board.
        /// </summary>
        /// <returns></returns>
        public string CreateBoard(bool force = false)
        {
            if (!string.IsNullOrEmpty(Settings.Settings.OutputFile) && !force)
                return "";

            StringBuilder sb = new StringBuilder();
            sb.AppendLine();
            sb.Append(CreateTopBoard());

            for (int i = 0; i < _n; i++)
            {
                sb.Append($"   {V}");
                // lines marks or none
                for (int j = 0; j < _n; j++)
                {
                    string m = _mLines[i, j] == 0 ? W : Wm;
                    sb.Append($"{m}{V}");
                }

                // columns marks
                sb.Append($" {ColumnsMarks[i]}\r\n");
                sb.Append($" {ColumnsMarks[i]} ");
                for (int j = 0; j < _n; j++)
                {
                    string mp = _mBoxesP1[i, j] == 1 ? Agent1.Mark : _mBoxesP2[i, j] == 1 ? Agent2.Mark : E;
                    string m = _mColumns[i, j] == 0 ? H : Hm;
                    sb.Append($"{m}{mp} ");
                }

                // last column
                string mf = _mColumns[i, _n] == 0 ? H : Hm;
                sb.Append($"{mf}\r\n");
            }

            // last line marks
            sb.Append($"   {V}");
            for (int j = 0; j < _n; j++)
            {
                string m = _mLines[_n, j] == 0 ? W : Wm;
                sb.Append($"{m}{V}");
            }

            sb.Append($" {ColumnsMarks[_n]}");

            // bottom
            sb.Append($"\r\n{CreateBottomBoard()}");

            return sb.ToString();
        }

        /// <summary>
        /// Creates the top board.
        /// </summary>
        /// <returns></returns>
        private string CreateTopBoard()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("    ");

            for (int i = 0; i < _n; i++)
            {
                sb.Append($" {LinesMarks[i]}  ");
            }

            sb.Append("\r\n");

            return sb.ToString();
        }

        /// <summary>
        /// Creates the bottom board.
        /// </summary>
        /// <returns></returns>
        private string CreateBottomBoard()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("  ");

            for (int i = 0; i <= _n; i++)
            {
                sb.Append($" {LinesMarks[i]}  ");
            }

            sb.Append("\r\n");

            return sb.ToString();
        }

        /// <summary>
        /// Plays the specified string play.
        /// </summary>
        /// <param name="stringPlay">The string play.</param>
        /// <returns></returns>
        public IBoard Play(string stringPlay)
        {
            if (stringPlay == "" || stringPlay.Length != 2)
                return this;

            char c1 = stringPlay[0];
            char c2 = stringPlay[1];
            int cInt, lInt;

            // only create, invalid
            if ((c1 >= 97 && c2 >= 97) || (c1 < 97 && c2 < 97))
                return this;

            // lower case
            if (c1 >= 97)
            {
                cInt = Convert.ToInt32(c1) - 97;
                lInt = Convert.ToInt32(c2) - 65;

                // cannot repeat
                if (_mLines[lInt, cInt] != 0)
                    return this;

                // mark line
                // if board pieces make difference between players, this value need to be 1 or -1
                _mLines[lInt, cInt] = 1;
                // increments turn
                TurnNumber++;

                MarkPoint(true, lInt, cInt);
            }
            else
            {
                lInt = Convert.ToInt32(c1) - 65;
                cInt = Convert.ToInt32(c2) - 97;

                // cannot repeat
                if (_mColumns[lInt, cInt] == 1)
                    return this;

                // mark column
                // if board pieces make difference between players, this value need to be 1 or -1
                _mColumns[lInt, cInt] = 1;
                // increments turn
                TurnNumber++;

                MarkPoint(false, lInt, cInt);
            }

            LastPlay = stringPlay;
            _roundNumber++;
            return this;
        }

        /// <summary>
        /// Executes the random play.
        /// </summary>
        /// <returns>
        /// The board.
        /// </returns>
        public IBoard RandomPlay()
        {
            return Play(NextRandomPlay());
        }

        /// <summary>
        /// Marks the point.
        /// </summary>
        /// <param name="lines">if set to <c>true</c> [lines].</param>
        /// <param name="line">The line.</param>
        /// <param name="column">The column.</param>
        private void MarkPoint(bool lines, int line, int column)
        {
            _lastPoints = 0;
            if (lines)
            {
                // first line
                if (line == 0)
                {
                    // verifies down
                    if (_mColumns[line, column] != 0 &&
                        _mColumns[line, column + 1] != 0 &&
                        _mLines[line + 1, column] != 0)
                    {
                        if (_turnP1)
                        {
                            _mBoxesP1[line, column] = 1;
                            _lastPoints = 1;
                            Agent1.IncrementPoint();
                            _turnP1 = !_turnP1;
                        }
                        else
                        {
                            _mBoxesP2[line, column] = 1;
                            _lastPoints = 1;
                            Agent2.IncrementPoint();
                            _turnP1 = !_turnP1;
                        }
                    }
                }
                // last line
                else if (line == _n)
                {
                    // verifies up
                    if (_mColumns[line - 1, column + 1] != 0 &&
                        _mColumns[line - 1, column] != 0 &&
                        _mLines[line - 1, column] != 0)
                    {
                        if (_turnP1)
                        {
                            _mBoxesP1[line - 1, column] = 1;
                            _lastPoints = 1;
                            Agent1.IncrementPoint();
                            _turnP1 = !_turnP1;
                        }
                        else
                        {
                            _mBoxesP2[line - 1, column] = 1;
                            _lastPoints = 1;
                            Agent2.IncrementPoint();
                            _turnP1 = !_turnP1;
                        }
                    }
                }
                else
                {
                    // up and down
                    if (_mColumns[line, column] != 0 &&
                        _mColumns[line, column + 1] != 0 &&
                        _mLines[line + 1, column] != 0 &&
                        _mColumns[line - 1, column + 1] != 0 &&
                        _mColumns[line - 1, column] != 0 &&
                        _mLines[line - 1, column] != 0)
                    {
                        if (_turnP1)
                        {
                            _mBoxesP1[line, column] = 1;
                            _mBoxesP1[line - 1, column] = 1;
                            _lastPoints = 2;
                            Agent1.IncrementPoint(2);
                            _turnP1 = !_turnP1;
                        }
                        else
                        {
                            _mBoxesP2[line, column] = 1;
                            _mBoxesP2[line - 1, column] = 1;
                            _lastPoints = 2;
                            Agent2.IncrementPoint(2);
                            _turnP1 = !_turnP1;
                        }
                    }
                    // up
                    else if (_mColumns[line, column] != 0 &&
                             _mColumns[line, column + 1] != 0 &&
                             _mLines[line + 1, column] != 0)
                    {
                        if (_turnP1)
                        {
                            _mBoxesP1[line, column] = 1;
                            _lastPoints = 1;
                            Agent1.IncrementPoint();
                            _turnP1 = !_turnP1;
                        }
                        else
                        {
                            _mBoxesP2[line, column] = 1;
                            _lastPoints = 1;
                            Agent2.IncrementPoint();
                            _turnP1 = !_turnP1;
                        }
                    }
                    // down
                    else if (_mColumns[line - 1, column + 1] != 0 &&
                             _mColumns[line - 1, column] != 0 &&
                             _mLines[line - 1, column] != 0)
                    {
                        if (_turnP1)
                        {
                            _mBoxesP1[line - 1, column] = 1;
                            _lastPoints = 1;
                            Agent1.IncrementPoint();
                            _turnP1 = !_turnP1;
                        }
                        else
                        {
                            _mBoxesP2[line - 1, column] = 1;
                            _lastPoints = 1;
                            Agent2.IncrementPoint();
                            _turnP1 = !_turnP1;
                        }
                    }
                }
            }
            else
            {
                // first column
                if (column == 0)
                {
                    // right
                    if (_mLines[line, column] != 0 &&
                        _mColumns[line, column + 1] != 0 &&
                        _mLines[line + 1, column] != 0)
                    {
                        if (_turnP1)
                        {
                            _mBoxesP1[line, column] = 1;
                            _lastPoints = 1;
                            Agent1.IncrementPoint();
                            _turnP1 = !_turnP1;
                        }
                        else
                        {
                            _mBoxesP2[line, column] = 1;
                            _lastPoints = 1;
                            Agent2.IncrementPoint();
                            _turnP1 = !_turnP1;
                        }
                    }
                }
                // last column
                else if (column == _n)
                {
                    // left
                    if (_mLines[line, column - 1] != 0 &&
                        _mColumns[line, column - 1] != 0 &&
                        _mLines[line + 1, column - 1] != 0)
                    {
                        if (_turnP1)
                        {
                            _mBoxesP1[line, column - 1] = 1;
                            _lastPoints = 1;
                            Agent1.IncrementPoint();
                            _turnP1 = !_turnP1;
                        }
                        else
                        {
                            _mBoxesP2[line, column - 1] = 1;
                            _lastPoints = 1;
                            Agent2.IncrementPoint();
                            _turnP1 = !_turnP1;
                        }
                    }
                }
                else
                {
                    // right left
                    if (_mLines[line, column] != 0 &&
                        _mColumns[line, column + 1] != 0 &&
                        _mLines[line + 1, column] != 0 &&
                        _mLines[line, column - 1] != 0 &&
                        _mColumns[line, column - 1] != 0 &&
                        _mLines[line + 1, column - 1] != 0)
                    {
                        if (_turnP1)
                        {
                            _mBoxesP1[line, column - 1] = 1;
                            _mBoxesP1[line, column] = 1;
                            _lastPoints = 2;
                            Agent1.IncrementPoint(2);
                            _turnP1 = !_turnP1;
                        }
                        else
                        {
                            _mBoxesP2[line, column - 1] = 1;
                            _mBoxesP2[line, column] = 1;
                            _lastPoints = 2;
                            Agent2.IncrementPoint(2);
                            _turnP1 = !_turnP1;
                        }
                    }
                    // right
                    else if (_mLines[line, column] != 0 &&
                             _mColumns[line, column + 1] != 0 &&
                             _mLines[line + 1, column] != 0)
                    {
                        if (_turnP1)
                        {
                            _mBoxesP1[line, column] = 1;
                            _lastPoints = 1;
                            Agent1.IncrementPoint();
                            _turnP1 = !_turnP1;
                        }
                        else
                        {
                            _mBoxesP2[line, column] = 1;
                            _lastPoints = 1;
                            Agent2.IncrementPoint();
                            _turnP1 = !_turnP1;
                        }
                    }
                    // left
                    else if (_mLines[line, column - 1] != 0 &&
                             _mColumns[line, column - 1] != 0 &&
                             _mLines[line + 1, column - 1] != 0)
                    {
                        if (_turnP1)
                        {
                            _mBoxesP1[line, column - 1] = 1;
                            _lastPoints = 1;
                            Agent1.IncrementPoint();
                            _turnP1 = !_turnP1;
                        }
                        else
                        {
                            _mBoxesP2[line, column - 1] = 1;
                            _lastPoints = 1;
                            Agent2.IncrementPoint();
                            _turnP1 = !_turnP1;
                        }
                    }
                }
            }

            // invert for all - if it had inverted already, it return to the same agent
            _turnP1 = !_turnP1;
        }
        #endregion

        #region Interface Implementation        
        /// <summary>
        /// Gets the turn agent.
        /// </summary>
        /// <returns></returns>
        public IAgent GetActiveAgent() => _turnP1 ? Agent1 : Agent2;
        /// <summary>
        /// Gets the status.
        /// </summary>
        /// <returns></returns>
        public BoardStatus GetStatus() => IsFinished
            ? PointsA1 > PointsA2 ? BoardStatus.Agent1 :
            PointsA2 > PointsA1 ? BoardStatus.Agent2 : BoardStatus.Draw
            : BoardStatus.InProgress;
        /// <summary>
        /// Gets the turn points.
        /// </summary>
        /// <returns></returns>
        public int GetEndPoints() => IsFinished ? PointsA1 > PointsA2 ? PointsA1 : PointsA2 > PointsA1 ? PointsA2 : PointsA1 : 0;
        /// <summary>
        /// Gets the last play.
        /// </summary>
        /// <value>
        /// The last play.
        /// </value>
        public string LastPlay { get; private set; }

        /// <summary>
        /// Gets the empty positions.
        /// </summary>
        /// <returns></returns>
        public List<Position> GetEmptyPositions() => GetEmptyPositionsInterleaved();

        /// <summary>
        /// Gets the empty positions lines and then columns.
        /// </summary>
        /// <returns></returns>
        private List<Position> GetEmptyPositionsNormal()
        {
            List<Position> lempty = new List<Position>();
            int p = 0;

            for (int i = 0; i < _n + 1; i++)
            {
                for (int j = 0; j < _n; j++)
                {
                    if (_mLines[i,j] == 0)
                        lempty.Add(new Position($"{LinesMarks[j]}{ColumnsMarks[i]}", p));
                    p++;
                }
                // lines have one position less
                p++;
            }

            for (int i = 0; i < _n; i++)
            {
                for (int j = 0; j < _n + 1; j++)
                {
                    if (_mColumns[i,j] == 0)
                        lempty.Add(new Position($"{ColumnsMarks[i]}{LinesMarks[j]}", p));
                    p++;
                }
            }

            return lempty;
        }

        /// <summary>
        /// Gets the empty positions interleaved.
        /// </summary>
        /// <returns></returns>
        private List<Position> GetEmptyPositionsInterleaved()
        {
            List<Position> lempty = new List<Position>();
            int p = 0;
            
            for (int i = 0; i < _n + 1; i++)
            {
                for (int j = 0; j < _n; j++)
                {
                    if (_mLines[i, j] == 0)
                        lempty.Add(new Position($"{LinesMarks[j]}{ColumnsMarks[i]}", p));
                    p++;
                }

                // lines to columns, one position less
                p++;

                // last line return when it finished the column
                if (i == _n) continue;

                for (int j = 0; j < _n + 1; j++)
                {
                    if (_mColumns[i, j] == 0)
                        lempty.Add(new Position($"{ColumnsMarks[i]}{LinesMarks[j]}", p));
                    p++;
                }
            }

            return lempty;
        }

        /// <summary>
        /// Gets the positions.
        /// </summary>
        /// <returns></returns>
        public List<Position> GetPositions() => GetPositionsInterleaved();

        /// <summary>
        /// Gets the positions interleaved.
        /// </summary>
        /// <returns></returns>
        private List<Position> GetPositionsInterleaved()
        {
            // keeps the position list;
            if (_positionList != null && _positionList.Count == MatrixLength)
                return _positionList;
            
            // create for the first time
            _positionList = new List<Position>();
            int p = 0;
            
            for (int i = 0; i < _n + 1; i++)
            {
                for (int j = 0; j < _n; j++)
                {
                    _positionList.Add(new Position($"{LinesMarks[j]}{ColumnsMarks[i]}", p));
                    p++;
                }

                // add difference of lines to columns
                _positionList.Add(new Position("00", p));
                p++;

                // last line return when it finished the column
                if (i == _n) continue;

                for (int j = 0; j < _n + 1; j++)
                {
                    _positionList.Add(new Position($"{ColumnsMarks[i]}{LinesMarks[j]}", p));
                    p++;
                }
            }

            return _positionList;
        }

        /// <summary>
        /// Executes the random play.
        /// </summary>
        /// <returns></returns>
        private string NextRandomPlay()
        {
            while (!IsFinished)
            {
                int position, row, col;
                if (Settings.Settings.Random.Next(1, 100) % 2 == 1)
                {
                    if (_randomLines.TryPop(out position))
                    {
                        row = position / _n;
                        col = position % _n;
                        if (_mLines[row, col] == 0)
                        {
                            return $"{LinesMarks[col]}{ColumnsMarks[row]}";
                        }
                    }
                }
                else
                {
                    if (_randomColumns.TryPop(out position))
                    {
                        row = position / (_n + 1);
                        col = position % (_n + 1);
                        if (_mColumns[row, col] == 0)
                        {
                            return $"{ColumnsMarks[row]}{LinesMarks[col]}";
                        }
                    }
                }
            }

            return "";
        }

        /// <summary>
        /// Clones this instance.
        /// </summary>
        /// <returns></returns>
        public IBoard Clone()
        {
            Board board = new Board
            {
                _mColumns = new int[_n, _n + 1],
                _mLines = new int[_n + 1, _n],
                _mBoxesP1 = new int[_n, _n],
                _mBoxesP2 = new int[_n, _n],
                TurnNumber = TurnNumber,
                _turnP1 = _turnP1,
                _lastPoints = _lastPoints,
                _points = _points,
                Agent1 = Agent1.Clone(),
                Agent2 = Agent2.Clone(),
                _randomLines = new Stack<int>((_n + 1) * _n),
                _randomColumns = new Stack<int>((_n + 1) * _n),
                _roundNumber = _roundNumber
            };

            // vertical bars
            // horizontal bars

            // random initial states
            // stack random places
            foreach (var i in Enumerable.Range(0, (_n + 1) * _n).OrderBy(i => Settings.Settings.Random.Next()))
                board._randomLines.Push(i);
            foreach (var i in Enumerable.Range(0, (_n + 1) * _n).OrderBy(i => Settings.Settings.Random.Next()))
                board._randomColumns.Push(i);

            for (int i = 0; i < _n + 1; i++)
            {
                for (int j = 0; j < _n; j++)
                {
                    board._mLines[i, j] = _mLines[i, j];
                }
            }

            for (int i = 0; i < _n; i++)
            {
                for (int j = 0; j < _n + 1; j++)
                {
                    board._mColumns[i, j] = _mColumns[i, j];
                }
            }

            for (int i = 0; i < _n; i++)
            {
                for (int j = 0; j < _n; j++)
                {
                    board._mBoxesP1[i, j] = _mBoxesP1[i, j];
                    board._mBoxesP2[i, j] = _mBoxesP2[i, j];
                }
            }

            return board;
        }

        /// <summary>
        /// State for Machine Learning procedures.
        /// </summary>
        /// <returns>Array of 0's and 1's. 1's represents selected places.</returns>
        public float[] ToFloat()
        {
            return _mLines.CombineAll(_mColumns, _n);
        }

        /// <summary>
        /// Converts to randomsymmetry.
        /// </summary>
        /// <returns></returns>
        public float[] ToRandomSymmetry()
        {
            return _mLines.CombineAll(_mColumns, _n).ToRandomSymmetry(_n);
        }

        /// <summary>
        /// Converts to string.
        /// </summary>
        /// <returns>
        /// A <see cref="System.String" /> that represents this instance.
        /// </returns>
        public sealed override string ToString()
        {
            return _mLines.CombineAllString(_mColumns, _n);
        }

        /// <summary>
        /// Indicates whether the current object is equal to another object of the same type.
        /// </summary>
        /// <param name="other">An object to compare with this object.</param>
        /// <returns>
        ///   <see langword="true" /> if the current object is equal to the <paramref name="other" /> parameter; otherwise, <see langword="false" />.
        /// </returns>
        public bool Equals(IBoard other)
        {
            return this.ToString().Equals(other?.ToString());
        }
    }
    #endregion
}
