<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF" TagName="Foot"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 
<title>::Indus Travels & Tours::</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
 <link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/interactive_map.css" rel="stylesheet" type="text/css" />  
<link href="css/style-notification.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<%--<link href="css/jquery1.css" rel="stylesheet" />
 <link  rel="stylesheet"  href="css/jquery-ui.css"  />
<link rel="stylesheet" type="text/css" href="css/default.css" />
 <link rel="stylesheet" type="text/css" href="css/nivo-slider.css" />
 <link rel="stylesheet" href="css/roundedw.css" />
<link type="text/css" href="menu/menu.css" rel="stylesheet" />--%> 

 <style type="text/css">
/*.banner
{
	margin-top:8px;
}*/
hr
{
	margin-top:5px;
}
.imgs
{
	margin-top:10px;
}
.stock1 {
    position:relative;
    margin-top:20px
	/*top:1535px;*/
}

div.selectBox
			{
				position:relative;
				display:inline-block;
				cursor:default;
				text-align:left;
				line-height:30px;
				clear:both;
				color:#888;
			}
			span.selected
			{
				width:167px;
				text-indent:20px;
				border:1px solid #ccc;
				border-right:none;
				border-top-left-radius:5px;
				border-bottom-left-radius:5px;
				background:#f6f6f6;
				overflow:hidden;
			}
			

			span.selectArrow
			{
				width:30px;
				border:1px solid #ccc;
				border-top-right-radius:5px;
				border-bottom-right-radius:5px;
				text-align:center;
				font-size:20px;
				-webkit-user-select: none;
				-khtml-user-select: none;
				-moz-user-select: none;
				-o-user-select: none;
				user-select: none;
				background:#f6f6f6;
			}
			
			span.selectArrow,span.selected
			{
				position:relative;
				float:left;
				height:30px;
				z-index:1; color:#666;
			}
			
			div.selectOptions
			{
				position:absolute;
				top:165px;
				left:10;
				width:200px;
				border:1px solid #ccc;
				border-bottom-right-radius:5px;
				border-bottom-left-radius:5px;
				overflow:hidden;
				background:#f6f6f6;
				padding-top:2px;
				display:none;
				z-index:3;
				overflow:scroll;
				height:200px;
			}
				
			span.selectOption
			{
				display:block;
				width:80%;
				line-height:20px; padding-left:16px;
/*				padding:5px 10%; 
*/			}
			
			span.selectOption:hover
			{
				color:#f6f6f6;
				background:#4096ee;	
			}	


.current1 {
	border-top:4px solid #ff3100;
	height:21px;
	margin-top:-5px;
	width:30px;	
}
</style> 

<%-- <script  src="js/jquery-1.8.2.js"></script>
<script  src="js/jquery-ui.js"></script>
<script type='text/javascript' src="js/jquery.min.js"></script>
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery-ui.min.js" type="text/javascript"></script> 
<script src="js/jquery.min-1.8.js" type="text/javascript"></script>
<script type="text/javascript" src="js/bookflip.js"></script>
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>--%>

<script src="textslider/jquery.min.js"></script>
<script src="textslider/bootstrap-transition.js"></script>
<script src="textslider/bootstrap-modal.js"></script>
<script src="textslider/bootstrap-tab.js"></script>
<script src="js/interactive_map.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script type="text/javascript" src="js/jquery1-1.8.3(1).js"></script>
 
 <script type="text/javascript">

      $(document).ready(function () {

          var counter = 2;

          $("#addButton").click(function () {

              if (counter < 0) {
                  alert("Only 10 textboxes allow");
                  return false;
              }

              var newTextBoxDiv = $(document.createElement('div'))
	     .attr("id", 'TextBoxDiv' + counter);

              newTextBoxDiv.after().html('<select style="background:#f6f6f6; width:200px; font-family:Arial, Helvetica, sans-serif; font-size:12px; color:#666;  height:30px; border:1px #CCC solid; border-radius:4px; left:10px; top:10px; position:relative; clear:both; padding-left:10px; padding-bottom:2px;">  name="select' + counter +
	      '" id="select' + counter + '" > <option>Bangalore, India (BLR) </option><option>New Delhi, India (DEL)</option><option> Mumbai, India (BOM)</option> <option> Goa, India (GOI)</option><option>Chennai, India (MAA)</option><option> Kolkata, India (CCU)</option> <option>  Hyderabad, India (HYD)</option><option> Pune, India (PNQ)</option><option>  Ahmedabad, India (AMD)</option></select>' +


		  '<select style="background:#f6f6f6; width:200px;  height:30px; font-size:12px;  color:#666; font-family:Arial, Helvetica, sans-serif; border:1px #CCC solid; border-radius:4px; left:110px; top:10px; position:relative; clear:both; padding-left:10px; padding-bottom:2px;">  name="select' + counter +
	      '" id="select' + counter + '" > <option>Bangalore, India (BLR) </option><option>New Delhi, India (DEL)</option><option> Mumbai, India (BOM)</option> <option> Goa, India (GOI)</option><option>Chennai, India (MAA)</option><option> Kolkata, India (CCU)</option> <option>  Hyderabad, India (HYD)</option><option> Pune, India (PNQ)</option><option>  Ahmedabad, India (AMD)</option></select>'
	      );

              newTextBoxDiv.appendTo("#TextBoxesGroup");

              counter++;
          });
          $("#removeButton").click(function () {
              if (counter == 1) {
                  alert("No more textbox to remove");
                  return false;
              }

              counter--;

              $("#TextBoxDiv" + counter).remove();

          });
      });

    </script>
      
 <script type="text/javascript">

        $(document).ready(function () {
            hideDiv();

        });

        function hideDiv() {
            $('#detail_container').hide();
        } 
    </script>
  
