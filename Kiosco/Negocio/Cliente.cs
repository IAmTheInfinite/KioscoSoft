using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class Cliente
    {
        #region ATRIBUTOS
        private int id;
        private string nombre;
        private string apellido;
        private float deuda;
        private DateTime fechaModificacion;

        #endregion

        #region PROPIEDADES
        public int Dni { 
            get{ return dni; }
            set{ dni = value; }
        }
        public string Nombre { 
            get{ return nombre; }
            set{ nombre = value; }
        }
        public string Apellido { 
            get{ return apellido; }
            set{ apellido = value; }
        }
        public string Direccion { 
            get{ return nombre; }
            set{ nombre = value; }
        }
        public string FechaNacimiento
        {
            get { return fechaNacimiento; }
            set { fechaNacimiento = value; }
        }
        #endregion

        #region METODOS
        #endregion

        /*Cuando entra ve los productos comprados*/
    }
}
