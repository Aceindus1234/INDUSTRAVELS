<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Indus_header.ascx.cs" Inherits="usercontrols_Indus_header" %>
<style>
.non, .non ul li:hover
{
	
	border-top:0px; margin-top:2px; padding-top:0px;
}
.menu ul li
{
	padding-left:12.4px;
	padding-right:21px;
}

</style>
<a href="Default.aspx">
<div class="logo" >
<div class="inner">
<p style="color:#c40909; font-family:'Segoe UI'; font-size:16px;  margin-top:0px; font-weight:bold; margin-left:1023px; width:207px;">USA : 703-574-3278</p>
<p style="color:#c40909; font-family:'Segoe UI'; font-size:16px; top:-10px; font-weight:bold; margin-left:992px; width:212px; margin-top:-5px;">IND : +91 406-673-6226</p>
</div><!--inner-->
</div><!--logo--></a>
<div class="menu"  style="padding-top:-10px; padding-left:53px;">
<ul>
<li  id="lin1" runat="server" ><a href="Default.aspx">HOME</a></li>   
<li id="lin2" runat="server"><a href="Company.aspx">COMPANY </a></li>    
<li id="lin4" runat="server"><a href="Product.aspx">PRODUCTS & SERVICES</a></li>
<%--<li id="lin6" runat="server"><a href="Maps.aspx">Maps </a></li>--%> 
<li id="lin6" runat="server"><a href="HolidaySpot.aspx">HOLIDAY PACKAGES </a></li> 
<li id="lin5" runat="server"><a href="Cruises.aspx">CRUISES </a></li>  
<li id="lin11" runat="server"><a href="#"> VISAS</a>
<div class="non">
<ul  style="left:580px;border-top:0px ; margin-top:0px; padding-top:0px; " >
  <%--   <li> <a href="VisitIndia.aspx"> Visit To India </a> </li>--%>
      <li> <a href="VisitUSA.aspx"> Visit To USA </a> </li>
       <li> <a href="Visittoaustralia.aspx"> Visit To Australia </a> </li>
        <li> <a href="VisitUK.aspx">Visit To UK </a> </li>
         <li> <a href="VisitUAE.aspx"> Visit To UAE </a> </li>
        <li> <a href="VisitSingapore.aspx">Visit To Singapore </a> </li>
        <li> <a href="VisitMalyasia.aspx">Visit To Malaysia </a> </li>
        <li> <a href="VisitChina.aspx">Visit To China </a> </li>
         <%--<li> <a href="#">Visas From India </a> </li>--%>
    </ul>
    </div>
</li>
<li id="lin10" runat="server"><a href="Travel.aspx">TRAVEL IDEAS</a></li>
<li id="lin7" runat="server"><a href="Special.aspx">SPECIAL OFFERS</a></li>
<%--<li id="lin9" runat="server"><a href="Forms.aspx">FORUMS</a></li> 
--%>
<li id="lin3" runat="server"><a href="Careers.aspx">CAREERS </a></li> 
<li id="lin12" runat="server"><a href="Contact.aspx">CONTACT </a></li>
<li id="lin8" runat="server"><a href="TravelFeedback.aspx">FEEDBACK</a></li>
<%--<li id="lin8" runat="server"><a href="Airfare.aspx">Airfare</a></li> 
--%>
</ul>
</div><!--menu-->
<div class="menu_bellow" >
<%--<p style="color:#f4e5e5; font-size:14px; font-family:'Segoe UI'; line-height:31px;
margin-left:85px; float:left;"><span style="color:#f6ff00; font-size:14px; font-family:Segoe UI; font-weight:bold;">Register</span> for <span style="color:#ffffff; font-size:14px; font-family:'Segoe UI'; font-weight:bold;">Quick Book</span> & get up to $ 500 off on flights & hotels </p>
--%><div class="social_networks">
<li><img alt="Indus Image" src="images/folloewr.png" style="margin-top:10px;"/></li>
<li><a href="https://www.facebook.com/Industravelsandtours" target="_blank"><img alt="Indus Image" src="images/fb.png" style="margin-top:7px; margin-left:5px; "/></a></li>
<li><a href="https://www.linkedin.com/in/industravelsandtours" target="_blank"><img alt="Indus Image" src="images/in.png" style="margin-top:7px; margin-left:5px;" /></a></li>
<li><a href="https://twitter.com/industravel9" target="_blank"><img alt="Indus Image" src="images/twiter.png"  style="margin-top:7px; margin-left:5px;"/></a></li>
</div><!--social_networks-->
</div><!--menu_bellow-->

<%--<div class="social_networks">
<li><a href="#"><img alt="Indus Image" src="images/folloewr.png" style="margin-top:0px; margin-left:490px; "/></a></li>
<li><a href="#"><img alt="Indus Image" src="images/fb.png" style="margin-top:-6px; margin-left:5px;"/></a></li>
<li><a href="#"><img alt="Indus Image" src="images/in.png" style="margin-top:-6px; margin-left:5px;" /></a></li>
<li><a href="#"><img alt="Indus Image" src="images/twiter.png"  style="margin-top:-6px; margin-left:5px;"/></a></li>
</div>--%>




<div class="banner" style="margin-top:6px;"> 

<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="1280" height="257" id="FlashID3" title="Indus Travels & Tours">
  <param name="movie" value="images/text1_flash.swf" />
  <param name="quality" value="high" />
  <param name="wmode" value="opaque" />
  <param name="swfversion" value="6.0.65.0" />
  <!-- This param tag prompts users with Flash Player 6.0 r65 and higher to download the latest version of Flash Player. Delete it if you don’t want users to see the prompt. -->
  <param name="expressinstall" value="Scripts/expressInstall.swf" />
  <!-- Next object tag is for non-IE browsers. So hide it from IE using IECC. -->
  <!--[if !IE]>-->
  <object type="application/x-shockwave-flash" data="images/text_flash.swf" width="1280" height="256">
    <!--<![endif]-->
    <param name="quality" value="high" />
    <param name="wmode" value="opaque" />
    <param name="swfversion" value="6.0.65.0" />
    <param name="expressinstall" value="Scripts/expressInstall.swf" />
    <!-- The browser displays the following alternative content for users with Flash Player 6.0 and older. -->
    <div>
      <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>
      <p><a href="http://www.adobe.com/go/getflashplayer"><img alt="Indus Image" src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" width="112" height="33" /></a></p>
    </div>
    <!--[if !IE]>-->
  </object>
  <!--<![endif]-->
</object>
</div><!---->
<hr  />
