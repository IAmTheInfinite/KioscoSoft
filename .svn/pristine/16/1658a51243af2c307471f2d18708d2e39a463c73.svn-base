using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace PresentacionWeb
{
    public partial class frmLogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            //Response.Redirect("./frmInicio.aspx");
            
            try
            {
                //VALIDACIONES-------------------------------------------------Start
                if (string.IsNullOrEmpty(txtUsuario.Text))                
                    throw new Exception("El campo Usuario no puede estar vacio");
                if (string.IsNullOrEmpty(txtPassword.Text))                
                    throw new Exception("El campo Password no puede estar vacio");
                //VALIDACIONES-------------------------------------------------End

                Usuario usu = new Usuario() { Name = txtUsuario.Text, Password = txtPassword.Text };                
                usu = Usuario.ValidarExitencia(usu);
                
                Session["MiUsuarioLogueado"] = usu;
                Session["Frase"] = "Hola ";

                //  PENDIENTE HACER VALIDACION DE ACTIVO 
                
                Response.Redirect("./frmInicio.aspx");       
                
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
 
        }
    }
}