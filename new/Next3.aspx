<%@ Page Title="" Language="C#" MasterPageFile="~/industravels/new/Travelinnermaster.master" AutoEventWireup="true" CodeFile="Next3.aspx.cs" Inherits="Next3" %>

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
*We don’t care what anyone tells you, it is important to reconfirm your flights. Way too many air travelers have had way too many trips interrupted or ruined by airline schedule changes, lost reservations or reservation errors than anyone in the airline / travel industry will ever admit! Trust us on this one folks! Reconfirm! Reconfirm! Reconfirm! Get to the airport early (2 1/2 hours before domestic flights and 3 1/2 hours before international flights).
If you are planning to carry-on gifts, make sure they are unwrapped, or they will be unwrapped for you at security. 
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Getting the Meal You Want 
</p>

<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*  On long international flights, there are usually one or more meals served and two meal choices to select from. If the flight is crowded and you are one of the last passengers served, you can bet your choice of meal won't be available. This can be a problem if you're on a long flight and the only meal selection available is something you don't like.
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*To ensure your choice is available, when you check in request a seat toward the back of the plane as the meal service tends to start there. Or better yet, request a special meal such as children's or vegetarian when you book your travel. You'll get the meal of your choice and be served first.
</p>


<div class="next_pages"><ul><li><a href="#">Next</a></li><li><a href="Next1.aspx">1</a></li><li><a href="Next2.aspx">2</a></li><li><a href="Next3.aspx">3</a></li><li><a href="Next4.aspx">4</a></li><li><a href="Next5.aspx">5</a></li><li><a href="Next6.aspx">6</a></li><li><a href="Next7.aspx">7</a></li><li><a href="Next8.aspx">8</a></li><li><a href="Next9.aspx">9</a></li><li><a href="Next10.aspx">10</a></li></ul></div> 
</div><!--contain_left-->
<travelright:right ID ="travelright1" runat ="server" /><!--contain_right-->
</div>
</asp:Content>
