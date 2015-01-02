<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Special.aspx.cs" Inherits="industravels_new_Special" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH9" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF9" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL9" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR9" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Special-Packages::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%><link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.hrl{border:1px solid #CBC6C4;}

h5{color:#AD4141}
h3{color:#C62731}

.dtli{margin:0px 5px;}
.imgs{padding:10px 0px 5px 0px;}
.imgbg{margin-top:-6px}

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH9:Head ID="THead9" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%" >
    <tr>
    <td>
     <TraL9:Left ID="TLeft9" runat="server" />  
    </td>
    <td valign="top" class="col">
    <div class="contain_center" >
    <asp:DataList ID="dtSpecialOffers" runat="server" Width="920" CssClass="dtli">
    <ItemTemplate>
    <h3><%#Eval("Package_Title") %></h3>
    <hr  class="hrl" />
    <div style="background-color:White">
    <center>
    <table>
    <tr>
    <td width="30" align="right"><asp:ImageButton ID="imgprev" runat="server"  ImageUrl="images/left.png" AlternateText="Prev" OnClick="imgprev_click" ToolTip="Previous" /></td>
    <td align="center">
    <asp:Image ID="offerimg" runat="server" ImageUrl='<%#Eval("Photo_name","Photos/{0}") %>' ToolTip='<%#Eval("Package_Title") %>' Width="850" Height="250" CssClass="imgs" AlternateText="offers image" />
    <img src="images/bg-img.png" alt="" class="imgbg" />    
    </td>
    <td width="30" align="left"><asp:ImageButton ID="imgnxt" runat="server"  ImageUrl="images/right.png" AlternateText="Next" OnClick="imgnxt_click" ToolTip="Next"  /></td>
    </tr></table>
    
    </center>
    </div>
    <br />
    <h5>Plan Information</h5><hr class="hrl" /><br />
    <table width="400">
    <tr>
    <td><b>Package Plan</b></td>
    <td width="20">--</td>
    <td><%#Eval("Package_Type") %> &emsp; (<%#Eval("NoOfDays")%> Days / <%#Eval("NoOfNights")%> Nights)</td>
    </tr>
     <tr>
    <td><b>Starting From</b></td>
    <td>-- </td>
    <td><%#Eval("StartFrom") %></td>
    </tr>
     <tr>
    <td><b>Finishing At</b></td>
    <td>--  </td>
    <td><%#Eval("FinishAt") %></td>
    </tr>
     <tr>
    <td><b>Plan Expired On</b></td>
    <td>-- </td>
    <td><%#Eval("Expired_On","{0:dd MMM yyyy}") %></td>
    </tr>
    </table>
    <br />
    <h5>Itinerary information </h5><hr  class="hrl" /><br />
    <%#Eval("Itinerary_infor")%><br />
    <h5>The following terms and conditions apply </h5><hr  class="hrl" /><br />
    <%#Eval("Terms_Condi")%>
    </ItemTemplate>
    </asp:DataList> <br />
    &emsp;<b>More details <a href="Contact.aspx" style="color:#C62731">click here </a> for contact us </b>
     <%--<h1 style="color:#5d5d5d; font-size:20px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:25px; margin-top:5px;"> Special Offers</h1>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Classic Vietnam Tour</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
7 Nights, 8 Days - $ 888 onwards
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
The Great Golden Triangle , INDIA
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
3 Nights, 4 Days - $ 669 onwards
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">

The Great Golden Triangle , INDIA
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px;  line-height:20px;">
3 Nights, 4 Days - $ 669 onwards
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Classic Vietnam Tour
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px;  line-height:20px;">
7 Nights, 8 Days - $ 888 onwards 
</p>--%>
    </div>

   
    </td>
    <td>
     <TraR9:Right ID="TRight9" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF9:Foot ID="TFoot9" runat="server" />
    </td></tr>
    </table>
    </div>
    
    </form>
</body>
</html>


