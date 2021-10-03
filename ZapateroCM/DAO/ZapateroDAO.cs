
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ZapateroCM.Models;
using Newtonsoft.Json;
using System.Data.SqlClient;

namespace ZapateroCM.DAO
{
    public class ZapateroDAO
    {

        public String listarEmpleados()
        {

            var empleado = new List<Empleado>();
            string cadena = "SELECT * FROM Empleado";

            try
            {
                using (var contenedor = new ZapateroModelo())
                {
                    empleado = contenedor.Database.SqlQuery<Empleado>(cadena).ToList();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Error al listar empleados: " + e.Message);
            }

            return JsonConvert.SerializeObject(empleado);
        }

        public String listarProveedores()
        {

            var proveedor = new List<Proveedor>();
            string cadena = "SELECT * FROM Proveedor";

            try
            {
                using (var contenedor = new ZapateroModelo())
                {
                    proveedor = contenedor.Database.SqlQuery<Proveedor>(cadena).ToList();
                    //SqlCommand commando = contenedor.Database.ExecuteSqlCommand("CreateStudents @p0, @p1", parameters: new[] { "Bill", "Gates" });

                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Error al listar proveedores: " + e.Message);
            }

            return JsonConvert.SerializeObject(proveedor);
        }

        public String listarZapatos()
        {

            var tipoZapato = new List<TipoZapato>();
            string cadena = "SELECT IdTipoZapato, TipoZapato AS TipoZapato1, Estado, FechaModificacion  FROM TipoZapato WHERE Estado = 1";

            try
            {
                using (var contenedor = new ZapateroModelo())
                {
                    tipoZapato = contenedor.Database.SqlQuery<TipoZapato>(cadena).ToList();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Error al listar zapatos: " + e.Message);
            }

            return JsonConvert.SerializeObject(tipoZapato);
        }

        public int insertarCabeceraOrden(CabeceraOrden cabeceraOrden)
        {

            int idOrden = 0, r = 0;

            string cadena = "" + cabeceraOrden.IdEmpleado +
                            "," + cabeceraOrden.IdProveedor +
                            ",'" + cabeceraOrden.FechaIngreso.ToString("dd-MM-yyyy") +
                            "'," + cabeceraOrden.TotalPares + "";

            try
            {
                using (var contenedor = new ZapateroModelo())
                {
                    r = contenedor.Database.ExecuteSqlCommand("INSERT INTO CabeceraOrden (IdEmpleado, IdProveedor, FechaIngreso, TotalPares) VALUES(" + cadena + ")");
                    if (r == 1)
                    {
                        string cnnString = System.Configuration.ConfigurationManager.ConnectionStrings["ZapateroModelo"].ConnectionString;

                        SqlConnection cnn = new SqlConnection(cnnString);
                        SqlCommand cmd = new SqlCommand();
                        cnn.Open();

                        SqlCommand command = new SqlCommand("SELECT TOP 1 IdOrden FROM CabeceraOrden ORDER BY IdOrden DESC", cnn);
                        //command.Parameters.AddWithValue("@zip", "india");
                        // int result = command.ExecuteNonQuery();
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                idOrden = reader.GetInt32(0);
                            }
                        }

                        cnn.Close();

                    }
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Error al insertar Cabecera Orden: " + e.Message);
            }

            return idOrden;
        }

        public bool insertarDetalleOrden(DetalleOrden detalleOrden)
        {

            bool b = false;
            int r = 0;
            string cadena = "" + detalleOrden.IdOrden +
                           "," + detalleOrden.IdTipoZapato +
                           "," + detalleOrden.Cantidad + "";

            try
            {
                using (var contenedor = new ZapateroModelo())
                {
                    r = contenedor.Database.ExecuteSqlCommand("INSERT INTO DetalleOrden (IdOrden, IdTipoZapato, Cantidad) VALUES(" + cadena + ")");
                    if (r == 1)
                        b = true;
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Error al insertar Detalle de Orden: " + e.Message);
            }

            return b;
        }
    }
}