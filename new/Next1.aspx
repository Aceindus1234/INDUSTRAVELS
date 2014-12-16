<%@ Page Title="" Language="C#" MasterPageFile="~/industravels/new/Travelinnermaster.master" AutoEventWireup="true" CodeFile="Next1.aspx.cs" Inherits="Next1" %>

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
Advance Attention to Safety 
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*When boarding the aircraft, make a mental note of all exits, and count how many seat rows you pass
Unlike Bonine, another over-the-counter drug, it tends to make one drowsy. I feel that this is a benefit on a long plane ride! Another motion sickness treatment (usually used for boating) is Scopolamine patches. These patches go behind the ear, and usually have no noticeable side effects. I believe that in the USA, a prescription is required. Furthermore, there can be unpleasant side effects, such as dry mouth, blurry vision, and one other one that forget. (Oh yeah - loss of memory.) 
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
* Motion sickness is caused in part by a discrepancy between what the eye sees and what the inner ear feels. (This is why the driver of a car gets sick much less frequently than a passenger: the driver is continuously watching the road, getting a good idea of what is coming next.) It may help to close your eyes the moment you start to consider thinking about getting airsick.
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Allow for Delays Between Flights 
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*Avoid booking flight segments close together. Major airlines consider a connection as tight as 35 minutes to be a valid connection, but this is often not enough time if there are long lines at security! If travel time is not critical, consider allowing at least 2 hours to make each connection.
</p>

<div class="next_pages"><ul><li><a href="#">Next</a></li><li><a href="Next1.aspx">1</a></li><li><a href="Next2.aspx">2</a></li><li><a href="Next3.aspx">3</a></li><li><a href="Next4.aspx">4</a></li><li><a href="Next5.aspx">5</a></li><li><a href="Next6.aspx">6</a></li><li><a href="Next7.aspx">7</a></li><li><a href="Next8.aspx">8</a></li><li><a href="Next9.aspx">9</a></li><li><a href="Next10.aspx">10</a></li></ul></div> 
</div><!--contain_left-->
<travelright:right ID ="travelright1" runat ="server" /><!--contain_right-->
</div>
</asp:Content>

