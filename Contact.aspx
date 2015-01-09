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
<style type="text/css">
    .offset{color:#cc0000; text-decoration:underline; font-family:Arial, Helvetica, sans-serif;font-size:13px;left:5px;}
    .offset1{color:#2736c0;  font-family:Arial, Helvetica, sans-serif;font-size:12px;left:5px;}
    .hrs{border:1px dotted #09F;}
</style>
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
    <td valign="top">
     <TraL4:Left ID="TLeft4" runat="server" />  
    </td>
    <td valign="top" class="col">
    <div class="contain_center" >
    <div align="center">
<span class="style19">Indus Travels & Tours</span>
<br />
</div>
<table width="100%">
<tr style="height:1; width:100%">
<td  height="1" bgcolor="red" colspan="3"></td>
</tr>
<%--<tr style="height:30px">
<td height="18"  colspan="3"><span style="font-size:14px; font-weight:bold;"> Contact Page</span></td>
</tr>
<tr style="height:1px; width:100%">
<td  height="1" bgcolor="red" colspan="3"></td>
</tr>--%>
<tr><td><h1 class="offset" >Global Head Quarters</h1></td></tr>

<tr style=" height:10px">
<td width="47%" height="10"></td>
<td width="10" height="10"></td>
<td  height="10"></td>
</tr>
<tr>
<td  valign="top">
<div class="style28" align="right"> Address:</div>
</td>
<td > </td>
<td class="indus_travels_ssheet"  valign="top">
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
<td >
<div class="style28" align="right"> Voice:</div>
</td>
<td > </td>
<td >
<div class="indus_travels_ssheet style19 style25" align="left"> 703-574-3278</div>
</td>
</tr>
<tr>
<td >
<div class="style28" align="right"> Fax:</div>
</td>
<td > </td>
<td class="indus_travels_ssheet style17" width="52%">
<div class="style25" align="left"> 703-956-6769</div>
</td>
</tr>
<tr style="height:10px">
<td  height="10">
<div align="right">
<span class="style28">E-mail:</span>
</div>
</td>
<td  height="13"></td>
<td class="mail"  height="13">
<div align="left">
<a href="mailto:travels@industravels.com" style="color:#CC0000;font-family: Verdana, Arial; font-weight:bold;font-size:12px;">
<b>travels@industravels.com</b>
</a>
</div>
</td>
</tr>
<tr style="height:10px">
<td colspan="3"></td>
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
<div style="height:10px;">
</div>
</td>
</tr>
<tr style="height:1; width:100%">
<td  height="1" bgcolor="red" colspan="3"></td>
</tr>
<tr><td style="padding-top:10px"><h1 class="offset">India Office</h1></td></tr>
<tr><td valign="top">
<table width="100%">
<tr><td colspan="3" align="left"><span class="offset1" >&emsp;Hyderabad Office :</span></td></tr>

<tr style="height:10px ">
<td colspan="3"><hr class="hrs"/></td>
</tr>
<tr>
<td width="32%" valign="top">
<div class="style28" align="right"> Address:</div>
</td>
<td width="2%"> </td>
<td class="indus_travels_ssheet"  valign="top">
<div class="style31" align="left">
<span class="style15">
<span class="style28">
Plot # 1323, Behind Saradhi Studios,
<br />
Ameerpet, Yellareddyguda,
<br />
Hyderabad-Telangana-500073. India.
</span>
</span>
</div>
</td>
</tr>
<tr>
<td >
<div class="style28" align="right"> Voice:</div>
</td>
<td > </td>
<td >
<div class="indus_travels_ssheet style19 style25" align="left"> 040-66736226</div>
</td>
</tr>
<tr>
<td >
<div class="style28" align="right"> Fax:</div>
</td>
<td > </td>
<td class="indus_travels_ssheet style17" >
<div class="style25" align="left"> 040-66136446</div>
</td>
</tr>
<tr style="height:10px">
<td  height="10">
<div align="right">
<span class="style28">E-mail:</span>
</div>
</td>
<td  height="10"></td>
<td class="mail"  height="10">
<div align="left">
<a href="mailto:travels@industravels.com" style="color:#CC0000;font-family: Verdana, Arial; font-weight:bold;font-size:12px;">
<b>hyd@industravels.com</b>
</a>
</div>
</td>
</tr>
</table>
</td>
<td align="right">
<div style="height:200px; width:1px; border:1px dotted #09F;"></div>
</td>
<td valign="top">
<table width="100%">
<tr><td colspan="3" align="left"><span class="offset1" >&emsp;Vijayawada Office :</span></td></tr>

<tr style="height:10px ">
<td colspan="3"><hr class="hrs"/></td>
</tr>
<tr>
<td width="32%" valign="top">
<div class="style28" align="right"> Address:</div>
</td>
<td width="2%"> </td>
<td class="indus_travels_ssheet"  valign="top">
<div class="style31" align="left">
<span class="style15">
<span class="style28">
29-22-5 Narasimharao Naidu street,
<br />
Suryaraopeta, Vijayawada,
<br />
Andhrapradesh 520002. India.<br />

</span>
</span>
</div>
</td>
</tr>
<tr>
<td>
<div class="style28" align="right"> Voice:</div>
</td>
<td > </td>
<td >
<div class="indus_travels_ssheet style19 style25" align="left"> 0866-2444411</div>
</td>
</tr>
<tr>
<td >
<div class="style28" align="right"> Fax:</div>
</td>
<td > </td>
<td class="indus_travels_ssheet style17" >
<div class="style25" align="left"> 0866-2444425</div>
</td>
</tr>
<tr style="height:10px">
<td  height="13">
<div align="right">
<span class="style28">E-mail:</span>
</div>
</td>
<td  height="13"></td>
<td class="mail" height="13">
<div align="left">
<a href="mailto:vga@industravels.com" style="color:#CC0000;font-family: Verdana, Arial; font-weight:bold;font-size:12px;">
<b>vga@industravels.com</b>
</a>
</div>
</td>
</tr>
</table>
</td>
</tr>

<tr style="height:10px">
<td colspan="3"></td>
</tr>
<%--<tr style="height:1; width:100%">
<td  height="1" bgcolor="gray" colspan="3"></td>
</tr>--%>


<tr style="height:10px">
<td colspan="3"></td>
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
     <td valign="top">
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
