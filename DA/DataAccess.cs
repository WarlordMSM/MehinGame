using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DA;

namespace DA
{
    public class DataAccess
    {
        SqlConnection con;
        SqlDataAdapter da;
        SqlCommand cmd;
        DataTable dt;

        public DataAccess()
        {
            con = new SqlConnection();
            da = new SqlDataAdapter();
            cmd = new SqlCommand();
            cmd.Connection = con;
            da.SelectCommand = cmd;
        }
        public void Link()
        {
            con.ConnectionString = "Data Source=WARLORDMSM-DELL\\SQLEXPRESS;Initial Catalog=MehinGame;Integrated Security=True";
            con.Open();
        }
        public void UnLink()
        {
            con.Close();
        }
        public DataTable SelectDataText(string Strsql)
        {
            cmd.CommandText = Strsql;
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public void CommandDataText(string Strsql)
        {
            cmd.CommandText = Strsql;
            cmd.ExecuteNonQuery();
        }

    }
}
