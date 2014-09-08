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

public partial class cancel_ticket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            TicketBooking obj = new TicketBooking();
            string bookingid = TextBox1.Text.ToString();
            int noofticket = obj.noofticket(bookingid);
            int ticketnotocancel = Convert.ToInt32(TextBox2.Text.ToString());
            if (ticketnotocancel <= noofticket)
            {

                for (int i = 1; i <= ticketnotocancel; i++)
                {

                    obj.CancelTicket(bookingid);
                }
                Label1.Visible = true;
                Label1.Text = "Booking is cancelled successfully";
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Invalid no. of tickets";
            }
        }
        catch (Exception)
        {
            Label1.Visible = true;
            Label1.Text = "Invalid Input";
        }
           
        }
    }

