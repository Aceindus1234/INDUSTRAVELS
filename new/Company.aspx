<%@ Page Title="" Language="C#" MasterPageFile="~/industravels/new/Travelinnermaster.master" AutoEventWireup="true" CodeFile="Company.aspx.cs" Inherits="Company" %>

<%@ Register Src="~/industravels/new/User Control/travelleftmenu.ascx" TagName="left" TagPrefix="traveleleft" %>
<%@ Register Src="~/industravels/new/User Control/travelright.ascx" TagName="right" TagPrefix="travelright" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<traveleleft:left ID ="traveleft1" runat ="server" />
<div class="contain_center">
<h1 style="color:#5d5d5d; font-size:16px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px;">Indus Travels is your Global Travel partner.</h1>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
We are a leading travel company offering the cheapest flights worldwide. Our partners and agencies are all Airlines Reporting Agency (ARC) and International Air Transport Association (IATA) affiliated to ensure the highest level of travel professionalism and quality.</p>

<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
We provide our clients with the most competitive airfares from all the major airlines with departures from Europe, USA, Asia, Africa, Australia and South America.  Clients can use our database free of charge, 24 hours a day, 365 days a year to search for your flights. Our experienced staff is just a phone call away to help you with all you travel needs. 
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
We at Indus Travel also specialize in tailor made trips to Asia, Africa, Orient and the rest of the World. Each year we are inspired anew to explore the world's breathtaking diversity in the best way possible. And with our Classic Tours, Women's Adventures, Special Departures, and Family Adventures, we are offering more opportunities to do so than ever before. As a company, we often focus on our staff, worldwide guides, and partners as contributors to our success; all are so very important. 
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Credit for the highlights of the travel year, however, really rests with our guests - for your spirit of adventure, and the generous communication that helps us chart a course toward enriching travel experiences. Our dedication to continually improving our guests' experience is directly influenced by the comments you share with us through trip surveys, conversations, and written feedback Our expert staff brings you years of vast experience and you can be assured that we treat your vacation as our own. 
</p>
</div>
<travelright:right ID ="travelright1" runat ="server" />
</asp:Content>

