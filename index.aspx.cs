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

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        UserInfo obj = new UserInfo();
        DataTable dtab1 = new DataTable();
        string username = TextBox1.Text;
        string password = TextBox2.Text;
        dtab1 = obj.signin(username, password);

        if (dtab1.Rows.Count > 0)
        {

            if (TextBox1.Text == "Administrator" && TextBox2.Text=="admin")
            {
                Session["Username"] = dtab1.Rows[0][1].ToString();
                Response.Redirect("Admin/index.aspx");
            }
            else
            {
                Response.Write("Logged in successfully");
                Session["userid"] = dtab1.Rows[0][0].ToString();
                Session["Username"] = dtab1.Rows[0][1].ToString();
                Response.Redirect("bus_details.aspx");
            }

        }
        else
        {
            Label3.Visible = true;
            Label3.Text="Incorrect Username /Password";
            TextBox2.Text = "";
            TextBox1.Text = "";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
       
    }
}
