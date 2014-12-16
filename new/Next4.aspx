<%@ Page Title="" Language="C#" MasterPageFile="~/industravels/new/Travelinnermaster.master" AutoEventWireup="true" CodeFile="Next4.aspx.cs" Inherits="Next4" %>

<%@ Register Src="~/industravels/new/User Control/travelleftmenu.ascx" TagName="left" TagPrefix="traveleleft" %>
<%@ Register Src="~/industravels/new/User Control/travelright.ascx" TagName="right" TagPrefix="travelright" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="contain">
<traveleleft:left ID ="traveleft1" runat ="server" />
<div class="contain_center">
<h1 style="color:#5d5d5d; font-size:16px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px;">CRUISE TRAVEL  </h1>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Hurricane Season Cruises new 
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*If you're planning a Caribbean cruise from June through November you should know that you will be cruising during hurricane season. Why would you choose to cruise during hurricane season? Price is one reason. Typically your best deals are during the fall months from late August to mid December.
</p>

<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*  Statistically speaking, the chance that your particular cruise is going to be affected by a hurricane is slim. However, it does happen. Cruising during these months requires you to be flexible. Itineraries can be disrupted by even the mere threat of a storm. Usually the cruise line whose Eastern Caribbean itinerary appears to be in the path of the storm will simply switch over to the Western Caribbean schedule and vice versa. If the cruise line can't find a port, then the ship spends those days at sea. You will not get a refund for the missed ports of call, as the cruise lines reserve the right to change the itinerary. The cruise lines' strategy has always been to avoid a storm, and they have specific hurricane storm emergency response plans to help them do this.
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*Best thing to do if you're cruising during this time is to plan ahead. Arrive at the port of embarkation at least one day prior to departure in case difficulties arise, especially if you're cruising out of Florida. Also prepare for the possibility that you might arrive home a day or two late. The ship will wait out at sea if the hurricane is threatening Florida.
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*Buy insurance, whether through the cruise line or an independent provider - and make sure that the policy covers disruption in case of weather-related events. If the cruise is actually canceled, you will get a refund. However, it's very rare for the cruise lines to cancel a cruise
</p>

<div class="next_pages"><ul><li><a href="#">Next</a></li><li><a href="Next1.aspx">1</a></li><li><a href="Next2.aspx">2</a></li><li><a href="Next3.aspx">3</a></li><li><a href="Next4.aspx">4</a></li><li><a href="Next5.aspx">5</a></li><li><a href="Next6.aspx">6</a></li><li><a href="Next7.aspx">7</a></li><li><a href="Next8.aspx">8</a></li><li><a href="Next9.aspx">9</a></li><li><a href="Next10.aspx">10</a></li></ul></div> 
</div>
<travelright:right ID ="travelright1" runat ="server" /><!--contain_right-->
</div>
</asp:Content>

