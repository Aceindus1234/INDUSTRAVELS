<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RouteMap.aspx.cs" Inherits="industravels_RouteMap" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH29" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF29" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL29" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR29" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Route-Map::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%><link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script type="text/javascript" src="js/jquery1-1.8.3(1).js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH29:Head ID="THead29" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td>
     <TraL29:Left ID="TLeft29" runat="server" />  
    </td>
    <td valign="top" class="col">
   <div class="contain_center" >
   <div style="height:615px; width:925px; overflow-y:scroll;">
<script src="//www.gmodules.com/ig/ifr?url=http://hosting.gmodules.com/ig/gadgets/file/114281111391296844949/driving-directions.xml&amp;up_fromLocation=Hyderabad,Telangana&amp;up_myLocations=Vijayawada,Andhrapradesh&amp;up_defaultDirectionsType=&amp;up_autoExpand=&amp;synd=open&amp;w=900&amp;h=610&amp;title=&amp;brand=light&amp;lang=en&amp;country=US&amp;border=%23ffffff%7C3px%2C1px+solid+%23999999&amp;output=js">
</script>
<script>
$('#submit').click(function() {
    document.getElementById("#tools_box").style.display="none";
    return false;
});
</script>
</div> 
    </div>
    </td>
    <td>
     <TraR29:Right ID="TRight29" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF29:Foot ID="TFoot29" runat="server" />
    </td></tr>
    </table>
  
   
    </div>
    
    </form>
</body>
</html>



