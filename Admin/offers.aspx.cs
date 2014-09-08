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

public partial class Admin_offers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=reservation;Integrated Security=True;Pooling=False");
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM Offers WHERE oid > 0", con);
        DataTable dtab = new DataTable();
        adp.Fill(dtab);
        GridView1.DataSource = dtab;
        GridView1.DataBind();
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox3.Text.Trim().Length > 0 && TextBox2.Text.Trim().Length > 0 && TextBox1.Text.Trim().Length > 0 && TextBox5.Text.Trim().Length > 0)
        {
            UserInfo af = new UserInfo();
            af.add_offer(TextBox3.Text.ToString(), TextBox2.Text.ToString(), TextBox1.Text.ToString(), TextBox5.Text.ToString());
            Label2.Text = "Offers added Successfully";
            TextBox3.Text = "";
            TextBox2.Text = "";
            TextBox1.Text = "";
            TextBox5.Text = "";
        }

        else
            Label2.Text ="Enter all the fields";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}
