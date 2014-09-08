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

public partial class Admin_ad_bus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Trim().Length > 0 && TextBox2.Text.Trim().Length > 0 && TextBox3.Text.Trim().Length > 0 && TextBox4.Text.Trim().Length > 0)
        {
            BusInfo bn = new BusInfo();
            bn.NewBus(TextBox2.Text.ToString(), TextBox3.Text.ToString(), TextBox4.Text.ToString(),TextBox1.Text.ToString());
            Label2.Text =  "New Bus added Successfully";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
        else
            Label2.Text =  "Enter all the values";
    }
}