</head>
<body >
 <form id="form1" runat="server">
<div id="wrapperclass">
<TraH:Head ID="THead" runat="server" />
<div class="banner_billow"  style="margin-top:-8px;">
<div class="billow_left" style="height:330px;">
<div class="head">
<div class="Tickets">
<span style="text-align:center; font-size:16px; font-family:Arial, Helvetica, sans-serif; color:#ffffff; line-height:30px;margin-left:20px; font-weight:bold; ">Book Your Tickets</span>
</div><!--tickets-->
<div class="flight"><p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif; margin-left:28px;
line-height:28px;">Flights</p></div>
<div class="hotal"><p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif; margin-left:28px;
line-height:28px;">Hotels</p></div>
<div class="holides"><p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif; margin-left:27px;
line-height:28px;">Holidays</p></div>
<div class="flight_hotal"><p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif; margin-left:28px;
line-height:28px;">Flight+Hotels</p></div>
</div><!--head-->
<div>
<p style="font-family:Arial, Helvetica, sans-serif; font-size:16px; color:#002073; margin-left:34px; font-weight:bold; margin-top:10px; width:400px;">Book Domestic & International</p></div>
<div class="text">

</div><!--text-->

<!-- new ticket style -->
      <div class="row" style="width:630; height:250px;">

        <div class="span12" style="width:630px; height:250px;">

          <ul class="nav nav-tabs" id="documentation">
            <li class="active"><a href="http://arthurgouveia.com/prettyCheckable/#options" data-toggle="tab"> One Way</a></li>
            <li><a href="http://arthurgouveia.com/prettyCheckable/#inline-options" data-toggle="tab"> Round Trip </a></li>
            <li><a href="http://arthurgouveia.com/prettyCheckable/#methods" data-toggle="tab">Multi City / Stop Over</a></li>
          </ul>

          <div class="tab-content" style="height:200px; overflow:hidden;">
            <div class="tab-pane active" id="options">

          <table style="width:620px; height:200px;" cellpadding="0" cellspacing="0" align="left">

<tr style="width:300px; height:auto; float:left;">
<td>
<p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif;  margin-left:13px;">From: 
<span style="margin-left:245px; color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif;"> </span></p></td>

<td style="width:300px; height:auto; float:left; margin-left:10px; "> 
<asp:DropDownList ID ="ddlselect" runat ="server" Width="200" >
<asp:ListItem Value="0" Text="Selecte one"></asp:ListItem>
<asp:ListItem Value="1" Text="Bangalore, India (BLR)"></asp:ListItem>
<asp:ListItem Value="2"  Text ="New Delhi, India (DEL)"></asp:ListItem>
<asp:ListItem Value ="3" Text ="Mumbai, India (BOM)"></asp:ListItem>
<asp:ListItem Value ="4" Text ="Goa, India (GOI)"></asp:ListItem>
<asp:ListItem Value ="5" Text ="Chennai, India (MAA) "></asp:ListItem>
<asp:ListItem Value ="6" Text ="Kolkata, India (CCU)"></asp:ListItem>
<asp:ListItem Value="7" Text="Hyderabad, India (HYD)"></asp:ListItem>
</asp:DropDownList>
 
</td>
</tr>
<tr style="width:300px; height:auto; float:left;">
<td> <p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif; margin-left:10px;"> To: </p></td>
</td>
<td style="width:300px; height:auto; float:left; margin-left:10px;"> 
<asp:DropDownList ID ="ddl2" runat ="server" Width="200">
<asp:ListItem Value="0" Text="Selecte one"></asp:ListItem>
<asp:ListItem Value="1" Text="Bangalore, India (BLR)"></asp:ListItem>
<asp:ListItem Value="2"  Text ="New Delhi, India (DEL)"></asp:ListItem>
<asp:ListItem Value ="3" Text ="Mumbai, India (BOM)"></asp:ListItem>
<asp:ListItem Value ="4" Text ="Goa, India (GOI)"></asp:ListItem>
<asp:ListItem Value ="5" Text ="Chennai, India (MAA) "></asp:ListItem>
<asp:ListItem Value ="6" Text ="Kolkata, India (CCU)"></asp:ListItem>
<asp:ListItem Value="7" Text="Hyderabad, India (HYD)"></asp:ListItem>
</asp:DropDownList>
</td>
</tr>
<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Departure </td>
<td style="width:80px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 
<p>
                <asp:TextBox ID ="txt1" runat ="server" Height="20" Width="80" BackColor="#f6f6f6"></asp:TextBox>
                </p>
</td>
</tr>


