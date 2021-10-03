namespace ZapateroCM.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DetalleOrden")]
    public partial class DetalleOrden
    {
        public int IdOrden { get; set; }

        [Key]
        public int IdOrdenDetalle { get; set; }

        public int IdTipoZapato { get; set; }

        public int Cantidad { get; set; }

        public virtual CabeceraOrden CabeceraOrden { get; set; }

        public virtual TipoZapato TipoZapato { get; set; }
    }
}
