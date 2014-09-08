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

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Mainclass obj = new Mainclass();
            int i = obj.username(TextBox3.Text.ToString());
            if (i == 1)
            {
                Label1.Visible = true;
                Label1.Text = "Username already in use...Enter any other username";
            }
            else if (TextBox7.Text.Trim().Length != 10)
            {
                Label1.Visible = true;
                Label1.Text = "Enter 10 digit contact number";
            }
            else if (TextBox1.Text.Trim().Length > 0 && TextBox2.Text.Trim().Length > 0 && TextBox3.Text.Trim().Length > 0 && TextBox4.Text.Trim().Length > 0 && TextBox6.Text.Trim().Length > 0 && TextBox7.Text.Trim().Length > 0)
            {
                UserInfo nr = new UserInfo();

                nr.NewUserSignUp(TextBox1.Text.ToString(), TextBox2.Text.ToString(), TextBox3.Text.ToString(), TextBox4.Text.ToString(), TextBox6.Text.ToString(), TextBox7.Text.ToString());
                Label1.Visible = true;
                Label1.Text = "Registration Sucessfully Done";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                Button2.Visible = true;


            }
            else
                Label1.Visible = true;
                Label1.Text = "Enter all the fields";
        }
        catch (Exception )
        {
            // Perform some action here, and then throw a new exception.
            Label1.Visible = true;
            Label1.Text=("Invalid input");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }
}
