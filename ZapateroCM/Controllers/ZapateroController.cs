using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ZapateroCM.DAO;
using ZapateroCM.Models;
using System.Globalization;

namespace ZapateroCM.Controllers
{
    public class ZapateroController : Controller
    {
        private ZapateroDAO zapateroDAO;
        
        // GET: Zapatero
        public ActionResult Index()
        {
            zapateroDAO = new ZapateroDAO();
            return View();
        }

        public ActionResult listarEmpleados()
        {
            zapateroDAO = new ZapateroDAO();
            return Content(zapateroDAO.listarEmpleados());
        }

        public ActionResult listarProveedores()
        {
            zapateroDAO = new ZapateroDAO();
            return Content(zapateroDAO.listarProveedores());
        }

        public ActionResult listarZapatos()
        {
            zapateroDAO = new ZapateroDAO();
            return Content(zapateroDAO.listarZapatos());
        }

        public ActionResult guardarOrden(string idEmpleado, string idProveedor, string fecha, string productos, string cantidadTotal)
        {
            int idOrden = 0;
            string[] product = null, valores = null;
            DetalleOrden detalleOrden = null;
            ZapateroDAO zapateroDAO = new ZapateroDAO();
            CabeceraOrden cabeceraOrden = new CabeceraOrden();
            cabeceraOrden.IdEmpleado = Int32.Parse(idEmpleado);
            cabeceraOrden.IdProveedor = Int32.Parse(idProveedor);
            cabeceraOrden.FechaIngreso = DateTime.ParseExact(fecha, "yyyy-MM-dd", CultureInfo.InvariantCulture);
            cabeceraOrden.TotalPares = Int32.Parse(cantidadTotal);

            idOrden = zapateroDAO.insertarCabeceraOrden(cabeceraOrden);
            if (idOrden > 0)
            {
                valores = productos.Split('|');

                for (int i = 0; i < valores.Length; i++)
                {
                    product = valores[i].Split(',');
                    detalleOrden = new DetalleOrden();
                    detalleOrden.IdOrden = idOrden;
                    detalleOrden.IdTipoZapato = Int32.Parse(product[0]);
                    detalleOrden.Cantidad = Int32.Parse(product[1]);

                    if (!zapateroDAO.insertarDetalleOrden(detalleOrden))
                        return Json(new { success = false, mensaje = "Error al Insertar cabecera de la orden" }, JsonRequestBehavior.AllowGet);
                }   
            }
            else {
                return Json(new { success = false, mensaje = "Error al Insertar cabecera de la orden" }, JsonRequestBehavior.AllowGet);
            }

            return Json(new { success = true, mensaje = "ok" }, JsonRequestBehavior.AllowGet);
        }

        
        public ActionResult prueba() {
            //return Content("mensaje","text/plain");
            //return Json(new { success = true, mensaje = "Guardado" }, JsonRequestBehavior.AllowGet);
            return Json(new { success = false, mensaje = "Error al Guardar" }, JsonRequestBehavior.AllowGet);

        }
    }
}