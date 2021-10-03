namespace ZapateroCM.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CabeceraOrden")]
    public partial class CabeceraOrden
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CabeceraOrden()
        {
            DetalleOrden = new HashSet<DetalleOrden>();
        }

        [Key]
        public int IdOrden { get; set; }

        public int IdEmpleado { get; set; }

        public int IdProveedor { get; set; }

        public DateTime FechaIngreso { get; set; }

        public int TotalPares { get; set; }

        public virtual Empleado Empleado { get; set; }

        public virtual Proveedor Proveedor { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DetalleOrden> DetalleOrden { get; set; }
    }
}
