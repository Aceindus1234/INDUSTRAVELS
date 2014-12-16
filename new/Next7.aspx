<%@ Page Title="" Language="C#" MasterPageFile="~/industravels/new/Travelinnermaster.master" AutoEventWireup="true" CodeFile="Next7.aspx.cs" Inherits="Next7" %>
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
Time in Port May Not be Long Enough  
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*We just returned from an 18-day cruise. We booked late, within the last week, and online. The itinerary quoted was 'ports of call' only. The duration at several ports of call was merely hours: 6 hours shortest, 8 hours longest. Not long enough to see anything UNLESS you splurge on the expensive tours. Traveller beware - check the time in port carefully, we would have enjoyed the trip more if we had more than a few hours in port.
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Seasick?  
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
* I'm a travel consultant, and have been for 10 years. Over the years people have asked me, 'I get seasick; what is the best category for me?' Most people think the higher up you go the better, and I always had a hard time explaining it to them; but one day I was watching a storm come in and was looking at the trees - and that is how I got this idea. I now tell people a ship is like a tree. When the wind blows and the tree is moving, where is the most motion? - at the top of the tree. The lower part of the tree is hardly moving at all. This has worked very well for me, and I have never received a complaint yet! 
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Stencil Your Luggage!  
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*I used to use ribbons or tape around the handles of our luggage, but so did everybody else. I purchased a stencil and a small pot of stencil paint from our local hardware store and stencilled every piece of our luggage with the same design. On our last cruise, our various pieces stood out from all the others. The chance that anyone else will have the exact same design in the exact same colours are remote.
</p>


<div class="next_pages"><ul><li><a href="#">Next</a></li></li><li><a href="Next1.aspx">1</a></li><li><a href="Next2.aspx">2</a></li><li><a href="Next3.aspx">3</a></li><li><a href="Next4.aspx">4</a></li><li><a href="Next5.aspx">5</a></li><li><a href="Next6.aspx">6</a></li><li><a href="Next7.aspx">7</a></li><li><a href="Next8.aspx">8</a></li><li><a href="Next9.aspx">9</a></li><li><a href="Next10.aspx">10</a></li></ul></div> 
</div>
<travelright:right ID ="travelright1" runat ="server" /><!--contain_right-->
</div>
</asp:Content>

