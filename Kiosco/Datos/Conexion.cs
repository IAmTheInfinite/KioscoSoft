using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Data.Sql;
using System.Data.OleDb;

namespace Datos
{
    public class Conexion
    {
        private OleDbConnection baseDeDatos;
        private OleDbCommand comando = new OleDbCommand();





        public OleDbCommand Comando
        {
            get { return comando; }
        }


        //public SqlConnection BaseDeDatos
        public OleDbConnection BaseDeDatos
        {
            get
            {
                //EXISTE EL PUENTE??
                if (baseDeDatos == null) 
                {
                    string db = AppDomain.CurrentDomain.BaseDirectory + "Kiosco.accdb";
                    baseDeDatos = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + db);                    
                }

                //ESTA ABIERTO??
                if (baseDeDatos.State == ConnectionState.Closed) { baseDeDatos.Open(); }

                //RETORNO UN PUENTE ABIERTO
                return baseDeDatos;
            }
        }


        public void Desconectar()
        {
            if (baseDeDatos.State != ConnectionState.Closed)
            {
                comando = null;
                baseDeDatos.Close();
            }
        }
    }
}
