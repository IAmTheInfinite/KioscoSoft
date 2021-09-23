using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PresentacionWeb
{
    public partial class frmProveedoresAltaModificacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAlta_Click(object sender, EventArgs e)
        {
            try
            {
                Proveedor oProveedor = new Proveedor();

                oProveedor.Nombre = txtProveedorNombre.Text;
                oProveedor.Direccion = txtProveedorDireccion.Text;

                oProveedor.Guardar();

                Session["Frase"] = "Alta Exitosa!";
                Response.Redirect("./frmInicio.aspx");
            }
            catch (Exception ex) { lblMensaje.Text = ex.Message; }
        }
    }
}