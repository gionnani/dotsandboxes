using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;

namespace DotsAndBoxes.Tools
{
    /// <summary>
    /// Class to files writer.
    /// </summary>
    /// <seealso cref="System.IDisposable" />
    public class Exporter : IDisposable
    {
        #region Variables

        /// <summary>
        /// The files
        /// </summary>
        private Dictionary<FileType, StreamWriter> _files;

        #endregion

        #region Constructors

        /// <summary>
        /// Initializes a new instance of the <see cref="Exporter"/> class.
        /// </summary>
        public Exporter()
        {
            _files = new Dictionary<FileType, StreamWriter>();
        }

        #endregion

        #region Methods

        /// <summary>
        /// Adds the specified file type.
        /// </summary>
        /// <param name="fileType">Type of the file.</param>
        /// <param name="filename">The filename.</param>
        public void Add(FileType fileType, string filename)
        {
            _files.Add(fileType, new StreamWriter(filename, true));
        }

        /// <summary>
        /// Stores the specified data.
        /// </summary>
        /// <param name="data">The data.</param>
        /// <param name="exportType">Type of the export.</param>
        [MethodImpl(MethodImplOptions.Synchronized)]
        public void Store(string data, FileType exportType)
        {
            try
            {
                var sw = _files[exportType];

                if (sw != null)
                {
                    sw.Write(data);
                    sw.Flush();
                }
            }
            catch (Exception)
            {
                // ignored
            }
        }

        #endregion

        #region Interface Implementation

        /// <summary>
        /// Performs application-defined tasks associated with freeing, releasing, or resetting unmanaged resources.
        /// </summary>
        public void Dispose()
        {
            if (_files.Any())
            {
                foreach (var sw in _files.Values)
                {
                    sw.Flush();
                    sw.Dispose();
                }
            }
        }

        #endregion
    }
}
