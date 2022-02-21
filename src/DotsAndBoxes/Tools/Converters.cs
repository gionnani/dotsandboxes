using System;
using System.Collections.Generic;
using System.Text;

namespace DotsAndBoxes.Tools
{
    /// <summary>
    /// Static class used to conversions.
    /// </summary>
    public static class Converters
    {
        /// <summary>
        /// Rotates the matrix.
        /// Adapted from Niki Berardi solution in https://stackoverflow.com/questions/42519/how-do-you-rotate-a-two-dimensional-array
        /// </summary>
        /// <param name="matrix">The matrix to be rotated.</param>
        /// <param name="n">The n side.</param>
        /// <param name="m">The m side.</param>
        /// <returns></returns>
        public static T[,] RotateMatrix<T>(T[,] matrix, int n, int m)
            where T:struct
        {
            var ret = new T[m, n];

            for (var i = 0; i < m; ++i)
            {
                for (var j = 0; j < n; ++j)
                {
                    ret[i, j] = matrix[n - j - 1, i];
                }
            }

            return ret;
        }

        /// <summary>
        /// Flips the matrix.
        /// Adapted from Niki Berardi solution in https://stackoverflow.com/questions/42519/how-do-you-rotate-a-two-dimensional-array
        /// </summary>
        /// <param name="matrix">The matrix to be flipped.</param>
        /// <param name="n">The n side.</param>
        /// <param name="m">The m side.</param>
        /// <returns></returns>
        public static T[,] FlipMatrix<T>(T[,] matrix, int n, int m)
            where T:struct
        {
            var ret = new T[n, m];

            for (var i = 0; i < n; ++i)
            {
                for (var j = 0; j < m; ++j)
                {
                    ret[i, j] = matrix[n - i - 1, j];
                }
            }

            return ret;
        }

        /// <summary>
        /// Rotates the array;
        /// </summary>
        /// <param name="array">The array to be rotated.</param>
        /// <param name="n">The n side.</param>
        /// <param name="m">The m side.</param>
        /// <returns></returns>
        public static float[] RotateArray<T>(T[] array, int n, int m)
            where T:struct, IConvertible
        {
            var linCol = CreateFromStateRepresentation(array, n);
            var col = RotateMatrix(linCol.Item1, m, n);
            var lin = RotateMatrix(linCol.Item2, n, m);

            return CombineAll(lin, col, n);
        }

        /// <summary>
        /// Flip the array;
        /// </summary>
        /// <param name="array">The array to be flipped.</param>
        /// <param name="n">The n side.</param>
        /// <param name="m">The m side.</param>
        /// <returns></returns>
        public static float[] FlipArray<T>(T[] array, int n, int m) 
            where T : struct, IConvertible
        {
            var linCol = CreateFromStateRepresentation(array, n);
            var lin = FlipMatrix(linCol.Item1, m, n);
            var col = FlipMatrix(linCol.Item2, n, m);


            return CombineAll(lin, col, n);
        }

        /// <summary>
        /// Inversions the of board.
        /// </summary>
        /// <param name="data">The data board representation.</param>
        /// <returns></returns>
        public static IEnumerable<string> InversionOf(IEnumerable<string> data)
        {
            IList<string> list = new List<string>();
            foreach (var d in data)
            {
                list.Add(InversionOf(d));
            }
            return list;
        }

        /// <summary>
        /// Inversions the of board.
        /// </summary>
        /// <param name="data">The data board representation.</param>
        /// <returns></returns>
        public static string InversionOf(string data)
        {
            string[] s = data.Split(' ');
            string[] s2 = new string[s.Length];
            for (int i = 0; i < s.Length; i++)
            {
                if (int.TryParse(s[i], out var v))
                    s2[i] = (v * -1).ToString();
                else
                    s2[i] = s[i];
            }

            return string.Join(" ", s2);
        }
        
