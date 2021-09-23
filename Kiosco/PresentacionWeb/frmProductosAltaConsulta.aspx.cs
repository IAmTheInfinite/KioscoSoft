using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PresentacionWeb
{
    public partial class frmProductosAltaConsulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAlta_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmProductosAltaModificacion.aspx");
        }

        protected void btnConsulta_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmProductosConsulta.aspx");
;        }
    }
}