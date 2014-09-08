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

public partial class payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TicketBooking obj = new TicketBooking();
        TextBox2.Text = obj.paymentmethodaddress();
        TicketBooking obj1 = new TicketBooking();
        TextBox1.Text = obj1.paymentmethodacno();
        Label1.Text = "We wish you a happy journey";
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        /*TicketBooking obj = new TicketBooking();
        TextBox2.Text = obj.paymentmethodaddress();*/
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("print_ticket.aspx");
    }
}
