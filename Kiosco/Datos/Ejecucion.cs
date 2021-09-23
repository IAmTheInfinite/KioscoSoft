using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace Datos
{
    public class Ejecucion : Conexion
    {
        //Metodos de Ejecucion
        public DataTable Exec(string consulta)
        {
            System.Data.OleDb.OleDbDataAdapter da = new System.Data.OleDb.OleDbDataAdapter(consulta, BaseDeDatos);
            DataTable dt = new DataTable();
            da.Fill(dt);

            Desconectar();

            return dt;
        }


        #region Agregar Parametros

        public void AddParameter(string Nombre, DateTime valor)
        {
            Comando.Parameters.Add("@" + Nombre, System.Data.OleDb.OleDbType.VarChar).Direction = ParameterDirection.Input;
            if (valor != null)
                Comando.Parameters[Comando.Parameters.Count - 1].Value = Convert.ToDateTime(valor).ToString("yyyyMMdd");
        }

        public void AddParameter(string Nombre, string valor)
        {
            Comando.Parameters.Add("@" + Nombre, System.Data.OleDb.OleDbType.VarChar).Direction = ParameterDirection.Input;
            Comando.Parameters[Comando.Parameters.Count - 1].Value = valor;
        }

        public void AddParameter(string Nombre, Int32 valor)
        {
            Comando.Parameters.Add("@" + Nombre, System.Data.OleDb.OleDbType.Numeric).Direction = ParameterDirection.Input;
            Comando.Parameters[Comando.Parameters.Count - 1].Value = valor;
        }

        public void AddParameter(string Nombre, Int64 valor)
        {
            Comando.Parameters.Add("@" + Nombre, System.Data.OleDb.OleDbType.Numeric).Direction = ParameterDirection.Input;
            Comando.Parameters[Comando.Parameters.Count - 1].Value = valor;
        }

        public void AddParameter(string Nombre, double valor)
        {
            Comando.Parameters.Add("@" + Nombre, System.Data.OleDb.OleDbType.Double).Direction = ParameterDirection.Input;
            Comando.Parameters[Comando.Parameters.Count - 1].Value = valor;
        }

        public void AddParameter(string Nombre, bool valor)
        {
            Comando.Parameters.Add("@" + Nombre, System.Data.OleDb.OleDbType.Boolean).Direction = ParameterDirection.Input;
            Comando.Parameters[Comando.Parameters.Count - 1].Value = valor;

        }

        #endregion

        public int SP(string spName)
        {
            try
            {
                if ((Comando.Connection == null) || (Comando.Connection.State != ConnectionState.Open))
                {
                    Comando.Connection = BaseDeDatos;
                }

                Comando.CommandType = CommandType.StoredProcedure;
                Comando.CommandText = spName;

                int registrosAfectados = Comando.ExecuteNonQuery();

                Comando.Parameters.Clear();

                Desconectar();

                return registrosAfectados;
            }
            catch (Exception ex)
            {
                Comando.Parameters.Clear();
                throw ex;
            }
        }
    }
}