        /// <summary>
        /// Combines all string.
        /// </summary>
        /// <param name="lines">The lines.</param>
        /// <param name="columns">The columns.</param>
        /// <param name="boxes">The boxes.</param>
        /// <param name="separator">The separator.</param>
        /// <param name="agentValue">The agent value.</param>
        /// <returns></returns>
        public static string CombineAllString(this int[,] lines, int[,] columns, int boxes, string separator = " ", int agentValue = 1)
        {
            var result = lines.CombineAll(columns, boxes, agentValue);
            return string.Join(separator, result);
        }

        /// <summary>
        /// Combines all lines to state representation.
        /// </summary>
        /// <param name="lines">The lines.</param>
        /// <param name="columns">The columns.</param>
        /// <param name="boxes">The boxes.</param>
        /// <param name="agentValue">The agent value.</param>
        /// <returns></returns>
        public static float[] CombineAll<T>(this T[,] lines, T[,] columns, int boxes, int agentValue = 1)
        where T: struct, IConvertible
        {
            var result = new float[(boxes + 1) * (2 * boxes + 1)];

            int k = 0;
            for (int i = 0; i < boxes + 1; i++)
            {
                // lines
                for (int j = 0; j < boxes; j++)
                {
                    result[k] = Convert.ToSingle(lines[i, j]) * agentValue;
                    k++;
                }

                // adding imaginary item in line
                result[k] = 0;
                k++;

                // last line return when it finished the column
                if (i == boxes) continue;
                
                // columns
                for (int j = 0; j < boxes + 1; j++)
                {
                    result[k] = Convert.ToSingle(columns[i, j]) * agentValue;
                    k++;
                }
            }

            return result;
        }

        /// <summary>
        /// Creates from state.
        /// </summary>
        /// <param name="state">The state.</param>
        /// <param name="boxes">The boxes.</param>
        /// <returns></returns>
        public static (int[,], int[,]) CreateFromStateRepresentation(this string[] state, int boxes)
        {
            var lines = new int[boxes + 1, boxes];
            var columns = new int[boxes, boxes + 1]; 

            int k = 0;
            for (int i = 0; i < boxes + 1; i++)
            {
                // lines
                for (int j = 0; j < boxes; j++)
                {
                    lines[i, j] = Convert.ToInt32(state[k]);
                    k++;
                }

                // adding imaginary item in line
                k++;

                // last line return when it finished the column
                if (i == boxes) continue;

                // columns
                for (int j = 0; j < boxes + 1; j++)
                {
                    columns[i, j] = Convert.ToInt32(state[k]);
                    k++;
                }
            }

            return (lines, columns);
        }

        /// <summary>
        /// Creates from state representation.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="state">The state.</param>
        /// <param name="boxes">The boxes.</param>
        /// <returns></returns>
        public static (T[,], T[,]) CreateFromStateRepresentation<T>(this T[] state, int boxes)
            where T : struct
        {
            var lines = new T[boxes + 1, boxes];
            var columns = new T[boxes, boxes + 1]; 

            int k = 0;
            for (int i = 0; i < boxes + 1; i++)
            {
                // lines
                for (int j = 0; j < boxes; j++)
                {
                    lines[i, j] = state[k];
                    k++;
                }

                // adding imaginary item in line
                k++;

                // last line return when it finished the column
                if (i == boxes) continue;

                // columns
                for (int j = 0; j < boxes + 1; j++)
                {
                    columns[i, j] = state[k];
                    k++;
                }
            }

            return (lines, columns);
        }
        /// <summary>
        /// Converts to symmetries representation.
        /// </summary>
        /// <param name="values">The values.</param>
        /// <param name="boxes">The boxes.</param>
        /// <returns></returns>
        public static string ToSymmetriesRepresentation(this float[] values, int boxes)
        {
            var n = boxes;
            var m = boxes + 1;

            var sb = new StringBuilder();
            sb.Append($"{string.Join(" ", values).Replace(",", ".")} ");
            var m2 = RotateArray(values, n, m);
            sb.Append($"{string.Join(" ", m2).Replace(",", ".")} ");
            m2 = RotateArray(m2, n, m);
            sb.Append($"{string.Join(" ", m2).Replace(",", ".")} ");
            m2 = RotateArray(m2, n, m);
            sb.Append($"{string.Join(" ", m2).Replace(",", ".")} ");
            m2 = FlipArray(values, n, m);
            sb.Append($"{string.Join(" ", m2).Replace(",", ".")} ");
            m2 = RotateArray(m2, n, m);
            sb.Append($"{string.Join(" ", m2).Replace(",", ".")} ");
            m2 = RotateArray(m2, n, m);
            sb.Append($"{string.Join(" ", m2).Replace(",", ".")} ");
            m2 = RotateArray(m2, n, m);
            sb.Append($"{string.Join(" ", m2).Replace(",", ".")} ");

            return sb.ToString();
        }