<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Return</td>
<td style="width:80px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 
<p> 
                <asp:TextBox ID ="txt2" runat ="server" Height="20" Width="80" BackColor="#f6f6f6"></asp:TextBox>
                </p>
</td>
</tr>

<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Adult </td>

<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 
<asp:DropDownList ID="ddladult" runat ="server" BackColor="#f6f6f6" Width="75" Height="31">
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
<asp:ListItem Value="10" Text="10"></asp:ListItem> 
</asp:DropDownList>
</td>
</tr>

<tr style="width:120px; height:auto; float:left;">
<td style="width:120px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Children (2-12 yrs)</td>

<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 
<asp:DropDownList ID="ddlchilren" runat ="server" BackColor="#f6f6f6" Width="85" Height="31">
<asp:ListItem Value="0" Text="1"></asp:ListItem>
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
<asp:ListItem Value="10" Text="10"></asp:ListItem> 
</asp:DropDownList>
</td>
</tr>

<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Infant (0-2 yrs)</td>
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 
<asp:DropDownList ID="ddlInfra" runat ="server" BackColor="#f6f6f6" Width="75" Height="31">
<asp:ListItem Value="0" Text="1"></asp:ListItem>
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
<asp:ListItem Value="10" Text="10"></asp:ListItem> 
</asp:DropDownList>
</td>
</tr>

<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:6px; margin-top:10px;">Class </td>

<td style="width:100px; height:auto; float:left; margin-left:-7px; margin-top:5px;"> 
<asp:DropDownList ID ="ddlclass" runat ="server" BackColor="#f6f6f6" Width="105" Height="31">
<asp:ListItem Value="0" Text="Economy"></asp:ListItem>
<asp:ListItem Value="1" Text="Business"></asp:ListItem>
</asp:DropDownList>
</td>
</tr>

<tr style="width:300px; height:auto; float:right;margin-top:10px; ">
<td>
<asp:Button ID ="btnflight" runat ="server" CssClass="button" Text="Flight + Hotel Combo"/>

</p></td>

<td style="width:300px; height:auto; float:left; margin-left:10px; margin-top:10px;">
</td>

</tr>

<tr style="width:300px; height:auto; float:right;">
<td>

<asp:Button ID ="btnsearch" runat ="server" CssClass="button22" Text="Search Flights" />
</td>

</tr>


</table>

            </div>
            <div class="tab-pane" id="inline-options">

             <table style="width:620px; height:200px;" cellpadding="0" cellspacing="0" align="left">

<tr style="width:300px; height:auto; float:left;">
<td>
<p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif;  margin-left:13px;">From: 
<span style="margin-left:245px; color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif;"> </span></p></td>

<td style="width:300px; height:auto; float:left; margin-left:10px; "> 
<asp:DropDownList ID ="ddlround1" runat ="server" Width="200" >
<asp:ListItem Value="0" Text="Selecte one"></asp:ListItem>
<asp:ListItem Value="1" Text="Bangalore, India (BLR)"></asp:ListItem>
<asp:ListItem Value="2"  Text ="New Delhi, India (DEL)"></asp:ListItem>
<asp:ListItem Value ="3" Text ="Mumbai, India (BOM)"></asp:ListItem>
<asp:ListItem Value ="4" Text ="Goa, India (GOI)"></asp:ListItem>
<asp:ListItem Value ="5" Text ="Chennai, India (MAA) "></asp:ListItem>
<asp:ListItem Value ="6" Text ="Kolkata, India (CCU)"></asp:ListItem>
<asp:ListItem Value="7" Text="Hyderabad, India (HYD)"></asp:ListItem>
</asp:DropDownList>

</td>
</tr>



<tr style="width:300px; height:auto; float:left;">
<td> <p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif; margin-left:10px;"> To: </p></td></td>

<td style="width:300px; height:auto; float:left; margin-left:10px;"> 

<asp:DropDownList ID ="ddlround2" runat ="server" Width="200" >
<asp:ListItem Value="0" Text="Selecte one"></asp:ListItem>
<asp:ListItem Value="1" Text="Bangalore, India (BLR)"></asp:ListItem>
<asp:ListItem Value="2"  Text ="New Delhi, India (DEL)"></asp:ListItem>
<asp:ListItem Value ="3" Text ="Mumbai, India (BOM)"></asp:ListItem>
<asp:ListItem Value ="4" Text ="Goa, India (GOI)"></asp:ListItem>
<asp:ListItem Value ="5" Text ="Chennai, India (MAA) "></asp:ListItem>
<asp:ListItem Value ="6" Text ="Kolkata, India (CCU)"></asp:ListItem>
<asp:ListItem Value="7" Text="Hyderabad, India (HYD)"></asp:ListItem>
</asp:DropDownList>
</td>
</tr>


<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Departure </td>
<td style="width:80px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 
<p>
                <asp:TextBox ID ="txtround1" runat ="server" Height="20" Width="80" BackColor="#f6f6f6"></asp:TextBox>
                </p>
</td>
</tr>


<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Return</td>
<td style="width:80px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 
<p>
                <asp:TextBox ID ="txtround2" runat ="server" Height="20" Width="80" BackColor="#f6f6f6"></asp:TextBox>
                </p>
</td>
</tr>

