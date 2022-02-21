using Api.Data.Models;
using Microsoft.EntityFrameworkCore;

namespace Api.Data
{
    /// <summary>
    /// Context for Database
    /// </summary>
    /// <seealso cref="Microsoft.EntityFrameworkCore.DbContext" />
    public class DotsContext : DbContext
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="DotsContext"/> class.
        /// </summary>
        /// <param name="options">The options.</param>
        public DotsContext(DbContextOptions<DotsContext> options)
            : base(options)
        {
        }

        /// <summary>
        /// Gets or sets the games.
        /// </summary>
        /// <value>
        /// The games.
        /// </value>
        public DbSet<Game> Games { get; set; }
        /// <summary>
        /// Gets or sets the turns.
        /// </summary>
        /// <value>
        /// The turns.
        /// </value>
        public DbSet<Turn> Turns { get; set; }

        /// <summary>
        /// Override this method to further configure the model that was discovered by convention from the entity types
        /// exposed in <see cref="T:Microsoft.EntityFrameworkCore.DbSet`1" /> properties on your derived context. The resulting model may be cached
        /// and re-used for subsequent instances of your derived context.
        /// </summary>
        /// <param name="modelBuilder">The builder being used to construct the model for this context. Databases (and other extensions) typically
        /// define extension methods on this object that allow you to configure aspects of the model that are specific
        /// to a given database.</param>
        /// <remarks>
        /// If a model is explicitly set on the options for this context (via <see cref="M:Microsoft.EntityFrameworkCore.DbContextOptionsBuilder.UseModel(Microsoft.EntityFrameworkCore.Metadata.IModel)" />)
        /// then this method will not be run.
        /// </remarks>
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Turn>()
                .HasKey(a => new { a.GameId, a.PositionPlayed });
        }
    }
}
