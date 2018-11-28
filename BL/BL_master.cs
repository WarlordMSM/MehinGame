using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DA;

namespace BL
{
    public class BL_master : DataAccess
    {
        public DataTable cat10()
        {
            base.Link();
            string Query = "SELECT Category_ID, Category_Name FROM Tb_Category WHERE (Category_ID BETWEEN 11 AND 19)";
            DataTable Output_Q = base.SelectDataText(Query);
            base.UnLink();
            return Output_Q;

        }
        public DataTable cat20()
        {
            base.Link();
            string Query = "SELECT Category_ID, Category_Name FROM Tb_Category WHERE (Category_ID BETWEEN 21 AND 29)";
            DataTable Output_Q = base.SelectDataText(Query);
            base.UnLink();
            return Output_Q;

        }
        public DataTable cat30()
        {
            base.Link();
            string Query = "SELECT Category_ID, Category_Name FROM Tb_Category WHERE (Category_ID BETWEEN 31 AND 39)";
            DataTable Output_Q = base.SelectDataText(Query);
            base.UnLink();
            return Output_Q;

        }
    }
}