<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Adult </td>

<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 
<asp:DropDownList ID="ddlroundadult" runat ="server" BackColor="#f6f6f6" Width="75" Height="31">
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
<asp:ListItem Value="10" Text="10"></asp:ListItem> 
</asp:DropDownList>

</td>
</tr>

<tr style="width:120px; height:auto; float:left;">
<td style="width:120px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Children (2-12 yrs)</td>

<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 

<asp:DropDownList ID="ddlroundchildren" runat ="server" BackColor="#f6f6f6" Width="85" Height="31">
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
<asp:ListItem Value="10" Text="10"></asp:ListItem> 
</asp:DropDownList>
</td>
</tr>

<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:10px;"> Infant (0-2 yrs)</td>
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:5px;"> 
<asp:DropDownList ID="ddlroundInfant" runat ="server" BackColor="#f6f6f6" Width="75" Height="31">
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
<asp:ListItem Value="10" Text="10"></asp:ListItem> 
</asp:DropDownList>

</td>
</tr>

<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:6px; margin-top:10px;">Class </td>

<td style="width:100px; height:auto; float:left; margin-left:-7px; margin-top:5px;"> 
<asp:DropDownList ID="ddlroundclass" runat ="server" BackColor="#f6f6f6" Width="105" Height="31">
<asp:ListItem Value="1" Text="Economy"></asp:ListItem> 
<asp:ListItem Value="2" Text="Business"></asp:ListItem> 
</asp:DropDownList>

</td>
</tr>



<tr style="width:300px; height:auto; float:right; ">
<td>
<asp:Button ID ="btnroundflight" runat ="server" CssClass="button11" Text="Flight + Hotel Combo" />
</p></td>

<td style="width:300px; height:auto; float:left; margin-left:10px; margin-top:10px;">
</td>

</tr>

<tr style="width:300px; height:auto; float:right;">
<td>
<asp:Button ID ="btnround1" runat ="server" CssClass="button22" Text="Search Flights" />
</p></td>

</tr>


</table>

            </div>
            <div class="tab-pane" id="methods" >

              <table style="width:620px; height:200px; " cellpadding="0" cellspacing="0" align="left">

<tr style="width:600px;  height:98px; overflow-y:scroll; float:left; border:1px #CCC solid; border-radius:4px; left:15px; position:relative; clear:both; padding-left:10px; padding-bottom:2px;">
<td>


 <div id='TextBoxesGroup'  style="position:relative; clear:both;" >
 <table cellpadding="0px;" cellspacing="0px;" style="width:550px;">
<tr style="width:300px; height:auto; float:left;">
<td>
<p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif;  margin-left:13px;">From: <span style="margin-left:261px; color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif;"> </span></p></td>

<td style="width:300px; height:auto; float:left; margin-left:10px;"> 

<asp:DropDownList ID ="ddlmulcity" runat ="server" Width="200">
<asp:ListItem Value="0" Text="Selecte one"></asp:ListItem>
<asp:ListItem Value="1" Text="Bangalore, India (BLR)"></asp:ListItem>
<asp:ListItem Value="2"  Text ="New Delhi, India (DEL)"></asp:ListItem>
<asp:ListItem Value ="3" Text ="Mumbai, India (BOM)"></asp:ListItem>
<asp:ListItem Value ="4" Text ="Goa, India (GOI)"></asp:ListItem>
<asp:ListItem Value ="5" Text ="Chennai, India (MAA) "></asp:ListItem>
<asp:ListItem Value ="6" Text ="Kolkata, India (CCU)"></asp:ListItem>
<asp:ListItem Value="7" Text="Hyderabad, India (HYD)"></asp:ListItem>
</asp:DropDownList>
</td>
</tr>

<tr style="width:200px; height:auto; float:left;">
<td> <p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif; margin-left:10px;"> To: </p></td></td>
</td>

<td style="width:200px; height:auto; float:left; margin-left:10px;"> 

<asp:DropDownList ID ="ddlmulcityfrom" runat ="server" Width="200">
<asp:ListItem Value="0" Text="Selecte one"></asp:ListItem>
<asp:ListItem Value="1" Text="Bangalore, India (BLR)"></asp:ListItem>
<asp:ListItem Value="2"  Text ="New Delhi, India (DEL)"></asp:ListItem>
<asp:ListItem Value ="3" Text ="Mumbai, India (BOM)"></asp:ListItem>
<asp:ListItem Value ="4" Text ="Goa, India (GOI)"></asp:ListItem>
<asp:ListItem Value ="5" Text ="Chennai, India (MAA) "></asp:ListItem>
<asp:ListItem Value ="6" Text ="Kolkata, India (CCU)"></asp:ListItem>
<asp:ListItem Value="7" Text="Hyderabad, India (HYD)"></asp:ListItem>
</asp:DropDownList>
</td>
</tr>
 </table>
	</div>


	<div id="TextBoxesGroup"> 
<div id="addButton" style="float:left; top:4px; padding:10px;">
<input type='button' value='Add Button' id='addButton'/>

</div>
<div id="addButton" style="float:left; top:4px;  padding:10px;">
<input type='button' value='Remove Button' id='removeButton'/>
</div>
</td>
</tr>


