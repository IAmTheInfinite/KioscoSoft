using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Data.Sql;

namespace Datos
{
    public class ConexionMsSql
    {
        private SqlConnection baseDeDatos;
        private SqlCommand comandos = new SqlCommand();

        public SqlCommand Comandos
        {
            get { return comandos; }
        } 

        public SqlConnection BaseDeDatos
        {
            get
            {
                try
                {
                    //EXISTE EL PUENTE??
                    if (baseDeDatos == null)
                    {
                        baseDeDatos = new SqlConnection(@"Data Source = 192.168.100.10; Initial Catalog = Kiosco; Persist Security Info = True; User ID = kioscoSoft; password=Tecnica-123;");
                        //baseDeDatos = new SqlConnection(@"data source=127.0.0.1;initial catalog=Kiosco;integrated security=True;");
                        //data source=PC02-LABH;initial catalog=Kiosco;integrated security=True;
                    }

                    //ESTA ABIERTO??
                    if (baseDeDatos.State == ConnectionState.Closed) { baseDeDatos.Open(); }

                    //RETORNO UN PUENTE ABIERTO
                    return baseDeDatos;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        public void Desconectar()
        {
            if (baseDeDatos.State != ConnectionState.Closed)
            {
                comandos = null;
                baseDeDatos.Close();
            }
        }
    }
}
