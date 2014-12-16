<%@ Page Title="" Language="C#" MasterPageFile="~/industravels/new/Travelinnermaster.master" AutoEventWireup="true" CodeFile="Visittoaustralia.aspx.cs" Inherits="Visittoaustralia" %>
<%@ Register Src="~/industravels/new/User Control/travelleftmenu.ascx" TagName="left" TagPrefix="traveleleft" %>
<%@ Register Src="~/industravels/new/User Control/travelright.ascx" TagName="right" TagPrefix="travelright" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="contain">
<traveleleft:left ID ="traveleft1" runat ="server" />
<div class="contain_center" style="padding:5px; color:#666; line-height:20px;">

				<h2>Australia Immigration</h2>
                <img src="images/australia.png" width="141" height="104" align="left" style="margin:13px;" />
<br />
	<p> <b>Australia is the top immigration destination</b> not 
only because of the high standards of living, but also because of its 
cultural diversity, with approximately 1 in 4 Australians born overseas.  </p>

<p>What really makes Australia the top choice for immigrants worldwide 
is the Australia immigration system that has evolved into one of the 
best skill selection programs in the world. This is also one of the 
reasons why this country has not entered recession and is always 
welcoming immigrants who are looking for excellent job opportunities. </p>


<p>We provide personalised Australia immigration services to ensure you 
have everything you need to migrate to Australia easily.&nbsp; At Visas 
and Permits.com we make it our goal to help you choose the right 
Australia Visa, whether you’re looking to work, visit, study or migrate 
to Australia.</p>			
                 
       <div class="landingblocks">
		
						<div class="landingblock genie">
				<h3>Australia Visa Genie</h3>
				<p>I want to:</p>
			<!--	<select name="types" id="visaselect">
					<option selected="selected" value="">Choose one:</option>
					<option value="work-permit">Work in Australia</option>
					<option value="student-visa">Study in Australia</option>
					<option value="family-visa">Join my partner in Australia</option>
					<option value="family-visa">Join my children in Australia</option>
					<option value="business-visa">Start a business in Australia</option>
					<option value="business-visa">Open a Branch office in Australia</option>
					<option value="work-permit">Transfer an employee to Australia</option>
					<option value="visit-visa">Visit visa to Australia</option>
					<option value="work-permit">Work and Holiday in Australia</option>
					<option value="business-visa">Retire/invest in Australia</option>
									</select>-->
               <asp:DropDownList ID ="ddlvisit" runat ="server">
               <asp:ListItem Value="0" Text="Choose one"></asp:ListItem>
               <asp:ListItem Value ="work-permit" Text ="Work in Australia"></asp:ListItem>
               <asp:ListItem Value ="student-visa" Text ="Study in Australia"></asp:ListItem>
               <asp:ListItem Value ="family-visa" Text ="Join my partner in Australia"></asp:ListItem>
               <asp:ListItem Value ="family-visa" Text ="Join my children in Australia"></asp:ListItem>
               <asp:ListItem Value ="business-visa" Text ="Start a business in Australia"></asp:ListItem>
               <asp:ListItem Value ="business-visa" Text ="Open a Branch office in Australia"></asp:ListItem>
               <asp:ListItem Value ="work-permit" Text ="Transfer an employee to Australia"></asp:ListItem>
               <asp:ListItem Value ="visit-visa" Text ="Visit visa to Australia"></asp:ListItem>
               <asp:ListItem Value ="work-permit" Text ="Work and Holiday in Australia"></asp:ListItem>
               <asp:ListItem Value ="business-visa" Text ="Retire/invest in Australia"></asp:ListItem>
               </asp:DropDownList>
				
				<script>				    var $ = jQuery.noConflict(); $(document).ready(function () {
				        $("#visaselect").change(function () {
				            var visa = $(this).val();
				            window.location = "http://visasandpermits.com/visas/australia/australia-" + visa;
				        });

				    });</script>
			</div>
									
							<div class="landingblock block2">
										<span class="visaicon typework sprite"></span>
					<h3><a href="http://visasandpermits.com/visas/australia/australia-work-permit/">Work Visa</a></h3>
					<p>The Skilled or Work program is one of the most popular choices for Australia Immigration.</p>
					<small><a href="http://visasandpermits.com/visas/australia/australia-work-permit/">Find out more...</a></small>
				</div>
							<div class="landingblock block3">
										<span class="visaicon typebusiness sprite"></span>
					<h3><a href="http://visasandpermits.com/visas/australia/australia-business-visa/">Business Visa</a></h3>
					<p>Gain temporary residence in Australia by investing or starting a successful business in this country.</p>
					<small><a href="http://visasandpermits.com/visas/australia/australia-business-visa/">Find out more...</a></small>
				</div>
							<div class="landingblock block4">
										<span class="visaicon typefamily sprite"></span>
					<h3><a href="http://visasandpermits.com/visas/australia/australia-family-visa/">Family Visa</a></h3>
					<p>Reunite with your partner or other family members already living in Australia. </p>
					<small><a href="http://visasandpermits.com/visas/australia/australia-family-visa/">Find out more...</a></small>
				</div>
							<div class="landingblock block5">
										<span class="visaicon typestudent sprite"></span>
					<h3><a href="http://visasandpermits.com/visas/australia/australia-student-visa/">Student Visa</a></h3>
					<p>The perfect Australian immigration solution for students who want to study and live in Australia. </p>
					<small><a href="http://visasandpermits.com/visas/australia/australia-student-visa/">Find out more...</a></small>
				</div>
							<div class="landingblock block6">
										<span class="visaicon typevisit sprite"></span>
					<h3><a href="http://visasandpermits.com/visas/australia/australia-visit-visa/">Visitor Visa</a></h3>
					<p>Go on holiday in Australia, visit your family or friends, or go on a business trip in this country. </p>
					<small><a href="http://visasandpermits.com/visas/australia/australia-visit-visa/">Find out more...</a></small>
				</div>
					</div>  
            
</div>
<travelright:right ID ="travelright1" runat ="server" /><!--contain_right-->
</div>
</asp:Content>

