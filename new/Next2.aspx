<%@ Page Title="" Language="C#" MasterPageFile="~/industravels/new/Travelinnermaster.master" AutoEventWireup="true" CodeFile="Next2.aspx.cs" Inherits="Next2" %>

<%@ Register Src="~/industravels/new/User Control/travelleftmenu.ascx" TagName="left" TagPrefix="traveleleft" %>
<%@ Register Src="~/industravels/new/User Control/travelright.ascx" TagName="right" TagPrefix="travelright" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="contain">
<traveleleft:left ID ="traveleft1" runat ="server" />
<div class="contain_center">
<h1 style="color:#5d5d5d; font-size:16px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px;">TRAVEL TIPS </h1>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*If you are not delayed, you can use this slack time to eat at the airport, where the food is likely many times better than what you may (or may not!) get in the air. (Most major American airports do not require a re-screening if you are merely changing flights, as long as you don't leave the secure area.)
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Baggage Care and Attention 
</p>

<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
* When you claim your bag at the airport, check it over before you leave the bag claim area.Look for any new damage on the bag, and to be sure that it was not opened and something taken (airlines have time limits for when these can be reported, and they will need to see the damage before opening the claim for damage or pilferage). The baggage service desk for the airline is normally right in the claim area; this is also true for Customs arrivals. It is especially important to fill out the misplaced baggage information before leaving Customs, as Customs will have special forms that may help the baggage clear without your presence at the airport. If you have combination locks or keys for the baggage, these should be left with the paperwork for your baggage - as it will prevent delays in getting your bag or possible bag damage from Customs opening the bag.
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Christmas Traveling Tips 
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*Before you leave, call the airline and reconfirm your flight(s) and leave a phone number where you can be reached. Once you arrive at your destination, contact the airline again and reconfirm your return flight and leave a phone number where you can be reached.
</p>

<div class="next_pages"><ul><li><a href="#">Next</a></li><li><a href="Next1.aspx">1</a></li><li><a href="Next2.aspx">2</a></li><li><a href="Next3.aspx">3</a></li><li><a href="Next4.html">4</a></li><li><a href="Next5.aspx">5</a></li><li><a href="Next6.aspx">6</a></li><li><a href="Next7.aspx">7</a></li><li><a href="Next8.aspx">8</a></li><li><a href="Next9.aspx">9</a></li><li><a href="Next10.aspx">10</a></li></ul></div> 
</div>
<travelright:right ID ="travelright1" runat ="server" /><!--contain_right-->
</div>
</asp:Content>

