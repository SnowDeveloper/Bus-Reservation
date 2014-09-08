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

public partial class bus_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\sqlexpress;Initial Catalog=reservation;Integrated Security=True;Pooling=False");
            con.Open();
            SqlDataAdapter adpr = new SqlDataAdapter("Select distinct source from RouteInfo WHERE rid>0", con);
            DataTable dtab = new DataTable();
            adpr.Fill(dtab);
            DropDownList1.DataSource = dtab;
            DropDownList1.DataValueField = "source";
            DropDownList1.DataTextField = "source";
            DropDownList1.DataBind();
            Session["source"] = DropDownList1.SelectedValue;
            adpr = new SqlDataAdapter("Select distinct destination from RouteInfo WHERE rid>0", con);
            dtab = new DataTable();
            adpr.Fill(dtab);
            DropDownList2.DataSource = dtab;
            DropDownList2.DataValueField = "destination";
            DropDownList2.DataTextField = "destination";
            DropDownList2.DataBind();
            Session["destination"] = DropDownList2.SelectedValue;
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Mainclass obj = new Mainclass();
        DataTable dtab = new DataTable();
        dtab = obj.check_route_id(DropDownList1.SelectedValue.ToString(), DropDownList2.SelectedValue.ToString(), Calendar1.SelectedDate.ToShortDateString());
        GridView1.DataSource = dtab;
        GridView1.DataBind();
        Button2.Visible = true;
        Button3.Visible = true;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       // Mainclass obj = new Mainclass();
        //DataTable dtab = new DataTable();
        // dtab = obj.check_route_id(Session["source"].ToString(), Session["destination"].ToString(), Session["jdate"].ToString());


        for (int i = 0; i <GridView1.Rows.Count; i++)
        {
            if (((CheckBox)GridView1.Rows[i].FindControl("CheckBox1")).Checked)
            {
                string busid = GridView1.Rows[i].Cells[1].Text;
                string AvailableNoOfSeat = GridView1.Rows[i].Cells[6].Text;
                string routeid = GridView1.Rows[i].Cells[3].Text;
                Session["busid"] = busid;
                Session["routeid"] = routeid;
                Response.Redirect("book_seat.aspx");

                // necessary code to be written here


            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Mainclass obj = new Mainclass();
        DataTable dtab = new DataTable();
        // dtab = obj.check_route_id(Session["source"].ToString(), Session["destination"].ToString(), Session["jdate"].ToString());


        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            if (((CheckBox)GridView1.Rows[i].FindControl("CheckBox1")).Checked)
            {
                string busno = GridView1.Rows[i].Cells[1].Text;
                Session["busno"] = busno;
                Response.Redirect("view_details.aspx");
            }
        }
    }
}
