<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Careers.aspx.cs" Inherits="industravels_new_Careers" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH2" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF2" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL2" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR2" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Careers::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%><link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH2:Head ID="THead2" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td>
     <TraL2:Left ID="TLeft2" runat="server" />  
    </td>
    <td valign="top" class="col">
     <div class="contain_center" >
<h1 style="color:#0B2EC5; font-size:14px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; text-align:center; margin-top:25px;">Presently Jobs Are Not Avalaible Keep Visiting.....</h1>
</div>
    </td>
    <td>
     <TraR2:Right ID="TRight2" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF2:Foot ID="TFoot2" runat="server" />
    </td></tr>
    </table>
  
   
    </div>
    
    </form>
</body>
</html>