        /// <summary>
        /// Converts to random symmetry.
        /// </summary>
        /// <param name="values">The values.</param>
        /// <param name="boxes">The boxes.</param>
        /// <returns></returns>
        public static float[] ToRandomSymmetry(this float[] values, int boxes)
        {
            var n = boxes;
            var m = boxes + 1;

            var r = Settings.Settings.Random.Next(1, 9);

            if (r == 1) return values;
            var m2 = RotateArray(values, n, m);
            if (r == 2) return m2;
            m2 = RotateArray(m2, n, m);
            if (r == 3) return m2;
            m2 = RotateArray(m2, n, m);
            if (r == 4) return m2;
            m2 = FlipArray(values, n, m);
            if (r == 5) return m2;
            m2 = RotateArray(m2, n, m);
            if (r == 6) return m2;
            m2 = RotateArray(m2, n, m);
            if (r == 7) return m2;
            m2 = RotateArray(m2, n, m);
            return m2;
        }

        /// <summary>
        /// Converts to symmetries representation.
        /// </summary>
        /// <param name="values">The values.</param>
        /// <param name="boxes">The boxes.</param>
        /// <returns></returns>
        public static string ToSymmetriesRepresentation(this Stack<float[]> values, int boxes)
        {
            var sb = new StringBuilder();

            foreach (var value in values)
            {
                sb.Append(value.ToSymmetriesRepresentation(boxes));
            }

            return sb.ToString();
        }

        #region Js Opponent

        /// <summary>
        /// Converts to js state - input.
        /// </summary>
        /// <param name="s">The s.</param>
        /// <param name="pointsA">The points a.</param>
        /// <param name="pointsB">The points b.</param>
        /// <param name="isFinished">if set to <c>true</c> [is finished].</param>
        /// <returns></returns>
        public static float[] ToJsState(float[] s, int pointsA, int pointsB, bool isFinished)
        {
            float finished = isFinished ? 1 : 0;

            //float score = pointsA - pointsB;

            //float max_score = 9;
            //float min_score = -1 * max_score;

            //float max_normalized = 1f;
            //float min_normalized = 0f;
            //float normalized_score = ((score - max_score) / (min_score - max_score)) * (min_normalized - max_normalized) + max_normalized;

            return
                new float[]{s[0],s[1],s[2],pointsA,s[8],s[9],s[10],pointsB,s[16],s[17],s[18],finished,s[24],s[25],s[26],0,
                    s[4],s[5],s[6],s[7],s[12],s[13],s[14],s[15],s[20],s[21],s[22],s[23]};
        }

        /// <summary>
        /// Converts to dots and boxes state - output.
        /// </summary>
        /// <param name="s">The s.</param>
        /// <returns></returns>
        public static float[] ToDotsAndBoxesState(float[] s)
        {
            return new[]
            {
                s[0], s[1], s[2], 0, s[12], s[13], s[14], s[15], s[3], s[4], s[5], 0, s[16], s[17],
                s[18], s[19], s[6], s[7], s[8], 0, s[20], s[21], s[22], s[23], s[9], s[10], s[11], 0
            };
        }

        #endregion
    }
}
