using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;

namespace Negocio
{
    public class Usuario
    {
        #region ATRIBUTOS
        private int? id;
        private string name;
        private string password;
        private int? active;
        #endregion

        #region PROPIEDADES
        public int? Id { 
            get{ return id;}
            set { id = value;} }
        public string Name{ 
            get{ return name; }
            set { name = value;} }
        public string Password { 
            get{ return password;}
            set { password = value;} }
        public int? Active
        {
            get { return active; }
            set { active = value; }
        }
        #endregion

        #region METODOS
        public static Usuario ValidarExitencia(Usuario usuario) 
        {
            try
            {   
                Ejecucion e = new Ejecucion();

                DataTable dt = e.ConsultaSql("SELECT * FROM Usuarios WHERE Name = '" + usuario.Name + "' AND Password = '" + usuario.Password + "';");

                if (dt.Rows.Count == 0) { throw new Exception("Usuario no encontrado"); }
                if (dt.Rows.Count > 1) { throw new Exception("Existen multiples usuarios con esa descripcion"); }

                usuario.Id = Convert.ToInt32(dt.Rows[0]["Id"]);
                usuario.Name = Convert.ToString(dt.Rows[0]["Name"]);
                usuario.Password = Convert.ToString(dt.Rows[0]["Password"]);
                usuario.Active = Convert.ToInt32(dt.Rows[0]["Active"]);

                return usuario;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion
    }
}
