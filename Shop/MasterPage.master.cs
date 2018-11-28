using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BL_master Mehin = new BL_master();
        DataList10.DataSource = Mehin.cat10();
        DataList10.DataBind();

        DataList11.DataSource = Mehin.cat20();
        DataList11.DataBind();

        DataList12.DataSource = Mehin.cat30();
        DataList12.DataBind();
    }
}
