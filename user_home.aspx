<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="user_home.aspx.cs" Inherits="user_home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<div id="container">

<h1>Welcome! <asp:Label ID="Label1" runat="server"></asp:Label></h1>
    
    <div id="menustrip">
    <a href="user_home.aspx"><div id="um">Home</div></a>
    <a href="bus_details.aspx"><div id="um">Bus Details</div></a>
    <a href="update_info.aspx"><div id="um">Update Info</div></a>
    <a href="cancel_ticket.aspx"><div id="um">Cancel Ticket</div></a>
    <a href="print_ticket.aspx"><div id="um">Print Ticket</div></a>
    <a href="logout.aspx"><div id="um">Logout</div></a>
    </div>
</div>
</div>

</asp:Content>

