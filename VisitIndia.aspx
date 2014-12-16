<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VisitIndia.aspx.cs" Inherits="industravels_VisitIndia" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH16" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF16" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL16" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR16" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Visa-Types-India::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%><link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script type="text/javascript" src="js/jquery1-1.8.3(1).js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH16:Head ID="THead16" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;  width:934px;">
    <table width="100%">
    <tr>
    <td>
     <TraL16:Left ID="TLeft16" runat="server" />  
    </td>
    <td valign="top" class="col">
   <div class="contain_center">
     
<h2>India Immigration</h2>
                <img alt="Indus Image" src="images/india.png" width="141" height="104" align="left" style="margin:13px;" />
<br />
	<p class="para"> Wherever you may be located across the globe, and are interested to visit India for may be a business visit, 
	family visit, work related, sightseeing or you may be a student interested to pursue a course in India. Indus 
	travels and tours are specialized in providing Indian visa services. 
	We follow a methodical approach wherein we guide you on every aspect pertaining to visa.</p>

<p class="para">Whether it may be the necessary documentation, your credentials and the financials part,
 our team will help you in every aspect and see to that the entire process is flawless.
 Our main aim as a service oriented team is to offer the best service and that too within an affordable budget.</p>


<p class="para">We are completely attuned with the Indian visa standards and guidelines and so you don’t have to worry on any aspect. 
Our team will guide till you get your Indian visa and that too within a specific timeline.  </p>			
                 
       <div class="landingblocks" style="padding-left:50px;" >
		
						<div class="landingblock genie" style="background-color:#F2E1D9">
				<h3>India Visa Genie</h3>
				<p>I want to:</p>
			
               <asp:DropDownList ID ="ddlvisit" runat ="server">
               <asp:ListItem Value="0" Text="Choose one"></asp:ListItem>
               <asp:ListItem Value ="work-permit" Text ="Work in India"></asp:ListItem>
               <asp:ListItem Value ="student-visa" Text ="Study in India"></asp:ListItem>
               <asp:ListItem Value ="family-visa" Text ="Join my partner in India"></asp:ListItem>
               <asp:ListItem Value ="family-visa" Text ="Join my children in India"></asp:ListItem>
               <asp:ListItem Value ="business-visa" Text ="Start a business in India"></asp:ListItem>
               <asp:ListItem Value ="business-visa" Text ="Open a Branch office in India"></asp:ListItem>
               <asp:ListItem Value ="work-permit" Text ="Transfer an employee to India"></asp:ListItem>
               <asp:ListItem Value ="visit-visa" Text ="Visit visa to India"></asp:ListItem>
               <asp:ListItem Value ="work-permit" Text ="Work and Holiday in India"></asp:ListItem>
               <asp:ListItem Value ="business-visa" Text ="Retire/invest in India"></asp:ListItem>
               </asp:DropDownList>
				
				<script>				    var $ = jQuery.noConflict(); $(document).ready(function () {
				        $("#ddlvisit").change(function () {
				            var visa = $(this).val();
				           // window.location = "http://visasandpermits.com/visas/Australia/Australia-" + visa;
				           window.location = "http://industravels.net/VisitIndia.aspx";
				        });

				    });</script>
			</div>
									
							
				
				<div class="landingblock block2" >
										<span class="visaicon_typework_sprite"></span>
					<h3><a href="#" style="color:#6F1B4A;">Work Visa</a></h3>
					<p style="text-align:justify">Acquire work visa within a stipulated amount of time. Gradually once you get the visa enjoy your work in wonderful India. </p>
					<small><a href="#" style="color:#ea3629;">Find out more...</a></small>
				</div>
							<div class="landingblock block3">
										<span class="visaicon_typebusiness_sprite"></span>
					<h3><a href="#" style="color:#6F1B4A;">Business Visa</a></h3>
					<p style="text-align:justify">You are interested to do business in India? Indus travels and tours will help you acquire a business visa as soon as possible.</p>
					<small><a href="#" style="color:#ea3629;">Find out more...</a></small>
				</div>
							<div class="landingblock block4">
										<span class="visaicon_typefamily_sprite"></span>
					<h3><a href="#" style="color:#6F1B4A;">Family Visa</a></h3>
					<p style="text-align:justify">Want to reunite with your family and are eagerly looking out for a reliable visa service provider? Indus travels and tours will assure you in getting your family visa.  </p>
					<small><a href="#" style="color:#ea3629;">Find out more...</a></small>
				</div>
							<div class="landingblock block5">
										<span class="visaicon_typestudent_sprite"></span>
					<h3><a href="#" style="color:#6F1B4A;">Student Visa</a></h3>
					<p style="text-align:justify">You are a student looking out to continue your studies in India. We will help you in getting a student visa. </p>
					<small><a href="#" style="color:#ea3629;">Find out more...</a></small>
				</div>
							<div class="landingblock block6">
										<span class="visaicon_typevisit_sprite"></span>
					<h3><a href="#" style="color:#6F1B4A; ">Visitor Visa</a></h3>
					<p style="text-align:justify">You are looking out to visit India and are impatiently looking out for a credible visa service provider; wait no further as Indus travels and tours is the right choice for you. </p>
					<small><a href="#" style="color:#ea3629;">Find out more...</a></small>
				</div>
					</div>  

</div>

    </td>
    <td>
     <TraR16:Right ID="TRight16" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF16:Foot ID="TFoot16" runat="server" />
    </td></tr>
    </table>
  
   
    </div>
    
    </form>
</body>
</html>

