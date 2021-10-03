namespace ZapateroCM.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TipoZapato")]
    public partial class TipoZapato
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TipoZapato()
        {
            DetalleOrden = new HashSet<DetalleOrden>();
        }

        [Key]
        public int IdTipoZapato { get; set; }

        [Column("TipoZapato")]
        [Required]
        [StringLength(100)]
        public string TipoZapato1 { get; set; }

        public byte Estado { get; set; }

        public DateTime FechaModificacion { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DetalleOrden> DetalleOrden { get; set; }
    }
}
