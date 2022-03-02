using System;
using System.IO;
using System.Linq;
using DotsAndBoxes.Machine.MCTS;
using DotsAndBoxes.Tools;

namespace DotsAndBoxes.Machine
{
    /// <summary>
    /// Static Controller to export data of the game
    /// </summary>
    public static class DataController
    {
        #region Static Variables

        /// <summary>
        /// The export
        /// </summary>
        private static Exporter _export;
        /// <summary>
        /// The identifier
        /// </summary>
        private static long? _id = DateTime.Now.Ticks;

        public static bool Disable { get; set; } = false;

        #endregion

        #region Init

        /// <summary>
        /// Initializes this instance.
        /// </summary>
        public static void Initialize()
        {
            if (Disable) return;

            _export ??= new Exporter();

            var id = "";
            if (Settings.Settings.OutputId)
                id = _id.ToString();

            var path = $"{Path.Combine(Settings.Settings.OutputFolder, Settings.Settings.OutputFile)}{id}";
            var boardFile = $"{path}-input.txt";
            var valuesFile = $"{path}-values.txt";
            var policyFile = $"{path}-policy.txt";
            var dumpFile = $"{path}-dump.txt";
            var dumpNet = $"{path}-dump-net.txt";
            var endFile = $"{path}-end.txt";
            var finalFile = $"{path}-final.txt";

            _export.Add(FileType.Board, boardFile);
            _export.Add(FileType.PolicyNetwork, policyFile);
            _export.Add(FileType.ValueNetwork, valuesFile);
            _export.Add(FileType.Dump, dumpFile);
            _export.Add(FileType.DumpNet, dumpNet);
            _export.Add(FileType.End, endFile);
            _export.Add(FileType.Final, finalFile);
        }

        #endregion

        #region Static Methods

        /// <summary>
        /// Starts the export.
        /// </summary>
        public static void StartExport()
        {
            if (Disable) return;

            if (_export == null)
                Initialize();

            // initialize metrics for the game
            IBoard.Metrics = Settings.Settings.GenerateMetrics();
        }

        /// <summary>
        /// Stores the specified data.
        /// </summary>
        /// <param name="data">The data.</param>
        /// <param name="fileType">Type of the file.</param>
        /// <exception cref="Exception">Please Initialize First!</exception>
        public static void Store(string data, FileType fileType)
        {
            if (Disable) return;

            if (_export == null)
                throw new Exception("Please Initialize First!");

            _export.Store(data, fileType);
        }

        /// <summary>
        /// Stores the export.
        /// </summary>
        /// <exception cref="Exception">Please Initialize First!</exception>
        public static void StoreExport()
        {
            if (Disable) return;

            if (_export == null)
                throw new Exception("Please Initialize First!");

            if (IBoard.Metrics == null) return;
            _export.Store(IBoard.Metrics.GetBoardWithSymmetries(Settings.Settings.Boxes), FileType.Board);
            _export.Store(IBoard.Metrics.GetPolicyNetworkWithSymmetries(Settings.Settings.Boxes), FileType.PolicyNetwork);
            _export.Store(IBoard.Metrics.GetValueNetworkWithSymmetries(), FileType.ValueNetwork);
            _export.Store(IBoard.Metrics.GetDump(), FileType.Dump);
        }

        /// <summary>
        /// Finishes the export.
        /// </summary>
        /// <exception cref="Exception">Please Initialize First!</exception>
        public static void FinishExport(int boxes)
        {
            if (Disable) return;

            if (_export == null)
                throw new Exception("Please Initialize First!");

            _export.Store(IBoard.Metrics.GetEndBoardsNetworkWithSymmetries(boxes), FileType.Board);
            _export.Store(IBoard.Metrics.GetEndPolicyNetworkWithSymmetries(boxes), FileType.PolicyNetwork);
            _export.Store(IBoard.Metrics.GetEndValueNetworkWithSymmetries(), FileType.ValueNetwork);
            _export.Store(string.Join("", Enumerable.Repeat("-", 80)), FileType.Dump);
            _export.Store("\r\n", FileType.Dump);
        }

        /// <summary>
        /// Release the files.
        /// </summary>
        public static void ReleaseFiles()
        {
            if (Disable) return;

            _export.Dispose();
            _export = null;
        }

        #endregion
    }
}
