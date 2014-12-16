<%@ Page Title="" Language="C#" MasterPageFile="~/industravels/new/Travelinnermaster.master" AutoEventWireup="true" CodeFile="Next10.aspx.cs" Inherits="Next10" %>

<%@ Register Src="~/industravels/new/User Control/travelleftmenu.ascx" TagName="left" TagPrefix="traveleleft" %>
<%@ Register Src="~/industravels/new/User Control/travelright.ascx" TagName="right" TagPrefix="travelright" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="contain">
<traveleleft:left ID ="traveleft1" runat ="server" />
<div class="contain_center">
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Need Directions? 
</p> 

<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*When visiting a foreign city, carry a matchbook or postcard with the name and address of your hotel, which you can show to taxi drivers or when asking directions. This is particularly important in countries like Greece, where the alphabet is different.
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Pack Items to Give Away

</p>

<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*I've been working as a guide for 18 years. When I've taken folks to developing countries they kind heartedly wanted to give money or candy to the local children. Over the years I've returned to places where a traveler used to be able to wander down a street and not be swarmed by children begging for sweets or change, whereas now that has changed.
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Sample Local Foods 
</p>

<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*While traveling to foreign countries, make sure you try the local foods - and please do not compare everything to home (prices, quality etc.) because you are not home.
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">Use Credit Cards When Possible  </p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">*  You will get the best exchange rate for foreign currency from an ATM. If you must have local money on arrival, exchange only as much as you will need at the airport on departure or arrival,then use ATMs while you are in the country. </p>

<div class="next_pages"><ul><li><a href="#">Next</a></li></li><li><a href="Next1.aspx">1</a></li><li><a href="Next2.aspx">2</a></li><li><a href="Next3.aspx">3</a></li><li><a href="Next4.aspx">4</a></li><li><a href="Next5.aspx">5</a></li><li><a href="Next6.aspx">6</a></li><li><a href="Next7.aspx">7</a></li><li><a href="Next8.aspx">8</a></li><li><a href="Next9.aspx">9</a></li><li><a href="Next10.aspx">10</a></li></ul></div> 
</div>
<travelright:right ID ="travelright1" runat ="server" /><!--contain_right-->
</div>
</asp:Content>