<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:2px;"> Departure </td>
<td style="width:80px; height:auto; float:left; margin-left:10px; margin-top:2px;"> 
<p>
                <asp:TextBox ID ="txtmuldep" runat ="server" Height="20" Width="80" BackColor="#f6f6f6" ></asp:TextBox>
                
                </p>
</td>
</tr>

<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px;  margin-top:2px;">Adult </td>

<td style="width:100px; height:auto; float:left; margin-left:10px;  margin-top:2px;"> 

<asp:DropDownList ID="ddlmuladult1" runat ="server" BackColor="#f6f6f6" Width="80" Height="31">
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
<asp:ListItem Value="10" Text="10"></asp:ListItem> 
</asp:DropDownList>
</td>
</tr>

<tr style="width:120px; height:auto; float:left;">
<td style="width:120px; height:auto; float:left; margin-left:10px; margin-top:2px;"> Children (2-12 yrs)</td>

<td style="width:100px; height:auto; float:left; margin-left:10px;  margin-top:2px;"> 

<asp:DropDownList ID="DropDownList1" runat ="server" BackColor="#f6f6f6" Width="80" Height="31">
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
<asp:ListItem Value="10" Text="10"></asp:ListItem> 
</asp:DropDownList>
</td>
</tr>

<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:10px;  margin-top:2px;"> Infant (0-2 yrs)</td>
<td style="width:100px; height:auto; float:left; margin-left:10px; margin-top:2px;">

<asp:DropDownList ID="DropDownList2" runat ="server" BackColor="#f6f6f6" Width="80" Height="31">
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
<asp:ListItem Value="10" Text="10"></asp:ListItem> 
</asp:DropDownList>
</td>
</tr>

<tr style="width:100px; height:auto; float:left;">
<td style="width:100px; height:auto; float:left; margin-left:9px; margin-top:2px;"> Class </td>

<td style="width:100px; height:auto; float:left; margin-left:9px;  margin-top:2px;">

<asp:DropDownList ID="DropDownList3" runat ="server" BackColor="#f6f6f6" Width="80" Height="31">
<asp:ListItem Value="1" Text="Economy"></asp:ListItem> 
<asp:ListItem Value="2" Text="Business"></asp:ListItem> 
</asp:DropDownList>
</td>
</tr>

<tr style="width:300px; height:auto; float:right;">
<td>

<asp:Button ID ="btnmulsearche" runat ="server" Text="Search Flights" CssClass="button33" />
</tr>
</table>
          </div>
          </div>

          <h3>&nbsp;</h3>
</div>
     </div>

<div class="clear"></div>
</div>

