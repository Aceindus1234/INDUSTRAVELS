<%@ Page Language="C#" AutoEventWireup="true" CodeFile="currency.aspx.cs" Inherits="industravels_currency" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH23" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF23" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL23" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR23" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Currency-Convertor::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%><link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script type="text/javascript" src="js/jquery1-1.8.3(1).js"></script>
<style>

.gcw_main1693401951{width:450px;font-family:Trebuchet MS,Tahoma,Verdana,Arial,sans-serif;font-size:11px;border:#A6C9E2 1px solid;text-align:center;color:#000000;background-color:#FCFDFD;margin:0 auto;}
.gcw_header1693401951{margin:2px;padding:9px;text-align:center;border:#4297D7 1px solid;background-color:#5C9CCC;}
#ccw_cnhfybwf1693401951{text-decoration:none;color:#FFFFFF;font-size:13px;font-weight:bold;}
.gcw_input1693401951{color:#2E6E9E;font-weight:bold;background-color:#FCFDFD;
                     border:#C5DBEC 1px solid;text-align:right;padding:2px 0;
                     margin:1px 0;display:inline;font-size:11px; width:150px;}
.gcw_select1693401951{color:#000; display:inline; width:400px;}
#gcw_date1693401951{font-size:10px;color:#2E6E9E;}

select,input
{
	border:1px solid gray;	
}

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH23:Head ID="THead23" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td valign="top">
     <TraL23:Left ID="TLeft23" runat="server" />  
    </td>
    <td valign="top" class="col">
   <div class="contain_center" >    
<h1 style="color:#5d5d5d; font-size:16px; font-family:Arial, Helvetica, sans-serif; width:905px; margin-bottom:8px;
text-align:justify; margin-left:15px; margin-top:5px;" >Currency Information :</h1>

<iframe src="http://www.exchangerates.org.uk/widget/ER-LRTICKER.php?w=920&s=1&mc=USD&mbg=F0F0F0&bs=yes&bc=000044&f=verdana&fs=10px&fc=000044&lc=000044&lhc=FE9A00&vc=FE9A00&vcu=008000&vcd=FF0000&"
 width="920"  height="35" frameborder="0" scrolling="no" marginwidth="0" marginheight="0"> </iframe></div>
   <table width="100%">
   <tr>
   <td >
   <%--<div style="width:180px;margin:0;padding:0;border:1px solid #CBCBCB;background:#fff;">
<div style="width:180px;text-align:center;padding:2px 0px;vertical-align:middle;color:#003366;font-family:arial;font-size:11px;font-weight:bold;">
	<a style="color:#003366;text-decoration:none;text-transform:uppercase;font-family:arial;font-size:11px;font-weight:bold;"
	 href="#" target="_new">Live Exchange Rates</a>
</div>
<div style="padding:0px;text-align:center;">
<script type="text/javascript">	
var tz = '-6';
var mc = 'USD';
var nb = '15';
var c1 = 'INR';
var c2 = 'GBP';
var c3 = 'AUD';
var c4 = 'JPY';
var c5 = 'RUB';
var c6 = 'CAD';
var c7 = 'ZAR';
var c8 = 'NZD';
var c9 = 'SGD';
var c10 = 'CNY';
//var c11 = 'PKR';
//var c12 = 'SAR';
//var c13 = 'LKR';
//var c14 = 'SYP';
//var c15 = 'CHF';
var bc = 'Base Currency';
var lc = '003366';
var bdrc = 'CBCBCB';

</script>
<script type="text/javascript" src="http://www.currency.me.uk/remote/FE-FERT-1.php"></script>
</div></div>--%>
<%--<script src="//www.gmodules.com/ig/ifr?url=http://hosting.gmodules.com/ig/gadgets/file/118012755116368617704/currency49-b.xml&amp;synd=open&amp;w=450&amp;h=600&amp;title=Currency+Converter&amp;border=%23ffffff%7C0px%2C1px+solid+%23004488%7C0px%2C1px+solid+%23005599%7C0px%2C1px+solid+%230077BB%7C0px%2C1px+solid+%230088CC&amp;output=js"></script>
--%> 
<%--<div style="margin: 0px; padding: 0px; border: 2px solid rgb(136, 136, 136); 
    width: 450px; height:250px; background-color: rgb(255, 255, 255);" align="center" id="divIndus">
    <div style="width: 100%; border-bottom: 1px solid rgb(136, 136, 136); vertical-align:middle; 
         height:35px; margin: 0px; padding: 0px; text-align: center; color: rgb(0, 0, 0); background-color: #5C9CCC;" align="center"><br />
<a style="text-decoration: none;  font-weight: bold; text-align: center; font-family: Arial; 
     color: White; font-size:14px; cursor:none; margin-top:15px;" href="#" >Indus Currency Calculator</a></div><br />
     <script src="http://fx-rate.net/converter.php?layout=verticals&amount=1&tcolor=000000&default_pair=USD/INR" type="text/javascript"></script>
     </div>--%>                    
<%--<iframe width="450" height="550" frameborder="0" scrolling="no" allowtransparency="true"
 src="http://tools.fxempire.com/sidebar-quotes.php?instruments=1,2,4,3,19,21,88,89,35,87,95,92,97,106,107,108,1084,99,1100,102,98&width=450&height=580&text_color=333&text_hover_color=082F60"></iframe>                              
--%>

<div style="padding-top:10px;">
<iframe frameborder="0" scrolling="no" height="560" width="450" allowtransparency="true" marginwidth="0" marginheight="0"
 src="http://comrates.investing.com/index.php?pairs_ids=8830;8831;8832;8833;8834;8836;8848;8849;8851;8860;8861;8862;8869;8883;8891;8894;8910;8911;8912;8914;8915;8917;8988;13916;&header-text-color=%23FFFFFF&curr-name-color=%230059b0&inner-text-color=%23000000&green-text-color=%232A8215&green-background=%23B7F4C2&red-text-color=%23DC0001&red-background=%23FFE2E2&inner-border-color=%23CBCBCB&border-color=%23cbcbcb&bg1=%23F6F6F6&bg2=%23ffffff&open=show&change_in_percents=hide&last_update=hide"></iframe>
</div>
</td>
   <td>
   <div class='gcw_main1693401951' style="margin-top:-5px"><div class='gcw_header1693401951'>
   <a href='#' id='ccw_cnhfybwf1693401951'>Currency Converter</a></div><div id='gcw_rates1693401951'></div>
   <script src='http://www.freecurrencyrates.com/converter-widget?source=Yahoo%20Finance&width=400&currs=KWD,INR,USD,AUD,CNY,GBP,JPY,CHF,NZD,PKR,RUB,SGD,UAH,KMF,SAR,LKR,MXN,OMR,SYP&precision=2&language=en&flags=1&currchangable=1&firstrowvalue=1&id=1693401951'
    charset='UTF-8'></script></div>

   </td>
   </tr>
   </table>
    </td>
    <td valign="top">
     <TraR23:Right ID="TRight23" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF23:Foot ID="TFoot23" runat="server" />
    </td></tr>
    </table>
  
   
    </div>
    
    </form>
</body>
</html>

