using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using unx.Modells;

namespace unx.Database
{
    public class CarContext : DbContext
    {
        public CarContext(DbContextOptions<CarContext> options) : base(options)
        {
        }

        public DbSet<Manufacturer> manufacturers { get; set; }
        public DbSet<Model> models { get; set; }
        public DbSet<DetailedInfo> detailedInfos{ get; set; }
        public DbSet<detailed_info_view> carTables { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Manufacturer>().ToTable("Manufacturers");
            modelBuilder.Entity<Model>().ToTable("Models");
            modelBuilder.Entity<DetailedInfo>().ToTable("Detailed");
            modelBuilder.Entity<detailed_info_view>().HasNoKey().ToView("detailed_info_view");
        }
    }
}
