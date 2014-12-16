<%@ Page Title="" Language="C#" MasterPageFile="~/industravels/new/Travelinnermaster.master" AutoEventWireup="true" CodeFile="Next5.aspx.cs" Inherits="Next5" %>
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
Three Helpful Tips new  
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
* We travelled on a South Pacific cruise in mid-January [summer].
The first item I bought on day one was a warm jumper (mistake). No matter what time of year or destination, it gets cold out on the ocean - especially when the wind springs up. Pack something warm to wear! When buying duty-free alcohol or cigarettes while in port, be aware that the goods will be sent to the ship and held until your last night aboard. 
</p>

<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*  When choosing a deck, it is a good idea to be close to the laundry and purser's office. You can get in early to do your washing [there'll be a line up]. The PO is usually busy and you may need to go there multiple times for various reasons. 
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Beware of Cheap Excursions 
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*Although you may find the shore excursions cheaper through local sources compared to the cruise lines excursions desks, you may end up stranded - or at the least taken advantage of. The cruise lines check out the companies they contract with, and you are much safer using one recommended by the cruise line or a company your travel agent is familiar with.
</p>
<br />
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Removable Hooks a Useful Item 
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
*In addition to taking a bunch of wire hangers, I take 2 of the 3M removeable plastic hooks. They are useful in the bathroom and come off without leaving a mark.
</p>

<div class="next_pages"><ul><li><a href="#">Next</a></li></li><li><a href="Next1.aspx">1</a></li><li><a href="Next2.aspx">2</a></li><li><a href="Next3.aspx">3</a></li><li><a href="Next4.aspx">4</a></li><li><a href="Next5.aspx">5</a></li><li><a href="Next6.aspx">6</a></li><li><a href="Next7.aspx">7</a></li><li><a href="Next8.aspx">8</a></li><li><a href="Next9.aspx">9</a></li><li><a href="Next10.aspx">10</a></li></ul></div> 
</div>
<travelright:right ID ="travelright1" runat ="server" /><!--contain_right-->
</div>
</asp:Content>

