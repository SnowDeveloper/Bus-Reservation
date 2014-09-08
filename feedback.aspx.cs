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

public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (TextBox1.Text.Trim().Length > 0 && TextBox2.Text.Trim().Length > 0 && TextBox3.Text.Trim().Length > 0 && TextBox4.Text.Trim().Length > 0)
            {
                UserInfo fd = new UserInfo();
                fd.feedback(TextBox1.Text.ToString(), TextBox2.Text.ToString(), TextBox3.Text.ToString(), DropDownList1.SelectedValue.ToString(), TextBox4.Text.ToString());
                Label1.Visible = true;
                Label1.Text = "Feedback Received Successfully";
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "Enter all the fields.";
            }
        }
        catch (Exception)
        {
            Label2.Visible = true;
            Label2.Text = "Invalid input";
        }
    }
}
