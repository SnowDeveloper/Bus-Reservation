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

public partial class print_ticket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string uid = Session["Userid"].ToString();
        UserInfo pt = new UserInfo();
        DataTable dtab1 = new DataTable();
        dtab1 = pt.print_ticket(uid);
        string Tk = dtab1.Rows[0][0].ToString();
        string dt = dtab1.Rows[0][4].ToString();
        string sn = dtab1.Rows[0][5].ToString();
        string fr = dtab1.Rows[0][7].ToString();
        string rt = dtab1.Rows[0][2].ToString();
        string bid = dtab1.Rows[0][3].ToString();
       

        DataTable dtab2 = new DataTable();
        dtab2 = pt.print_dest(rt);
        string ss = dtab2.Rows[0][1].ToString();
        string des = dtab2.Rows[0][2].ToString();

        
        DataTable dtab3 = new DataTable();
        dtab3 = pt.print_name(uid);
        string name = dtab3.Rows[0][0].ToString();

        DataTable dtab4 = new DataTable();
        dtab4 = pt.print_time(bid);
        string busno = dtab4.Rows[0][1].ToString();
        string dept = dtab4.Rows[0][3].ToString();
        string arr = dtab4.Rows[0][4].ToString();
        string jd = dtab4.Rows[0][6].ToString();

        Label2.Text = Tk;
        Label3.Text = name;
        Label12.Text = dt;
        Label5.Text = ss;
        Label6.Text = des;
        Label7.Text = sn;
        Label8.Text = " Rs "+ fr;
        Label11.Text = busno;
        Label9.Text = dept;
        Label10.Text = arr;
        Label4.Text = jd;

    }

    protected void printButton_Click(object sender, EventArgs e)
    {

    }
}