<div class="billow_right">


 <div class="map_main_contianer">
               <div style=" margin-left:20px; margin-top:-30px; width:600px;">  
                    <table> 
                     <tr style="width:130px; float:left;">
                     <td>    Select the Continent : </td>
                     </tr> 
                       <tr style="width:300px; float:left; margin-top:-17px;">   
                        
                 
                    <td valign="top">
                       <div class="form_continent" id="mapForm">
                            <select name="continent"  style="margin-top:10px;">
                             <option value="AF">Africa</option>
                            <option value="AS">Asia</option>
                            <option value="AU">Australia</option>
                            <option value="EU">Europe</option>
                            <option value="SA">South America</option>
                            <option value="NA">North America</option>
                            <option value="ALL" selected="selected">All</option>
                            </select>
                            </div></td>
                            </tr>
                                  </table>
               </div>
                            
                <div class="map_contianer" style="margin-top:25px;">
                    <!-- Dots -->
                    <a id="ctl00_ContentPlaceHolder1_lnk_usa" class="dot5" continent="NA" city="USA" title="USA" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_usa&#39;,&#39;&#39;)" style="top: 133px; left: 80px;"></a>
                    
                    <a id="ctl00_ContentPlaceHolder1_lnk_canada" class="dot5" continent="NA" city="Canada" title="Canada" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_canada&#39;,&#39;&#39;)" style="top: 81px; left: 56px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_turkey" class="dot6" continent="EU" city="Turkey" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_turkey&#39;,&#39;&#39;)" style="top: 120px; left: 350px;"></a>
                    
                    <a id="ctl00_ContentPlaceHolder1_lnk_France" class="dot6" continent="EU" city="France" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_France&#39;,&#39;&#39;)" style="top:100px;left: 275px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_greece" class="dot6" continent="EU" city="Greece" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_greece&#39;,&#39;&#39;)" style="top: 125px; left: 330px;"></a>
                    
                    <a id="ctl00_ContentPlaceHolder1_lnk_italy" class="dot6" continent="EU" city="Italy" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_italy&#39;,&#39;&#39;)" style="top: 125px; left: 310px;"></a>
                    
                    <a id="ctl00_ContentPlaceHolder1_lnk_spain" class="dot6" continent="EU" city="Spain" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_spain&#39;,&#39;&#39;)" style="top: 125px; left: 280px;"></a>
                    
                    <a id="ctl00_ContentPlaceHolder1_lnk_Switzerland" class="dot6" continent="EU" city="Switzerland" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_Switzerland&#39;,&#39;&#39;)" style="top: 110px; left: 310px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_southamerica" class="dot4" continent="SA" city="South-America" title="South America" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_southamerica&#39;,&#39;&#39;)" style="top: 200px;left: 155px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_dubai" class="dot2" continent="AS" city="Dubai" title="Dubai" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_dubai&#39;,&#39;&#39;)" style="top: 170px; left: 379px;"></a>
                    
                    <a id="ctl00_ContentPlaceHolder1_lnk_thailand" class="dot2" continent="AS" city="Thailand" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_thailand&#39;,&#39;&#39;)" style="top: 160px; left: 466px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_shrilanka" class="dot2" continent="AS" city="India" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_shrilanka&#39;,&#39;&#39;)" style="top:175px; left: 445px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_Indonesia" class="dot2" continent="AS" city="Indonesia" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_Indonesia&#39;,&#39;&#39;)" style="top: 210px; left: 500px;"></a>
                    
                    <a id="ctl00_ContentPlaceHolder1_lnk_nepal" class="dot2" continent="AS" city="Nepal" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_nepal&#39;,&#39;&#39;)" style="top: 145px; left: 460px;"></a>
                
                    <a id="ctl00_ContentPlaceHolder1_lnk_Singapore" class="dot2" continent="AS" city="Singapore" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_Singapore&#39;,&#39;&#39;)" style="top: 202px;  left: 487px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_malaysia" class="dot2" continent="AS" city="Malaysia" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_malaysia&#39;,&#39;&#39;)" style="top:180px; left:481px;"></a>
                    
                    <a id="ctl00_ContentPlaceHolder1_lnk_honkong" class="dot2" continent="AS" city="Hongkong" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_honkong&#39;,&#39;&#39;)" style="top: 148px;  left: 510px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_australia" class="dot3" continent="AU" city="Australia" title="Australia" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_australia&#39;,&#39;&#39;)" style="top: 242px; left:563px;"></a>
                        
                    <a id="ctl00_ContentPlaceHolder1_lnk_NewZealand" class="dot3" continent="AU" city="NewZealand" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_NewZealand&#39;,&#39;&#39;)" style="top: 270px; left: 620px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_SouthAfrica" class="dot1" continent="AF" city="SouthAfrica" title="SouthAfrica" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_SouthAfrica&#39;,&#39;&#39;)" style="top: 245px;  left: 335px;"></a>
                    <a id="ctl00_ContentPlaceHolder1_lnk_kenya" class="dot1" continent="AF" city="Kenya" title="Kenya" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_kenya&#39;,&#39;&#39;)" style="top: 200px; left: 350px;"></a>
                    
                    <a id="ctl00_ContentPlaceHolder1_lnk_Mauritius" class="dot1" continent="AF" city="Mauritius" title="Mauritius" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_Mauritius&#39;,&#39;&#39;)" style="top: 235px; left: 390px;"></a>
                        
                         <a id="ctl00_ContentPlaceHolder1_lnk_Mauritius" class="dot7" continent="AF" city="India" title="India" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lnk_Mauritius&#39;,&#39;&#39;)" style="top: 200px;
                        left: 400px;"></a>
                        
                        
                        </td>
                    <!-- Form -->
                    </tr>

                    <!--PASTE-->
                    <!-- City details -->
                    <div id="detail_container">
                        <!-- City -->
                        <div class="city_detail">
                        </div>
                    </div>
                    <div class="city_detail_container">
                        <!-- City -->
                        <div class="city_detail" id="Australia">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/sydney.jpg" alt="sydney" width="75"
                                    height="75"  style="top: 172px; left: 473px;"/>
                                <div class="city_info">
                                    <h2>&nbsp;Australia</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Dubai">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/Dubai.jpg" alt="Dubai" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>&nbsp;&nbsp;&nbsp;&nbsp;Dubai</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="South-America">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/SOUTH_AMERICA.jpg" alt="South America"
                                    width="75" height="75" />
                                <div class="city_info">
                                    <h2>
                                        South America</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Indonesia">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/INDONESIA.jpg" alt="Indonesia" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                        Indonesia</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="USA">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/USA.jpg" alt="USA" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                    &nbsp;&nbsp;&nbsp;&nbsp;    USA</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Canada">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/CANADA.jpg" alt="seattle" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                      &nbsp;&nbsp;  Canada</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="NewZealand">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/NEWZEALAND.jpg" alt="NewZealand" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                        NewZealand</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Hongkong">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/HONGKONG.jpg" alt="Hongkong"
                                    width="75" height="75" />
                                <div class="city_info">
                                    <h2>
                                      Hongkong</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Srilanka" style="margin-top:10px; margin-left:-10px;">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/SriLanka.jpg" alt="India" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                       &nbsp; India</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="India">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/INDIA.jpg" alt="India" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                       &nbsp;&nbsp;&nbsp;&nbsp; India</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Nepal">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/NEPAL.jpg" alt="Nepal" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                      &nbsp;&nbsp;&nbsp;  Nepal</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Singapore">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/SINGAPORE.jpg" alt="Singapore" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                        Singapore</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="India">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/MALDIVES.jpg" alt="India"
                                    width="75" height="75" />
                                <div class="city_info">
                                    <h2>
                                     &nbsp;   India</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Malaysia">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/malaysia.jpg" alt="Malaysia" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                      &nbsp;  Malaysia</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Turkey">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/TURKEY.jpg" alt="Turkey" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                      &nbsp;&nbsp;  Turkey</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="France">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/FRANCE.jpg" alt="France" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                      &nbsp;&nbsp; France</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Greece">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/GREECE.jpg" alt="Greece" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                      &nbsp;&nbsp;  Greece</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Spain">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/SPAIN.jpg" alt="Spain" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                      &nbsp;&nbsp;&nbsp;&nbsp;  Spain</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Italy">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/ITALY.jpg" alt="Italy" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                      &nbsp;&nbsp;&nbsp;&nbsp;  Italy</h2>
                                </div>
                            </a>
                        </div>
                       
                        <!-- City -->
                        <div class="city_detail" id="Switzerland">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/switzerland.jpg" alt="Switzerland" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                        Switzerland</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Thailand">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/THAILAND.jpg" alt="Thailand" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                      &nbsp;  Thailand</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="SouthAfrica">
                            <a href="#">
                                <img class="city_photo" src="images/map/cities/south-africa.jpg" alt="SouthAfrica"
                                    width="75" height="75" />
                                <div class="city_info">
                                    <h2>
                                        SouthAfrica</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Kenya">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/KENYA.jpg" alt="Kenya" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                       &nbsp;&nbsp;&nbsp; Kenya</h2>
                                </div>
                            </a>
                        </div>
                        <!-- City -->
                        <div class="city_detail" id="Mauritius">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/Mauritius.jpg" alt="Mauritius" width="75"
                                    height="75" />
                                <div class="city_info">
                                    <h2>
                                    &nbsp;    Mauritius</h2>
                                </div>
                            </a>
                        </div>
                        
                        
                         </td>
                        
                    </div>
                </div>
                </div>
               
               
                

