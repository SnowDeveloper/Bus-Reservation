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
using System.Data.SqlClient;
using data;

public partial class update_info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Session["Userid"].ToString();            
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=reservation;Integrated Security=True;Pooling=False");
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM UserInfo WHERE uid='" + id + "'", con);
            DataTable dtab = new DataTable();
            adp.Fill(dtab);
            TextBox1.Text = dtab.Rows[0][1].ToString();
            TextBox2.Text = dtab.Rows[0][2].ToString();            
            TextBox3.Text = dtab.Rows[0][3].ToString();
            TextBox4.Text = dtab.Rows[0][4].ToString();
            TextBox5.Text = dtab.Rows[0][5].ToString();
            TextBox6.Text = dtab.Rows[0][6].ToString();
        }



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string id = Session["Userid"].ToString();
            if (TextBox1.Text.Trim().Length > 0 && TextBox2.Text.Trim().Length > 0 && TextBox4.Text.Trim().Length > 0 && TextBox5.Text.Trim().Length > 0 && TextBox6.Text.Trim().Length > 0)
            {
                UserInfo uu = new UserInfo();
                uu.UpdateUser(id, TextBox1.Text.ToString(), TextBox2.Text.ToString(), TextBox4.Text.ToString(), TextBox5.Text.ToString(), TextBox6.Text.ToString());
                Label2.Visible = true;
                Label2.Text = "Updated Successfully";
            }
            else
                Label3.Visible = true;
            Label3.Text = "Enter all the fields";
        }
        catch (Exception)
        {
            Label3.Visible = true;
            Label3.Text = "Invalid input";
        }
    }
}
