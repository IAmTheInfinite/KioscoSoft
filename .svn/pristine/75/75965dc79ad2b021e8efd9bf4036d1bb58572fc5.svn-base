using Datos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class Producto
    {
        #region ATRIBUTOS
        private double? precio;
        private int? id;
        private string descripcion;
        private int? proveedorId;
        private int? codigoBarras;

        public static List<Producto> Buscar(Producto dto)
        {
            string consulta = "Select * From Productos Where ";
            
            if ((dto.codigoBarras != null) && (dto.codigoBarras != 0))
            {
                consulta += "CodigoBarras";
            }

            if ((dto.id != null) && (dto.id != 0))
            {

            }

            return new List<Producto>();
        }


        #endregion

        #region PROPIEDADES
        public double Precio { 
            get{ return precio;}
            set { precio = value;}
        }
        public int Id { 
            get{ return id;}
            set { id = value;}
        }
        public string Descripcion { 
            get{ return descripcion;}
            set { descripcion = value;} }

        public int ProveedorId
        {
            get { return proveedorId; }
            set { proveedorId = value; }
        }
        public int CodigoBarras
        {
            get { return codigoBarras; }
            set { codigoBarras = value; }
        }
        #endregion

        #region METODOS
        public void Guardar()
        {
            Ejecucion oEjecucion = new Ejecucion();

            oEjecucion.AddParameter(Descripcion);
            oEjecucion.AddParameter(Precio);

            if (ProveedorId == 0)
            {
                ProveedorId = Proveedor.BuscarGenerico();
            }
            oEjecucion.AddParameter(ProveedorId);
            oEjecucion.AddParameter(CodigoBarras);

            oEjecucion.SP("ProductoCreate");
            
            
            //oEjecucion.Exec("INSERT INTO Productos (Descripcion) VALUES(" + Descripcion + "');");
        }


        #endregion
    }
}