</div><!--billow_right-->
</div><!--banner_billow-->

<div class="container" style="margin-top:5px;">
<div class="containe_left">
<div class="contact_details">
<div class="usa" style="margin-left:30px; clear:both; padding-top:10px;">
<p><img alt="Indus Image" src="images/usa_flag.png" style="margin-top:6px; position:relative; top:-15px; " />
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="220" height="35" id="FlashID" title="usa" style="margin-top:7px;">
    <param name="movie" value="images/usa.swf" />
    <param name="quality" value="high" />
    <param name="wmode" value="opaque" />
    <param name="swfversion" value="6.0.65.0" />
    <!-- This param tag prompts users with Flash Player 6.0 r65 and higher to download the latest version of Flash Player. Delete it if you don’t want users to see the prompt. -->
    <param name="expressinstall" value="Scripts/expressInstall.swf" />
    <!-- Next object tag is for non-IE browsers. So hide it from IE using IECC. -->
    <!--[if !IE]>-->
    <object type="application/x-shockwave-flash" data="images/usa.swf" width="220" height="35" style="margin-top:7px;">
      <!--<![endif]-->
      <param name="quality" value="high" />
      <param name="wmode" value="opaque" />
      <param name="swfversion" value="6.0.65.0" />
      <param name="expressinstall" value="Scripts/expressInstall.swf" />
      <!-- The browser displays the following alternative content for users with Flash Player 6.0 and older. -->
      <div>
        <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>
        <p><a href="http://www.adobe.com/go/getflashplayer"><img  
        src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" width="112" height="33" /></a></p>
      </div>
      <!--[if !IE]>-->
    </object>
    <!--<![endif]-->
  </object>
</p>
</div><!--Usa-->
<div class="india" style="padding-top:10px;">
<p><img alt="Indus Image" src="images/india_flag.png" style="margin-top:6px; position:relative; top:-15px;"/>
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="245" height="35" id="FlashID2" title="india" style="margin-top:6px;">
    <param name="movie" value="images/india.swf" />
    <param name="quality" value="high" />
    <param name="wmode" value="opaque" />
    <param name="swfversion" value="6.0.65.0" />
    <!-- This param tag prompts users with Flash Player 6.0 r65 and higher to download the latest version of Flash Player. Delete it if you don’t want users to see the prompt. -->
    <param name="expressinstall" value="Scripts/expressInstall.swf" />
    <!-- Next object tag is for non-IE browsers. So hide it from IE using IECC. -->
    <!--[if !IE]>-->
    <object type="application/x-shockwave-flash" data="images/india.swf" width="245" height="35" style="margin-top:6px; margin-left:6px;">
      <!--<![endif]-->
      <param name="quality" value="high" />
      <param name="wmode" value="opaque" />
      <param name="swfversion" value="6.0.65.0" />
      <param name="expressinstall" value="Scripts/expressInstall.swf" />
      <!-- The browser displays the following alternative content for users with Flash Player 6.0 and older. -->
      <div>
        <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>
        <p><a href="http://www.adobe.com/go/getflashplayer"><img  
        src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" width="112" height="33" /></a></p>
      </div>
      <!--[if !IE]>-->
    </object>
    <!--<![endif]-->
  </object>
