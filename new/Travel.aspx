<%@ Page Title="" Language="C#" MasterPageFile="~/industravels/new/Travelinnermaster.master" AutoEventWireup="true" CodeFile="Travel.aspx.cs" Inherits="Travel" %>
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
AIR TRAVEL 
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Have Details When You Need Them new 
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
* Have a typed copy of all passport numbers with issue dates and expiry dates and dates of birth of children - so that you do not need to get out your passports or other documents when going through customs etc. You have the info. to complete the numerous forms without having to show where you keep your documents. Also, take a spare photo of all your family members to enable you to comply with any immigration or visa needs.
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
A Little Preparation ... 
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*I find that a combination of several common tips goes a long way toward preventing flying problems, or at least making them more tolerable. I go with one carry-on, make sure it's a little smaller than the minimum size, bring my own food and drink onto the plane, bring at least one good book if not two, eat in the airport before the flight, and get to the airport a little early. I've never had to check a bag, and I've never had missing or damaged luggage. I've never been bored during flight delays. I've never been hungry or thirsty on flights. A little preparation goes a long way.
</p>
<br />

<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">*If you do come down with discomfort, one relatively easy but embarrassing way to feel better is to empty your stomach. 'Barf bags' are usually located in the pouch on the back of the seat in front of you. Frequently, using them reduces and/or eliminates the discomfort.</p>
<div class="next_pages"><ul><li><a href="#">Next</a></li><li><a href="next1.html">1</a></li><li><a href="next2.html">2</a></li><li><a href="next3.html">3</a></li><li><a href="next4.html">4</a></li><li><a href="next5.html">5</a></li><li><a href="next6.html">6</a></li><li><a href="next7.html">7</a></li><li><a href="next8.html">8</a></li><li><a href="next9.html">9</a></li><li><a href="next10.html">10</a></li></ul></div> 
</div>
<travelright:right ID ="travelright1" runat ="server" /><!--contain_right-->
</div>
</asp:Content>

