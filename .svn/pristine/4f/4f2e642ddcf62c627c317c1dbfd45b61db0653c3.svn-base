using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using System.Data;

namespace Negocio
{
    public class Proveedor
    {
        #region ATRIBUTOS
        int id;
        string nombre;
        string direccion;
        #endregion

        #region PROPIEDADES
        public int Id
        {
            get { return id; }
            set { id = value; }
        }
        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        public string Direccion
        {
            get { return direccion; }
            set { direccion = value; }
        }
        #endregion

        #region METODOS
        public static List<Proveedor> Buscar() 
        {
            return new List<Proveedor>();
        }

        public void Guardar() 
        {
            try
            {
                Ejecucion exec = new Ejecucion();

                exec.AddParameter(Nombre);
                exec.AddParameter(Direccion);

                exec.SP("ProveedorCreate");//Stored Procedure
            }
            catch (Exception ex) { throw ex; }
        }

        public static int BuscarGenerico()
        {
            Ejecucion oEjecucion = new Ejecucion();

            DataTable dt = oEjecucion.ConsultaSql("Select Id From Proveedores where Nombre = 'Generico'");

            return Convert.ToInt32(dt.Rows[0]["Id"]);
        }
        #endregion
    }
}