</p>
</div><!--india-->
</div><!--contact_details-->
<div class="text_informatiomn">
<div class="welcome_text">
<img alt="Indus Image" src="images/welcom_text.png" />
</div><!--welcome_text-->
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; margin-top:-5px; line-height:20px;">*Travel is fatal to prejudice, bigotry, and narrow-mindedness, and many of our people need it sorely on these accounts.  Broad, wholesome, charitable views of men and things cannot be acquired by vegetating in One little corner of the earth all one's lifetime” Custom Designed Vacations. </p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px;">*Indus Travels & Tours travel packages are designed to fit your independent spirit. We know you have your own ideas and special needs, so we offer you complete flexibility in planning your trip. You may choose:</p>
<li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px;list-style:none;">* Special discounted airfares from most U.S. cities to Asia, Africa and rest of the World. </li>
<li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px;list-style:none;">* Any length of stay on any number of destinations</li>
 <li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px;list-style:none;">* Any departure day</li>
<li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px; list-style:none;"> *You can make your own small group of family and friends.</li>
<li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px; list-style:none;">* Transportation -- rental cars and round trip transfers to your hotel </li>
<li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px; list-style:none;">* Sightseeing tours, helicopter rides, and much more. </li>
<li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px; list-style:none;">*Unlike other travel packages you might see, there are no required purchases of lei greeting, transportation or activities. You pay only for the exact features you wants.</li>
</div><!--text_information-->
<img alt="Indus Image" src="images/summer_offer.jpg" width="640" height="45" style="background-color:#090"/>
</div><!--container_left-->
<div class="containe_right">
<h1 style="height: 28px; color: #c62731; font-family: Tahoma, Geneva, sans-serif; font-size: 24px; padding-top: 6px; margin-left: 22px;">
Best Packages for Domestic & International Tours</h1>
<div class="top">
<ul>
<li><img alt="Indus Image" src="images/img_01.jpg" width="158" /></li>
<li> <img alt="Indus Image" src="images/img_02.jpg" width="166" /></li>
<li> <img alt="Indus Image" src="images/img_03.jpg" width="155" /></li>
<li><img alt="Indus Image" src="images/img_04.jpg" width="162" /></li>
</ul>
</div><!--top-->
<div class="center">
<ul>
<li><p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; margin-left:-10px;">Indus Tours & Travels</p>
<p style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; margin-left:-10px;">Flight + Hotels Combo Deals</p></li>

<li style="margin-left:35px;"><p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Delhi</p> &nbsp;&nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:25px;">Starting</span></p>
<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;">2 Days Trip</span>&nbsp; <span style="color:#fc2400;  font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; " >Rs. 8,900</span></p></li>

<li  style="margin-left:65px;" > <p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Kerala</p> &nbsp;&nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:25px;">Starting</span></p>
<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;">4 Days Trip</span>&nbsp; 
<span style="color:#fc2400; font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; " > Rs. 26,000</span></p></li>

<li style="margin-left:46px;"><p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Maharashtra </p> &nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:10px;">Starting</span></p>
<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;">4 Days Trip</span>&nbsp;
<span style="color:#fc2400; font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; text-align:left; position:relative; top:-10px;" > Rs. 26,000</span></p></li>
</ul>
</div><!--center-->
<div class="buttom">
<ul>
<li><img alt="Indus Image" src="images/img_05.jpg" width="158" /></li>
<li> <img alt="Indus Image" src="images/img_06.jpg" width="166" /></li>
<li> <img alt="Indus Image" src="images/img_07.jpg"  width="155"/></li>
<li><img alt="Indus Image" src="images/img_08.jpg"  width="162" /></li>
</ul>
</div><!--buttom-->
<div class="lastone">
<ul>
<li style="margin-left:6px;"><p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Bangkock</p> &nbsp;&nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:15px;">Starting</span></p>
<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;">7 Nights</span>&nbsp;&nbsp;
 <span style="color:#fc2400; font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;" > Rs. 35,900</span></p></li>
 

<li style="margin-left:46px;"><p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Bangkock </p> &nbsp;&nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:15px;">Starting</span></p>

<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;">7 Nights</span>&nbsp;&nbsp;
 <span style="color:#fc2400; font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; " > Rs. 35,900</span></p></li>
 
<li style="margin-left:53px;"> <p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Darjeeling </p> &nbsp;&nbsp;&nbsp;&nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:15px;">Starting</span></p>

<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; ">7 Nights</span>&nbsp;&nbsp;&nbsp;
 <span style="color:#fc2400; font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; " > Rs. 41,000</span></p></li>
<li style="margin-left:32px;"> <p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Kerala </p> &nbsp;&nbsp;&nbsp;&nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:25px;">Starting</span></p>
<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; ">7 Nights</span>&nbsp;&nbsp;&nbsp;
 <span style="color:#fc2400; font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;"> Rs. 41,000</span></p></li>

</ul>
</div><!--lsastone-->
</div><!--container_right-->
</div><!--container-->

<div class="summer_packeges" style="margin-top:405px;">
<img alt="Indus Image" src="images/summer_packeges.jpg" width="1299"  />
</div><!--summer_packeges-->


<TraF:Foot ID="TFoot" runat="server" />

</div><!--wrapper class-->


</form>

</body>

</html>