using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace ZapateroCM.Models
{
    public partial class ZapateroModelo : DbContext
    {
        public ZapateroModelo()
            : base("name=ZapateroModelo")
        {
        }

        public virtual DbSet<CabeceraOrden> CabeceraOrden { get; set; }
        public virtual DbSet<DetalleOrden> DetalleOrden { get; set; }
        public virtual DbSet<Empleado> Empleado { get; set; }
        public virtual DbSet<Proveedor> Proveedor { get; set; }
        public virtual DbSet<TipoZapato> TipoZapato { get; set; }
        public virtual DbSet<Usuario> Usuario { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CabeceraOrden>()
                .HasMany(e => e.DetalleOrden)
                .WithRequired(e => e.CabeceraOrden)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Empleado>()
                .Property(e => e.Nombres)
                .IsUnicode(false);

            modelBuilder.Entity<Empleado>()
                .Property(e => e.Apellidos)
                .IsUnicode(false);

            modelBuilder.Entity<Empleado>()
                .HasMany(e => e.CabeceraOrden)
                .WithRequired(e => e.Empleado)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Proveedor>()
                .Property(e => e.Nombre)
                .IsUnicode(false);

            modelBuilder.Entity<Proveedor>()
                .HasMany(e => e.CabeceraOrden)
                .WithRequired(e => e.Proveedor)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TipoZapato>()
                .Property(e => e.TipoZapato1)
                .IsUnicode(false);

            modelBuilder.Entity<TipoZapato>()
                .HasMany(e => e.DetalleOrden)
                .WithRequired(e => e.TipoZapato)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Usuario>()
                .Property(e => e.nombre)
                .IsUnicode(false);

            modelBuilder.Entity<Usuario>()
                .Property(e => e.apellido)
                .IsUnicode(false);
        }
    }
}
