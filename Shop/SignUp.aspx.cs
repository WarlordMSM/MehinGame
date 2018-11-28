using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL;
public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (HiddenField1.Value == "")
        {
            Random R = new Random();
            string OutputRnd = Convert.ToString(R.Next(100000, 999999));
            HiddenField1.Value = OutputRnd;
            Label1.Text = OutputRnd;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label2.Visible = false;
        if (TextBox11.Text == Label1.Text)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "" && TextBox8.Text != "")
            {
                if (TextBox9.Text == TextBox10.Text)
                {
                    BL_signup Mehin = new BL_signup();
                    Mehin.Fname = TextBox1.Text;
                    Mehin.Lname = TextBox2.Text;
                    Mehin.Dname = TextBox3.Text;
                    Mehin.MeliCode = TextBox4.Text;
                    Mehin.Email = TextBox5.Text;
                    Mehin.mobile = TextBox6.Text;
                    Mehin.phone = TextBox7.Text;
                    Mehin.Adres = TextBox8.Text;
                    Mehin.pass = TextBox9.Text;
                    Mehin.StatusShow = 1;
                    Mehin.Add_User();

                    HiddenField1.Value = "";
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                    TextBox10.Text = "";
                    TextBox11.Text = "";

                    if (HiddenField1.Value == "")
                    {
                        Random R = new Random();
                        string OutputRnd = Convert.ToString(R.Next(100000, 999999));
                        HiddenField1.Value = OutputRnd;
                        Label1.Text = OutputRnd;
                    }
                }
                else
                {

                }
            }
            else
            {
                Label2.Text = "لطفا تمام فیلد ها را پر کنید";
                Label2.Visible = true;
            }

        }
        else
        {
            Label2.Text = "عبارت تصادفی را درست وارد نکردید";
            Label2.Visible = true;

        }
    }
}