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

public partial class Admin_routes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=reservation;Integrated Security=True;Pooling=False");
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("SELECT rid FROM RouteInfo", con);
            DataTable dtab = new DataTable();
            adp.Fill(dtab);
            DropDownList1.DataSource = dtab;
            DropDownList1.DataValueField = "rid";
            DropDownList1.DataBind();

            DropDownList2.DataSource = dtab;
            DropDownList2.DataValueField = "rid";
            DropDownList2.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Trim().Length > 0 && TextBox2.Text.Trim().Length > 0 && TextBox3.Text.Trim().Length > 0)
        {
            BusInfo rt = new BusInfo();
            rt.add_routes(TextBox1.Text.ToString(), TextBox2.Text.ToString(), TextBox3.Text.ToString());
            Label2.Text= "New Routes Added Succesfully";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

        }
        else
            Label2.Text= "Enter all the details";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox6.Text.Trim().Length > 0 && TextBox6.Text.Trim().Length > 0 && TextBox6.Text.Trim().Length > 0)
        {
            BusInfo rt = new BusInfo();
            rt.edit_routes(DropDownList1.SelectedValue.ToString(), TextBox5.Text.ToString(), TextBox6.Text.ToString(), TextBox7.Text.ToString());
            Label1.Text = "Routes  Edited Succesfully";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";

        }
        else
            Label1.Text = "Enter all the details";
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string x = DropDownList1.SelectedValue.ToString();
        SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=reservation;Integrated Security=True;Pooling=False");
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM RouteInfo WHERE rid='" + x + "'", con);
        DataTable dtab = new DataTable();
        adp.Fill(dtab);
        TextBox5.Text = dtab.Rows[0][1].ToString();
        TextBox6.Text = dtab.Rows[0][2].ToString();
        TextBox7.Text = dtab.Rows[0][3].ToString();
        con.Close();
        
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string x = DropDownList2.SelectedValue.ToString();
        BusInfo dr = new BusInfo();
        dr.route_delete(x);
        Label3.Text = "Route Deleted Successfully";
    }
    
}
