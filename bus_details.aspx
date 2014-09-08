<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="bus_details.aspx.cs" Inherits="bus_details" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 107px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<div id="container">

<h1>Search Bus</h1>
<div id="menustrip">
    <a href="user_home.aspx"><div id="um">Home</div></a>
    <a href="bus_details.aspx"><div id="um">Bus Details</div></a>
    <a href="update_info.aspx"><div id="um">Update Info</div></a>
    <a href="cancel_ticket.aspx"><div id="um">Cancel Ticket</div></a>
    <a href="print_ticket.aspx"><div id="um">Print Ticket</div></a>
    <a href="logout.aspx"><div id="um">Logout</div></a>
    </div>
<br />
<table width="880px" cellspacing="10px" cellpadding="8px">
    <tr>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">From<h2></h2></td>
        <td><asp:DropDownList ID="DropDownList1" runat="server" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" Height="28px" 
                Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:DropDownList></td>
        <td><h2 style="color: #0099FF; font-weight: bold; font-size: large">To<h2></h2></td>
        <td><asp:DropDownList ID="DropDownList2" runat="server" 
                onselectedindexchanged="DropDownList2_SelectedIndexChanged" Height="28px" 
                Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:DropDownList></td>
        <td class="style1"><h2 style="color: #0099FF; font-weight: bold; font-size: large">
            Date<h2></h2></td>
        <td><asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="191px" onfocus="hover(this)" class="feild" onblur="dehover(this)"></asp:TextBox></td>            
        <td><asp:ImageButton ID="ImageButton1" runat="server" Height="25px" 
                ImageUrl="~/images/date.png" Width="28px" onclick="ImageButton1_Click" /></td>            
        <td>
            <asp:Button ID="Button1" runat="server" Text=" Search " Height="37px" 
                Width="97px" BackColor="#0082C8" BorderColor="#05689E" Font-Bold="True" 
                Font-Size="Medium" ForeColor="White" onclick="Button1_Click" /></td>
    </tr>
    <tr>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="6"> <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
            BorderColor="#FFCC66" Font-Names="Verdana" 
            Font-Size="8pt" ForeColor="#663399" Height="150px" 
            Width="180px" BorderWidth="1px" DayNameFormat="Shortest" 
            ShowGridLines="True" onselectionchanged="Calendar1_SelectionChanged" 
            Visible="False">
        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
        <SelectorStyle BackColor="#FFCC66" />
        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#CC9966" />
        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
        <DayHeaderStyle Font-Bold="True" 
            Height="1px" BackColor="#FFCC66" />
        <TitleStyle BackColor="#990000" Font-Bold="True" 
            Font-Size="9pt" ForeColor="#FFFFCC" />
        </asp:Calendar></td>   
    </tr>
</table>

<br />

    <asp:GridView ID="GridView1" runat="server" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" 
        
        style="top: 349px; left: 127px; position: absolute; height: 36px; width: 800px; margin-left: 100px">
        <RowStyle ForeColor="#000066" />
        <Columns>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    
    <br /><br /><br /><br /><br />
    <table style="margin-left: 76px;" width="800px">
        <tr>
            <td><asp:Button ID="Button2" runat="server" Text=" View Details " Height="37px" 
                Width="395px" BackColor="#0082C8" BorderColor="#05689E" Font-Bold="True" 
                Font-Size="Medium" ForeColor="White" onclick="Button3_Click" Visible="False" /></td>
            
            <td><asp:Button ID="Button3" runat="server" Text=" Book Now " Height="37px" 
                Width="395px" BackColor="#0082C8" BorderColor="#05689E" Font-Bold="True" 
                Font-Size="Medium" ForeColor="White" onclick="Button2_Click" Visible="False" /></td>
        </tr>
    </table>

</div>
</div>

</asp:Content>

