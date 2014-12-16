<%@ Page Language="C#" AutoEventWireup="true" CodeFile="weather.aspx.cs" Inherits="industravels_weather" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH21" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF21" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL21" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR21" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Weather-Report::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%><link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script type="text/javascript" src="js/jquery1-1.8.3(1).js"></script>
<style>
#delaymap
{
	width:920px;
	height:620px;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH21:Head ID="THead21" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td>
     <TraL21:Left ID="TLeft21" runat="server" />  
    </td>
    <td valign="top" class="col">
   <div class="contain_center" >
   <div style="width:920px; height:620px; text-align:center">
    <iframe src="http://embed.flightaware.com/commercial/integrated/web/delay_map.rvt" width="700" height="500" scrolling="no" 
     frameborder="0" marginheight="0" marginwidth="0"></iframe><br />
     <div style="font-size: x-small;">
     <%--<script type="text/javascript" src="http://jh.revolvermaps.com/2/1.js?i=78za6ohqu4o&amp;s=350&amp;m=6&amp;v=false&amp;r=false&amp;b=000000&amp;n=false&amp;c=9d8b63" async="async"></script>--%>
   <%-- <a href="http://flightaware.com/">Flight Tracker courtesy of FlightAware.com</a>--%>    
<%--   <script type="text/javascript" src="http://jh.revolvermaps.com/2/1.js?i=78za6ohqu4o&amp;s=350&amp;m=6&amp;v=false&amp;r=false&amp;n=false&amp;c=9d8b63" async="async"></script>
--%>    </div></div>
    </div>
    </td>
    <td>
     <TraR21:Right ID="TRight21" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF21:Foot ID="TFoot21" runat="server" />
    </td></tr>
    </table>
  
   
    </div>
    
    </form>
</body>
</html>


