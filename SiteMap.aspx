<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SiteMap.aspx.cs" Inherits="industravels_SiteMap" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH28" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF28" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL28" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR28" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Site-Map::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%><link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script type="text/javascript" src="js/jquery1-1.8.3(1).js"></script>
  <style type="text/css">
   .sitemaplinks { border:none;}

.sitemaplinks a:hover { color:#F00;}
.hrs{border:1px solid  #E4CFCF;}
.tabdiv{border-right:1px dotted gray; padding:10px 0px 0px 5px;}
.tabdiv2{ padding:10px 0px 0px 20px;}
.imgs{height:9px; width:13px;}
.uls{padding-left:50px; list-style:square;}
.uls li{padding-top:1px;}
.topb{color:#9F0707; font-size:12px;}
.topb a{color:#9F0707; font-size:12px;}
.inb{color:#0C67A5;}
h3{color:#F00; }
   </style>       
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH28:Head ID="THead28" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td valign="top">
     <TraL28:Left ID="TLeft28" runat="server" />  
    </td>
    <td valign="top" class="col">
   <div class="contain_center" >
   <h3 > Site Map </h3>        
   <hr class="hrs" />
 
<table border="0" width="100%" >
  <tbody>
  <tr>
    <td   valign="top" width="50%">
    <div class="tabdiv">
   <img src="images/7.gif" class="imgs" alt=">"/><a href="Default.aspx"> <b class="topb">  Home </b></a> <br/>
    &emsp;&emsp;&emsp;<b class="inb"> Inbound Tours</b><br/>
   
    <ul class="uls">
    <li><a href="PackageLocation.aspx?loc=Kashmir&type=Domes"><font style="font-weight:normal">Exotic Kashmir</font></a></li>
    <li><a href="PackageLocation.aspx?loc=Andaman&type=Domes"><font style="font-weight:normal">Experience Andamans</font></a></li>
    <li><a href="PackageLocation.aspx?loc=Golden Triangle&type=Domes"><font style="font-weight:normal">Golden Triangle Holiday</font></a></li>
    <li><a href="HolidaySpot.aspx?DestTheme=Heritage&regions=Domes"><font style="font-weight:normal">Heritage Travel India</font></a></li>
    <li><a href="PackageLocation.aspx?loc=Kerala&type=Domes"><font style="font-weight:normal">Scenic Kerala</font></a></li>
    </ul><br/>

    &emsp;&emsp;&emsp;<b class="inb">  Outbound Tours</b>
  
    <ul class="uls">
    <li><a href="PackageLocation.aspx?loc=Australia&type=inter"><font style="font-weight:normal">Australia Holiday Packages</font></a></li>
    <li><a href="HolidaySpot.aspx?type=FSSIGT&regions=inter"><font style="font-weight:normal"> Europe Tour Packages</font></a></li>
    <li><a href="PackageLocation.aspx?loc=NewZealand&type=inter"><font style="font-weight:normal">New Zealand Tour Packages</font></a></li>
    <li><a href="HolidaySpot.aspx?type=TMSI&regions=inter"><font style="font-weight:normal">South East Asia Tours</font></a></li>
    <li><a href="PackageLocation.aspx?loc=Srilanka&type=inter"><font style="font-weight:normal">Srilanka Tours</font></a></li>
</ul><br/>
 &emsp;  &emsp; &emsp; <b class="inb">Hotel Booking </b>
  
    <ul class="uls">
    <li><a href="#"><font style="font-weight:normal">France , Swiss Paris</font></a></li>
    <li><a href="#"><font style="font-weight:normal">Highlights Of Turkey</font></a></li>
   <%-- <li><a href="#"><font style="font-weight:normal">Hilights Of Turkey</font></a></li>--%>
    <li><a href="#"><font style="font-weight:normal">Hongkong With Macau Package</font></a></li>
    <li><a href="#"><font style="font-weight:normal">Luxury in Singapore </font></a></li>
    <li><a href="#"><font style="font-weight:normal">Maldives With Cochin Stopover </font></a></li>
</ul><br/>


&emsp; &emsp;&emsp; <b class="inb"> Travel Services</b>

     <ul class="uls">
     <li><a href="Default.aspx"><font style="font-weight:normal">Domestic and International Air Ticketing</font></a></li>
     <li><a href="HolidaySpot.aspx"><font style="font-weight:normal">Holiday Packages</font></a></li>
     <li><a href="VisitUSA.aspx"><font style="font-weight:normal">Passport and Visa Assistance</font></a></li>
     <li><a href="travelinsurence.aspx"><font style="font-weight:normal">Travel Insurance</font></a></li>
     <li><a href="Default.aspx"><font style="font-weight:normal">Rail and Bus Tickets</font></a></li> </ul><br/>


<img src="images/7.gif" class="imgs" alt=">"/>&nbsp;&nbsp;   <b class="topb"><a href="Company.aspx"> Company </a> </b> <br /><br />
<img src="images/7.gif" class="imgs" alt=">"/>&nbsp;&nbsp;   <b class="topb">  <a href="Product.aspx"> Products and Services </a>   </b>  <br /><br />
<img src="images/7.gif" class="imgs" alt=">"/>&nbsp;&nbsp;   <b class="topb"> <a href="HolidaySpot.aspx"> Holiday Packages </a> </b> <br /><br /><br />

</div>
  </td>
  <td valign="top">
  <div class="tabdiv2">
  <img src="images/7.gif" class="imgs" alt=">"/>&nbsp;&nbsp;   <b class="topb">  <a href="Cruises.aspx"> Cruises </a> </b> <br /><br />
 <img src="images/7.gif" class="imgs" alt=">"/>&nbsp;&nbsp; <b class="topb">Visas </b>
    
      <ul class="uls">
      <li><a href="VisitUSA.aspx"><font style="font-weight:normal">	Visit to USA</font></a></li>
      <li><a href="Visittoaustralia.aspx"><font style="font-weight:normal"> 	Visit to Australia</font></a></li>
      <li><a href="VisitUK.aspx"><font style="font-weight:normal">Visit to UK</font></a></li>
      <li><a href="VisitUAE.aspx"><font style="font-weight:normal">	Visit to UAE</font></a></li>
      <li><a href="VisitSingapore.aspx"><font style="font-weight:normal"> Visit to Singapore</font></a></li>
      <li><a href="VisitMalyasia.aspx"><font style="font-weight:normal"> Visit to Malaysia</font></a></li>
      <li><a href="VisitChina.aspx"><font style="font-weight:normal">	Visit to China</font></a></li></ul><br/>

  <img src="images/7.gif" class="imgs" alt=">"/>&nbsp;&nbsp;<b class="topb"> <a href="Travel.aspx">Travel Ideas</a></b> <br /><br />
<img src="images/7.gif" class="imgs" alt=">"/>&nbsp;&nbsp;<b class="topb"> <a href="Special.aspx">Special Offers</a></b><br /><br />
<img src="images/7.gif" class="imgs" alt=">"/>&nbsp;&nbsp;<b class="topb"> <a href="Careers.aspx">	Careers</a></b><br /><br />
<img src="images/7.gif" class="imgs" alt=">"/>&nbsp;&nbsp;<b class="topb"><a href="Contact.aspx">	Contact </a></b><br /><br />
<img src="images/7.gif" class="imgs" alt=">"/>&nbsp;&nbsp;<b class="topb"><a href="TravelFeedback.aspx"> 	Feedback</a></b><br /><br />
<img src="images/7.gif" class="imgs" alt=">"/>&nbsp;&nbsp;<b class="topb"> Other Links</b>

  <ul class="uls">
  <li>  <a href="TimeZone.aspx"><font style="font-weight:normal"> Time Zones</font></a></li>
     <li><a href="AirlineNumbers.aspx"><font style="font-weight:normal"> Airline Numbers</font></a></li>
     <li><a href="currency.aspx"><font style="font-weight:normal"> Currency</font></a></li>
     <li><a href="weather.aspx"><font style="font-weight:normal"> Weather </font></a></li>
     <li><a href="WeightConvertion.aspx"> <font style="font-weight:normal"> Weight Conversion</font></a></li>
     
     <li><a href="travelinsurence.aspx"><font style="font-weight:normal"> Travel Insurance</font></a></li>
     <li><a href="TermsConditions.aspx"><font style="font-weight:normal"> Terms and Conditions </font></a></li>
     <li><a href="advertise.aspx"> <font style="font-weight:normal"> Advertise</font></a></li>
        
     <li><a href="faq.aspx"><font style="font-weight:normal"> FAQ	</font></a></li>
     <li><a href="RouteMap.aspx"><font style="font-weight:normal"> Route Map </font></a></li>
    <%-- <li><a href="SiteMap.aspx"> <font style="font-weight:normal"> Site Map</font></a></li>--%>
     <li><a href="PrivacyPolicy.aspx"> <font style="font-weight:normal"> Privacy Policy</font></a></li>

     </ul><br/>

     </div>
  </td>
  </tr>
</tbody></table>

   <%--<img src="images/sitemap.png" width="925px" height="620px" />--%>
    </div>
    </td>
    <td valign="top">
     <TraR28:Right ID="TRight28" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF28:Foot ID="TFoot28" runat="server" />
    </td></tr>
    </table>
  
   
    </div>
    
    </form>
</body>
</html>


