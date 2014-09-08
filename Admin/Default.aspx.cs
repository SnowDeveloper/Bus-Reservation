using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using data;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Trim().Length > 0 && TextBox2.Text.Trim().Length > 0)
        { 
            AdminInfo ad = new AdminInfo();
            if (ad.admin_login(TextBox1.Text.ToString(), TextBox2.Text.ToString()))
            {
                Label1.Text = "Login Successfully";
                Session["Username"] = TextBox1.Text; ;
                Response.Redirect("routes.aspx");
            }
            else
            {
                Label1.Text = "Wrong Username / Password";
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }
        else
            Label1.Text = "Enter all the fields";
    }
}
