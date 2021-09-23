using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PresentacionWeb
{
    public partial class frmProductosConsulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            grdProductos.DataSource = Producto.Buscar(new Producto());
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmProductosAltaModificacion.aspx");
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            //Pendiente
        }
    }
}