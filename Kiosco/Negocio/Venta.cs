using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class Venta
    {
        #region ATRIBUTOS
        private Cliente oCliente;
        private List<Producto> productos;
        private DateTime fecha;
        private float montoTotal;
        #endregion

        #region PROPIEDADES
        public DateTime Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }
        public float MontoTotal
        {
            get { return montoTotal; }
            set { montoTotal = value; }
        }
        public Cliente OCliente
        {
            get { return oCliente; }
            set { oCliente = value; }
        }

        public List<Producto> LstProductos
        {
            get { return lstProductos; }
            set { lstProductos = value; }
        }
        #endregion

        #region METODOS
        
        #endregion
    }
}
