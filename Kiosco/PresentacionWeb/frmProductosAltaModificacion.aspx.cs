using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PresentacionWeb
{
    public partial class frmProductosAltaModificacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAlta_Click(object sender, EventArgs e)
        {
            Producto oProducto = new Producto();

            oProducto.Descripcion = txtProductoNombre.Text;
            oProducto.Precio = Convert.ToInt32(txtProductoValor.Text);
            //oProducto.ProveedorId = Convert.ToInt32(txtProveedorID.Text);
            oProducto.CodigoBarras = Convert.ToInt32(txtCodigoBarras.Text);
            
            oProducto.Guardar();
        }
            
        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("./frmInicio.aspx");       
        }

        protected void btnSeleccionProveedor_Click(object sender, EventArgs e)
        {

        }
    }
}