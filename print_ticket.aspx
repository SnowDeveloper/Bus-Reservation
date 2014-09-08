<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="print_ticket.aspx.cs" Inherits="print_ticket" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div id="container">
<h1>Print Ticket</h1>
<div id="menustrip">
    <a href="user_home.aspx"><div id="um">Home</div></a>
    <a href="bus_details.aspx"><div id="um">Bus Details</div></a>
    <a href="update_info.aspx"><div id="um">Update Info</div></a>
    <a href="cancel_ticket.aspx"><div id="um">Cancel Ticket</div></a>
    <a href="print_ticket.aspx"><div id="um">Print Ticket</div></a>
    <a href="logout.aspx"><div id="um">Logout</div></a>
    </div>
           
              <div id="contact_form1">
               
               <table cellspacing="10px" cellpadding="10px" style="margin-left:30px; margin-top: 30px; margin-bottom: 30px" border ="1">
                    <tr>
                        <td colspan="2"><center><h2 style="color: #0099FF; font-weight: bold; font-size: large">SAM TRAVELS</h2></center></td>
                                              
                    </tr>
                    <tr>
                        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Ticket Number</h2></td>
                        <td><asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>                            
                    </tr>
                    <tr>
                        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Name</h2></td>
                        <td><asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Booking Date</h2></td>
                        <td><asp:Label ID="Label12" runat="server" Text=""></asp:Label></td>
                    </tr>
                     <tr>
                        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Date Of Journey</h2></td>
                        <td><asp:Label ID="Label4" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Bus No</h2></td>
                        <td><asp:Label ID="Label11" runat="server" Text=""></asp:Label></td>
                    </tr>
                     <tr>
                        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Source</h2></td>
                        <td><asp:Label ID="Label5" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Destination</h2></td>
                        <td><asp:Label ID="Label6" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">No Of Seats</h2></td>
                        <td><asp:Label ID="Label7" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Departure Time</h2></td>
                        <td><asp:Label ID="Label9" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Arrival Time</h2></td>
                        <td><asp:Label ID="Label10" runat="server" Text=""></asp:Label></td>
                    </tr>
                    <tr>
                        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">Fare</h2></td>
                        <td><asp:Label ID="Label8" runat="server" Text=""></asp:Label></td>                        
                    </tr>
                    <tr>
        
        <td colspan="2"><asp:Button ID="printButton" runat="server" Text="PRINT TICKET" 
                OnClientClick="javascript:window.print();" onclick="printButton_Click" 
                Height="41px" Width="329px" /></td>            
    </tr>
                    
               </table>
             
                  
               
             
</div>
                
    <div id="print_right"></div>

</div>
</div>
</div>
</asp:Content>

