<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="industravels_new_Contact" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH4" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF4" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL4" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR4" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Contact::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%><link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/ContactPage.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH4:Head ID="THead4" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td>
     <TraL4:Left ID="TLeft4" runat="server" />  
    </td>
    <td valign="top" class="col">
    <div class="contain_center" >
<table width="100%">
<%--<tr style="height:30px">
<td height="18"  colspan="3"><span style="font-size:14px; font-weight:bold;"> Contact Page</span></td>
</tr>
<tr style="height:1px; width:100%">
<td  height="1" bgcolor="red" colspan="3"></td>
</tr>--%>
<tr><td><h1 style="color:#09F; text-decoration:underline; height:10px; font-family:Arial, Helvetica, sans-serif; font-size:12px; left:5px;">Global Head Quarters</h1></td></tr>
<tr style="height:19px">
<td height="19" colspan="3">
<div align="center">
<span class="style19">Indus Travels & Tours.</span>
<br />
</div>
</td>
</tr>
<tr style=" height:10px">
<td width="35%" height="10"></td>
<td width="4%" height="10"></td>
<td width="52%" height="10"></td>
</tr>
<tr>
<td width="35%" valign="top">
<div class="style28" align="right"> Address:</div>
</td>
<td width="4%"> </td>
<td class="indus_travels_ssheet" width="52%" valign="top">
<div class="style31" align="left">
<span class="style15">
<span class="style28">
1033 Sterling Road, Ste. 204,
<br/>
Herndon-VA-20170. USA.
<br/>
Washington DC Metro Area.
</span>
</span>
</div>
</td>
</tr>
<tr>
<td width="35%">
<div class="style28" align="right"> Voice:</div>
</td>
<td width="4%"> </td>
<td width="52%">
<div class="indus_travels_ssheet style19 style25" align="left"> 703-574-3278</div>
</td>
</tr>
<tr>
<td width="35%">
<div class="style28" align="right"> Fax:</div>
</td>
<td width="4%"> </td>
<td class="indus_travels_ssheet style17" width="52%">
<div class="style25" align="left"> 703-842-8746 </div>
</td>
</tr>
<tr style="height:16px">
<td width="35%" height="13">
<div align="right">
<span class="style28">E-mail:</span>
</div>
</td>
<td width="4%" height="13"></td>
<td class="mail" width="52%" height="13">
<div align="left">
<a href="mailto:travels@industravels.com" style="color:#CC0000;font-family: Verdana, Arial; font-weight:bold;font-size:12px;">
<b>travels@industravels.com</b>
</a>
</div>
</td>
</tr>
<tr style="height:18px">
<td height="18"></td>
<td height="18"></td>
<td height="18"></td>
</tr>
<tr>
<td colspan="5">
<%--<div align="center">
<span class="style30">
**** Let your journey begin with us*****
<br>
Please call us to help you plan your next trip!!!
<br>
To serve you better, we are open Monday to Friday 9.00AM to 6.00PM (EST)
<br>
Saturday 9.00AM to 1.00PM Sunday Holiday.
</span>
</div>--%>
<div style="height:20px;">
</div>
</td>
</tr>
<tr style="height:1; width:100%">
<td  height="1" bgcolor="red" colspan="3"></td>
</tr>
<tr><td style="padding-top:10px"><h1 style="color:#09F; text-decoration:underline; font-family:Arial, Helvetica, sans-serif;font-size:12px;left:5px;">India Office</h1></td></tr>
<tr style="height:19px">
<td height="19" colspan="3">
<div align="center">
<span class="style19">Indus Travels & Tours</span>
<span class="style21">
<b />
</span>
<strong>(A Division of Ace Indus Tech-Sol India Pvt Ltd.,)</strong>
</div>
</td>
</tr>
<tr style="height:10px ">
<td width="35%" height="10"></td>
<td width="4%" height="10"></td>
<td width="52%" height="10"></td>
</tr>
<tr>
<td width="35%" valign="top">
<div class="style28" align="right"> Address:</div>
</td>
<td width="4%"> </td>
<td class="indus_travels_ssheet" width="52%" valign="top">
<div class="style31" align="left">
<span class="style15">
<span class="style28">
Plot # 1323, Behind Saradhi Studios,
<br />
Ameerpet, Yellareddyguda,
<br />
Hyderabad-AP-500073. India.
</span>
</span>
</div>
</td>
</tr>
<tr>
<td width="35%">
<div class="style28" align="right"> Voice:</div>
</td>
<td width="4%"> </td>
<td width="52%">
<div class="indus_travels_ssheet style19 style25" align="left"> 040-66736226</div>
</td>
</tr>
<tr>
<td width="35%">
<div class="style28" align="right"> Fax:</div>
</td>
<td width="4%"> </td>
<td class="indus_travels_ssheet style17" width="52%">
<div class="style25" align="left"> 040-66136446</div>
</td>
</tr>
<tr style="height:16px">
<td width="35%" height="13">
<div align="right">
<span class="style28">E-mail:</span>
</div>
</td>
<td width="4%" height="13"></td>
<td class="mail" width="52%" height="13">
<div align="left">
<a href="mailto:travels@industravels.com" style="color:#CC0000;font-family: Verdana, Arial; font-weight:bold;font-size:12px;">
<b>hyd@industravels.com</b>
</a>
</div>
</td>
</tr>
<tr style="height:18px">
<td height="18"></td>
<td height="18"></td>
<td height="18"></td>
</tr>
<tr style="height:1px; width:100%">
<td  height="1" bgcolor="red" colspan="3"></td>
</tr>
<tr>
<td colspan="5">
<div align="center" style="padding-top:25px;">
<span class="style30">
**** Let your journey begin with us*****
<br />
Please call us to help you plan your next trip!!!
<br />
To serve you better, we are open Monday to Friday 9.00AM to 6.00PM(IS)
<br />
Saturday 9.00AM to 1.00PM Sunday Holiday.
</span>
</div>
</td>
</tr>
</table>

   </div>
    </td>
    <td>
     <TraR4:Right ID="TRight4" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF4:Foot ID="TFoot4" runat="server" />
    </td></tr>
    </table>
  
   
    </div>
    
    </form>
</body>
</html>
