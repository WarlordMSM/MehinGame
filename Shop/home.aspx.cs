using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BL_index Mehin = new BL_index();
        DataList1.DataSource = Mehin.Select1();
        DataList1.DataBind();

        DataList2.DataSource = Mehin.Select2();
        DataList2.DataBind();


        /*DataList11.DataSource = Mehin.cat20();
        DataList11.DataBind();

        DataList12.DataSource = Mehin.cat30();
        DataList12.DataBind();*/
    }
}