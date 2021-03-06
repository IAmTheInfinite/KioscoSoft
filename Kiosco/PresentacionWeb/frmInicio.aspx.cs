using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PresentacionWeb
{
    public partial class frmInicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Usuario miUsuario = (Usuario)Session["MiUsuarioLogueado"];
                
                // Ctrl + E + C -> Comentar
                // Ctrl + E + U -> DesComentar
                lblMensaje.Text = miUsuario.Name + ", su Id es: " + miUsuario.Id;

                //Pasarlo a un tosat de bootstrap
                if (((string)Session["Frase"] != null) && ((string)Session["Frase"] != ""))
                {
                    lblMensaje.Text = lblMensaje.Text + " - " + Session["Frase"].ToString();
                    Session["Frase"] = "";
                }
            }
            

        }
        protected void btnProductosAMI_Click(object sender, EventArgs e)
        {
            Response.Redirect("./frmProductosAltaModificacion.aspx");
        }

    }
}