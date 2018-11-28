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
    public class BL_index: DataAccess
    {
        public DataTable Select1()
        {
            base.Link();
            string Query = "SELECT [Product_ID], [Product_Name], [CurPrice], [Picture_Address], [AccessStatus] FROM [Tb_Product] Where (AccessStatus = 1)";
            DataTable Output_Q= base.SelectDataText(Query);
            base.UnLink();
            return Output_Q;

        }
        public DataTable Select2()
        {
            base.Link();
            string Query = "SELECT [Product_ID], [Product_Name], [CurPrice], [Picture_Address], [AccessStatus] FROM [Tb_Product] Where (AccessStatus = 2)";
            DataTable Output_Q = base.SelectDataText(Query);
            base.UnLink();
            return Output_Q;

        }
    }
}
