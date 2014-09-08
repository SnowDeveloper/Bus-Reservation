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

public partial class book_seat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            TicketBooking obj = new TicketBooking();
            string userid = (string)Session["userid"];
            string busid = (string)Session["busid"];
            string routeid = (string)Session["routeid"];
            int seatno = Convert.ToInt32(TextBox1.Text);
            string currdate = System.DateTime.Now.ToString();
            string fare = TextBox2.Text.ToString();
            int bookingid = obj.BookTicket(userid, routeid, busid, currdate, seatno, fare);
            Label1.Visible = true;
            Label1.Text = "Your Ticket Number is:" + bookingid.ToString();
            obj = new TicketBooking();
            string email = obj.findemail(userid);
            obj = new TicketBooking();
            obj.email(email);
            obj = new TicketBooking();
            string contact = obj.findcontact(userid);
            obj = new TicketBooking();
            string msg = "Thank you for using our service...Happy journey SAM Travels";
            string op = TicketBooking.send(msg, contact);
            Button2.Visible = true;
        }
        catch(Exception )
        {
            Response.Write("Invalid input");
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        try
        {
            int noofseats = Convert.ToInt32(TextBox1.Text);
            TicketBooking obj = new TicketBooking();
            string rid = (string)Session["routeid"];
            int amount = obj.amount(rid);
            int amountfinal = amount * Convert.ToInt32(TextBox1.Text);
            TextBox2.Text = amountfinal.ToString();
        }
        catch (Exception)
        {
            Label1.Visible=true;
            Label1.Text="Invalid input";
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("payment.aspx");
    }
}
