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

public partial class view_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BusInfo obj = new BusInfo();
        string busid = (string)Session["busno"];
        GridView1.DataSource = obj.viewdetails(busid);
        GridView1.DataBind();
    }
}
