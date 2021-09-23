using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
﻿using System.Data.SqlClient;
using System.Data;

namespace Datos
{
    public class Ejecucion : ConexionMsSql
    {
        StringBuilder parametrosParaSP = new StringBuilder();
        public DataTable ConsultaSql(string consulta)
        {
            SqlDataAdapter da = new SqlDataAdapter(consulta, BaseDeDatos);
            DataTable dt = new DataTable();
            da.Fill(dt);

            Desconectar();

            return dt;
        }

        public void ClearParameters() { parametrosParaSP = new StringBuilder(); }

        public DataTable SP(string spName)
        {//LLama un stored procedure
            return ConsultaSql("EXEC " + spName + " " + parametrosParaSP.ToString());
        }

        public void AddParameter(DateTime? value)
        {
            if (parametrosParaSP.Length != 0) { parametrosParaSP.Append(", "); }

            if (value != null) { parametrosParaSP.Append("'" + value.ToString() + "'"); }
            else parametrosParaSP.Append("NULL");
        }

        public void AddParameter(string value)
        {
            if (parametrosParaSP.Length != 0) { parametrosParaSP.Append(", "); }

            if (value != null) { parametrosParaSP.Append("'" + value + "'"); }
            else parametrosParaSP.Append("NULL");
        }
        public void AddParameter(bool? value)
        {
            if (parametrosParaSP.Length != 0) { parametrosParaSP.Append(", "); }

            if (value != null) { parametrosParaSP.Append(value); }
            else parametrosParaSP.Append("NULL");
        }
        public void AddParameter(int? value)
        {
            if (parametrosParaSP.Length != 0) { parametrosParaSP.Append(", "); }

            if (value != null) { parametrosParaSP.Append(value); }
            else parametrosParaSP.Append("NULL");
        }
        public void AddParameter(double? value)
        {
            if (parametrosParaSP.Length != 0) { parametrosParaSP.Append(", "); }

            if (value != null) { parametrosParaSP.Append(value); }
            else parametrosParaSP.Append("NULL");
        }
    }
}
