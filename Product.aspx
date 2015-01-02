<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="industravels_new_Product" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH8" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF8" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL8" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR8" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Products::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%><link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.clp{color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin:5px 5px 0px 10px; line-height:20px;}
.h3{color:#C62731}
.hrl{border:1px solid #CBC6C4;}
 .h4{text-decoration:underline; color:#4E81B3; padding-left:5px;}
 .uls{list-style:square;}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH8:Head ID="THead8" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td>
     <TraL8:Left ID="TLeft8" runat="server" />  
    </td>
    <td valign="top" class="col">
    <div class="contain_center">
    <h3 class="h3">Products & Services</h3><hr  class="hrl" />
<p class="clp" >
Indus Travels Inc is dedicated to making your travel arrangements as convenient as possible. Please come and join us and take advantage of our exceptional travel products and services and discover the joys of hassle-free planning and worry-free traveling. We will try our best to make your trip a memorable one.</p>
<br />
<p class="clp" >
Indus Travels Inc offers comprehensive travel services for various associations, colleges, corporations, meetings, universities and leisure travelers.
</p>
<br />
<p class="clp" >
With a skilled and experienced team of customer service representatives, our team at <b> <a href="Default.aspx">Indus Travels</a> </b> assures you the best of services. Our caring and committed team, are eager to offer seamless travel solutions to our esteemed customer’s world-wide. 
</p>
<br />
<p class="clp" >
Having a decade of experience in the travel industry and having being served diverse customers globally, we are at a position to easily solve travel related queries of our valued customers. With a team who have got a keen insight on the effective functioning of global air ticketing and other travel related services, we are here to astound you by our services.   
</p>
<br />
&emsp;<h5 class="h4">Our Services Include:</h5>
<ul class="uls">
<li class="clp">
	Air ticketing for all the major airlines (Domestic & International)
</li>
<li class="clp">
	Bus and Train Ticket Booking (Domestic)
</li>
<li class="clp">
	Passport and Visa assistance 
</li>
<li class="clp">
	Hotel Booking (Domestic & International)
</li><li class="clp">
	Both domestic and international travel packages, which include student, holiday, adventure, honeymoon, spiritual sojourn, <br />business packages and finally cruise tours.   
</li>
<li class="clp">
	Cruises at attractive rates. 
</li>
<li class="clp">
Travel Insurance with different options based on your requirements.
</li>
 </ul>


</div>
    </td>
    <td>
     <TraR8:Right ID="TRight8" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF8:Foot ID="TFoot8" runat="server" />
    </td></tr>
    </table>
  
   
    </div>
    
    </form>
</body>
</html>

