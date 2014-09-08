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

public partial class Admin_add_bus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=reservation;Integrated Security=True;Pooling=False");
            con.Open();
            SqlDataAdapter adp;
            adp = new SqlDataAdapter("SELECT bid FROM BusInfo", con);
            DataTable dtab = new DataTable();
            adp.Fill(dtab);
            DropDownList1.DataSource = dtab;
            DropDownList1.DataValueField = "bid";
            DropDownList1.DataBind();
            DropDownList3.DataSource = dtab;
            DropDownList3.DataValueField = "bid";
            DropDownList3.DataBind();
            adp = new SqlDataAdapter("SELECT rid FROM RouteInfo", con);
            DataTable dtab1 = new DataTable();
            adp.Fill(dtab1);
            DropDownList2.DataSource = dtab1;
            DropDownList2.DataValueField = "rid";
            DropDownList2.DataBind();
        }        

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Trim().Length > 0 && TextBox2.Text.Trim().Length > 0 && TextBox3.Text.Trim().Length > 0 && TextBox4.Text.Trim().Length > 0 && TextBox5.Text.Trim().Length>0)
        {
            BusInfo bi = new BusInfo();
            bi.BusSchedule(DropDownList1.SelectedValue.ToString(), TextBox1.Text.ToString(), DropDownList2.SelectedValue.ToString(), TextBox2.Text.ToString(), TextBox3.Text.ToString(), TextBox5.Text.ToString(), TextBox4.Text.ToString());
            Label2.Text = "Bus Scheduled Successfully";
        }
        else
        {
            Label2.Text = "Enter all the feilds";
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        string x = DropDownList3.SelectedValue.ToString();
        BusInfo db = new BusInfo();
        db.delete_schedule(x);
        Label3.Text = "Bus Schedule Deleted Successfully";
    }
}
