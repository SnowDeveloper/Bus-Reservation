<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>SAM TRAVELS - HOME -</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="Server">
<div id="container">
                    <div id="slider">
                        <script language="JavaScript" src="engine/swfobject.js" type="text/javascript"></script>

                        <div id="cu3ox1" style="width:530px;height:280px;margin:0 auto;text-align:center; padding-top: 10px;">
	<script language="JavaScript" type="text/javascript">
		var cu3oxId = ("cu3ox" + Math.random()).replace(".","");
		document.write('<div id ="' + cu3oxId + '" style="text-align:center;"><img src="data/images1/volvo_bus_india.jpg"/></div>');
		if (swfobject.getFlashPlayerVersion().major)
			swfobject.createSWF(
			  {data:"engine/cu3ox.swf", width:"100%", height:"100%" },
			  {FlashVars:"images=data/images1&cfgsuffix=1",menu:true, allowFullScreen:false, allowScriptAccess:'sameDomain', wmode:"transparent", bgcolor:'#FFFFFF', 
			   devicefont:false, scale:'noscale', loop:true, play:true, quality:'high'}, cu3oxId);
	</script>
	<noscript>
		<!--[if !IE]> -->
		<object type="application/x-shockwave-flash" data="engine/cu3ox.swf" width="100%" height="100%"  align="middle">
		<!-- <![endif]-->
		<!--[if IE]>
		<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=10,0,0,0"
			width="100%" height="100%"  align="middle">
			<param name="movie" value="engine/cu3ox.swf" />
		<!-->
			<param name="FlashVars" value="images=data/images1&cfgsuffix=1" />
			<param name="allowScriptAccess" value="always" /><param name="allowFullScreen" value="false" />
			<param name="quality" value="high"/><param name="scale" value="noscale"/>
			<param name="wmode" value="transparent" />	
			<param name="bgcolor" value="#ffffff" />	
			<img src="data/images1/volvo_bus_india.jpg"/>
		</object>
		<!-- <![endif]-->		
	</noscript>
</div>

                        
                    </div>
                    
                    <div id="buyticket">
                        <h1User&#39;s Login</h1>
                        
                        <table width="400px" cellspacing="10px" cellpadding="4px" id="table">
                            <tr>
                                <td class="tdname" ><asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>                                
                                <td class="tdname">
                                    <asp:TextBox ID="TextBox1" runat="server" Height="28px" 
                                        Width="210px"></asp:TextBox></td>                                                                        
                            </tr>
                             
                              <tr>
                                <td class="tdname" ><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>                                
                                <td class="tdname">
                                    <asp:TextBox ID="TextBox2" runat="server" Height="28px" 
                                        Width="210px" ontextchanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox></td>                                                                        
                            </tr>
                                <tr>
        <td></td>
        <td><asp:Button ID="Button1" runat="server" Text=" Login " Height="37px" 
                Width="214px" BackColor="#0082C8" BorderColor="#05689E" Font-Bold="True" 
                Font-Size="Medium" ForeColor="White" onclick="Button1_Click" />
            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                                    </td>            
    </tr>
                            <tr>
                            <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><asp:Button ID="Button2" runat="server" Text=" Sign Up Now " Height="37px" 
                Width="214px" BackColor="#0082C8" BorderColor="#05689E" Font-Bold="True" 
                Font-Size="Medium" ForeColor="White" onclick="Button2_Click" /></td>
                            </tr>
                        </table>
                        
                    </div>
                    
                </div>
                <div id="location">                    
                    <h1>Routes Available</h2>
                   <center> <table width="900" cellpadding="15px" cellspacing="15px">
                        <tr>
                            <td>Bangalore - Ahmedabad</td>
                            <td>Madurai - Bangalore</td>
                            <td>Visakhapatnam - Bangalore</td>
                            <td>Bangalore - Mumbai </td>                            
                        </tr>
                        <tr>
                            <td>Bangalore - Tirupati Package</td>
                            <td>Bangalore - Pune </td>
                            <td>Mumbai - Mangalore</td>
                            <td>Hyderabad - Mangalore</td>                            
                        </tr>
                        <tr>
                            <td>Bangalore - Madurai</td>
                            <td>Mangalore - Bangalore</td>
                            <td>Ahmedabad - Bangalore</td>
                            <td>Trivandram - Bangalore</td>                            
                        </tr>
                        <tr>
                            <td>Bangalore - Trivandram</td>
                            <td>Belgaum - Bangalore</td>
                            <td>Vijayawada - Bangalore</td>
                            <td>Bangalore - Belgaum</td>                            
                        </tr>
                        <tr>
                            <td>Bangalore - Hubli</td>
                            <td>Chennai - Bangalore</td>
                            <td>Bangalore - Chennai</td>
                            <td>Pune - Bangalore</td>
                        </tr>
                    </table></center>                    
                </div>
                <div id="happy">               
                       
        </div>
        </div>
</asp:Content>