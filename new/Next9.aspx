<%@ Page Title="" Language="C#" MasterPageFile="~/industravels/new/Travelinnermaster.master" AutoEventWireup="true" CodeFile="Next9.aspx.cs" Inherits="Next9" %>
<%@ Register Src="~/industravels/new/User Control/travelleftmenu.ascx" TagName="left" TagPrefix="traveleleft" %>
<%@ Register Src="~/industravels/new/User Control/travelright.ascx" TagName="right" TagPrefix="travelright" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="contain">
<traveleleft:left ID ="traveleft1" runat ="server" />
<div class="contain_center" style="height:390px;">
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*This doesn't matter if you're a resident of Ukraine of the UK - to residents the water is safe, but not to travelers. All water contains different sets of microbes and mineral deposits, even in the US. If you aren't used to a country's drinking water, then you may get sick just because it is different. Be safe, buy bottled water cheap at the supermarket.
</p> 
<br /> 
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Cheaper Rail Passes 
</p>

<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*When traveling in Europe, it is cheaper to buy individual rail passes if you are only going to one or two countries, instead of buying a Eurail pass that covers eighteen. The individual one, such as the Swiss Pass or the France Rail/Drive, can give you much more for a better price.
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Check Your Room Before You Decide to Stay  
</p>

<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*When traveling to many third world countries, before paying for a room, make sure to look at the room first. Along the same lines, take a quick tour of the hotel before deciding to stay. Even though some of the hotels may be nice on the outside, what is on the inside is not always up to your standards.
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*write on the charge slip right away the amount, items, date, and place of purchase so YOU can read it when the statement comes at the end of the month. Makes for a lot easier bookkeeping. Many times the ink is so faint, you can't read what it says in any language.
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">Check Your Room Before You Decide to Stay </p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">*  When traveling to many third world countries, before paying for a room, make sure to look at the room first. Along the same lines, take a quick tour of the hotel before deciding to stay.</p>

<div class="next_pages"><ul><li><a href="#">Next</a></li></li><li><a href="Next1.aspx">1</a></li><li><a href="Next2.aspx">2</a></li><li><a href="Next3.aspx">3</a></li><li><a href="Next4.aspx">4</a></li><li><a href="Next5.aspx">5</a></li><li><a href="Next6.aspx">6</a></li><li><a href="Next7.aspx">7</a></li><li><a href="Next8.aspx">8</a></li><li><a href="Next9.aspx">9</a></li><li><a href="Next10.aspx">10</a></li></ul></div> 
</div>
<travelright:right ID ="travelright1" runat ="server" /><!--contain_right-->
</div>
</asp:Content>

