<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF" TagName="Foot"  %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 
<title>::Indus Travels & Tours::</title>

<link rel="stylesheet" href="css/jquery-ui.css" />
<link href="css/bootstrap.min.css" rel="stylesheet"/>
<link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/interactive_map.css" rel="stylesheet" type="text/css" />  
<link href="css/style-notification.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/booking.css" rel="stylesheet" type="text/css" />

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
    margin-top:145px
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
/*				padding:5px 10%; */	
		}
			
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
.pelement {
    /*margin: 10px;
    line-height: 14px;*/
    color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:610px;text-align:justify; margin-left:10px; margin-top:-9px; line-height:20px;
}
.datepic{}

</style> 
<%-- <script  src="js/jquery-1.8.2.js"></script>
<script  src="js/jquery-ui.js"></script>
<script type='text/javascript' src="js/jquery.min.js"></script>
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery-ui.min.js" type="text/javascript"></script> 
<script src="js/jquery.min-1.8.js" type="text/javascript"></script>
<script type="text/javascript" src="js/bookflip.js"></script>
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>--%>

<script src="textslider/jquery.min.js" type="text/javascript"></script>
<%--<script src="textslider/bootstrap-transition.js"></script>
<script src="textslider/bootstrap-modal.js"></script>
<script src="textslider/bootstrap-tab.js"></script>--%>
<script src="js/interactive_map.js" type="text/javascript"></script>
<%--<script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script type="text/javascript" src="js/jquery1-1.8.3(1).js"></script>--%>
 <script src="js/jquery-1.8.2.js" type="text/javascript"></script>
<script src="js/jquery-ui.js" type="text/javascript"></script>
 <script type="text/javascript">
      $(document).ready(function () {
          var counter = 1;
          $("#addButton").click(function () {
              if (counter == 4) {
                  alert("Only 3 textboxes allow");
                  return false;
              }
              $('#tabadd tr:last').after('<tr ><td><input name="TextBoxs1" type="text" value="Select Origin" class="intern" id="TextBoxs' + counter +
               '" style="background-color:#F6F6F6;height:30px;width:275px;" />'+
               '</td><td align="center">&#x21c4;</td><td><input name="TextBoxs2" type="text" value="Select Destination" class="intern" id="TextBoxs2' + counter +
               '" style="background-color:#F6F6F6;height:30px;width:270px;" /></td></tr>');
              counter++;
          });
          $("#removeButton").click(function () {
              if (counter == 1) {
                  alert("No more textbox to remove");
                  return false;
              }             
              $('#tabadd tr:last').remove();
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
     <script type="text/javascript">
         $(document).ready(function () {
             $('#txtHcin').change(function () {
                 if ($('#txtHcin').datepicker("getDate") != null) {
                     $("#txtNoNights").val("1");
                     filldates(1);
                 }
             });
             $("#txtNoNights").change(function () {
                 if ($('#txtHcin').datepicker("getDate") != null) {
                     var incr = parseInt($("#txtNoNights").val());
                     filldates(incr);
                 }
             });
             $('#txtHcout').change(function () {
                 if ($('#txtHcin').datepicker("getDate") != null) {
                     if ($('#txtHcout').val() < $('#txtHcin').val()) {
                         alert('Out date must be grater than In date');
                         $('#txtHcout').val('');
                         $('#txtHcout').focus();
                     }
                     else {
                         var d1 = $('#txtHcin').datepicker("getDate");
                         var d2 = $('#txtHcout').datepicker("getDate");
                         $("#txtNoNights").val(Math.floor((d2.getTime() - d1.getTime()) / 86400000));
                     }
                 }
                 else
                 { alert('Enter In date'); $('#txtHcout').val(''); $('#txtHcin').focus(); }
             });
             function filldates(night) {
                 var date2 = $('#txtHcin').datepicker('getDate');
                 date2.setDate(date2.getDate() + night);
                 $('#txtHcout').datepicker('setDate', date2);
             }
             
         });


    </script>
    <script type="text/javascript">
        function filldata() {
            var txtdom = document.getElementById("txtHdoSer").value;
            var txtinter = document.getElementById("txtInterhSer").value;
            var txtcin = document.getElementById("txtHcin").value;
            var txtcout = document.getElementById("txtHcout").value;
            if (txtdom == "" && txtinter == "") {
                alert('Please Select Hotel');
                return false;
            }
            else if (txtcin == "") {
                $('#txtHcin').focus();
                return false;
            }
            else if (txtcout == "") {
                $('#txtHcout').focus();
                return false;
            }
            else
                return true;
        }
        function holidayValid(txtbox) {
            var txttheme = document.getElementById(txtbox);
            if (txttheme.value == "") {
                alert('Select Destination / Theme');
                txttheme.focus();
                return false;
            }
            return true;
        }
    </script>

 <style type="text/css">
.ui-autocomplete {
    max-height: 300px;
    overflow-y: auto;   
    overflow-x: hidden;    
    padding-right: 20px;
}
* html .ui-autocomplete {
    height: 300px;
}
</style>
 <script type="text/javascript" language="javascript">
         $(function () {
             cssFmt(".domes", "domestic");
             cssFmt(".intern", "international"); 
             cssFmt(".dhotel", "dhotel");  
             cssFmt(".ihotel", "ihotel");
             cssFmt(".holiday", "dholiday");
             cssFmt(".seBus", "buses");   
             cssFmt(".seTrain", "trains");
         });
         function cssFmt(csstype,vech) {
             $(csstype).autocomplete({
                 source: function (request, response) {
                     putFmt(vech, request.term, response);
                 },
                 minLength: 1
             });
         }
         function putFmt(sear_type, request, response) {
             $.ajax({
                 url: "AreasList.asmx/FetchCitiesList",                
                 data: "{ 'city': '" + request + "' ," +
                          "'fname': '" + sear_type + "'}",
                 dataType: "json",
                 type: "POST",
                 contentType: "application/json; charset=utf-8",
                 dataFilter: function (data) { return data; },
                 success: function (data) {
                     response($.map(data.d, function (item) {
                         return {
                             value: item.Cityname
                         }
                     }))
                 },
                 error: function (XMLHttpRequest, textStatus, errorThrown) {
                     //alert(textStatus);
                 }
             });
         }
</script>
 <script type="text/javascript">
      $(function () {
          var date = new Date();
          var currentMonth = date.getMonth();
          var currentDate = date.getDate();
          var currentYear = date.getFullYear();
          $('.datepic').datepicker({
              minDate: new Date(currentYear, currentMonth, currentDate)
          });
      });
</script>
 <script type="text/javascript"  language="javascript">
    function cleartext(txttext)   
    {
        txttext.value = "";
    }    
 </script>   
</head>
<body >
 <form id="form1" runat="server">
<ajax:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
     </ajax:ToolkitScriptManager>   
<div id="wrapperclass">
<TraH:Head ID="THead" runat="server" />
<div class="banner_billow"  style="margin-top:-8px;">
<div class="billow_left" style="height:330px;">
<div class="head">
<div class="divTick" >
<span style="text-align:center; font-size:16px; font-family:Arial, Helvetica, sans-serif; color:#ffffff; line-height:30px;margin-left:20px;
     font-weight:bold; "><%--Book Your Tickets--%> Plan Your Trip</span>         
</div><!--tickets-->
<div class="fli" id="bdiv1" >
</div>
<div class="hot" id="bdiv2">
</div>
<div class="hol" id="bdiv3">
</div>
<div class="bus" id="bdiv4">
</div>
<div class="tra" id="bdiv5">
</div>
</div>
<div id="flightsdiv" style="width:97.5%; margin:9px 8px 8px 6px; height:280px; border:1px solid #2167A0; border-radius:5px; ">
<div style="font-family:Arial, Helvetica, sans-serif; font-size:16px; color:#002073; margin-left:10px;
     font-weight:bold; margin-top:10px; ">     
     <div class="plandiv" id="pldiv">
<div id="pd1" class="pdiv1"><p style="margin:4px;">Domestic</p></div>
<div id="pd2" class="pdiv2"><p style="margin:4px;">International</p></div>
</div>
     </div>     
<div class="text">
</div>
<div id="ways" style="width:100%; margin-top:5px; text-align:center; padding-left:130px;">
<div id="way1" class="bgcols" ><p style="margin:5px; font-weight:bold;">One Way</p></div>
<div id="way2" ><p style="margin:5px; font-weight:bold;">Round Trip</p></div>
<div id="mway" ><p style="margin:5px; font-weight:bold;">Multi City / Stop Over</p></div>
</div>
<div id="routediv" style="width:100%; float:left;">
<table width="75%" style="margin-left:6px;">
<tr>
<td colspan="3" height="10px"><hr /></td></tr>
<tr id="tr12" runat="server" height="80" >
<td colspan="3" >
<table width="100%">
<tr >
<td ><p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif;  margin-left:13px;">From:</p>
</td><td width="5px">&nbsp;</td>
<td><p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif;  margin-left:13px;">To:</p></td>
</tr>
<tr id="domefrmtr"  runat="server">
<td>
 <asp:TextBox ID ="txtFrom" runat ="server" Height="30" Width="285" BackColor="#f6f6f6" onfocus="javascript:cleartext(this);" CssClass="domes"></asp:TextBox>
<ajax:TextBoxWatermarkExtender ID="water1" runat="server" TargetControlID="txtFrom" WatermarkText="Select Origin"
 WatermarkCssClass="watertext"></ajax:TextBoxWatermarkExtender>
 <%--<ajax:AutoCompleteExtender ID="auto1" runat="server" CompletionInterval="1000" CompletionSetCount="1" 
  EnableCaching="true" MinimumPrefixLength="1" ServiceMethod="DomesticFlight" ShowOnlyCurrentWordInCompletionListItem="true"s
   TargetControlID="txtFrom" CompletionListCssClass="autobox">
  </ajax:AutoCompleteExtender>--%>
</td>
<td  align="center">&#x21c4;
</td>
<td> <asp:TextBox ID ="txtTo" runat ="server" Height="30" Width="280" BackColor="#f6f6f6" onfocus="javascript:cleartext(this);" CssClass="domes"></asp:TextBox>
<ajax:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="txtTo" 
WatermarkText="Select Destination" WatermarkCssClass="watertext"></ajax:TextBoxWatermarkExtender>
<%--<ajax:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" CompletionInterval="1000" CompletionSetCount="1" 
  EnableCaching="true" MinimumPrefixLength="1" ServiceMethod="DomesticFlight" ShowOnlyCurrentWordInCompletionListItem="true"
   TargetControlID="txtTo" CompletionListCssClass="autobox">
  </ajax:AutoCompleteExtender>--%>
</td>
</tr>
<tr id="interfrmtr"  runat="server">
<td >
 <asp:TextBox ID ="txtinterfrm" runat ="server" Height="30" Width="285" BackColor="#f6f6f6" onfocus="javascript:cleartext(this);" CssClass="intern"></asp:TextBox>
<ajax:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender17" runat="server" TargetControlID="txtinterfrm" WatermarkText="Select Origin"
 WatermarkCssClass="watertext"></ajax:TextBoxWatermarkExtender>
 <%--<ajax:AutoCompleteExtender ID="AutoCompleteExtender2" runat="server" CompletionInterval="1000" CompletionSetCount="1" 
  EnableCaching="true" MinimumPrefixLength="1" ServiceMethod="InterFlight" ShowOnlyCurrentWordInCompletionListItem="true"
   TargetControlID="txtinterfrm" CompletionListCssClass="autobox">
  </ajax:AutoCompleteExtender>--%>
</td>
<td  align="center">&#x21c4;
</td>
<td> <asp:TextBox ID ="txtinterto" runat ="server" Height="30" Width="280" BackColor="#f6f6f6" onfocus="javascript:cleartext(this);" CssClass="intern"></asp:TextBox>
<ajax:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender18" runat="server" TargetControlID="txtinterto" 
WatermarkText="Select Destination" WatermarkCssClass="watertext"></ajax:TextBoxWatermarkExtender>
<%--<ajax:AutoCompleteExtender ID="AutoCompleteExtender3" runat="server" CompletionInterval="1000" CompletionSetCount="1" 
  EnableCaching="true" MinimumPrefixLength="1" ServiceMethod="InterFlight" ShowOnlyCurrentWordInCompletionListItem="true"
   TargetControlID="txtinterto" CompletionListCssClass="autobox">
  </ajax:AutoCompleteExtender>--%>
</td>
</tr>
</table>
</td></tr>
<tr id="trmul" runat="server" >
<td colspan="3" >
<div style="float:left; height:80px; overflow-y:scroll" >
<table width="90%" id="tabadd">
<tr>
<td ><p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif;  margin-left:13px;">From:</p>
</td><td width="5px">&nbsp;</td>
<td><p style="color:#074b79; font-size:14px; font-family:Arial, Helvetica, sans-serif;  margin-left:13px;">To:</p></td>
</tr>
<tr >
<td > <asp:TextBox ID ="txt2from" runat ="server" Height="30" Width="275" BackColor="#f6f6f6" onfocus="javascript:cleartext(this);" CssClass="intern"></asp:TextBox>
<ajax:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender4" runat="server" TargetControlID="txt2from" WatermarkText="Select Origin"
 WatermarkCssClass="watertext"></ajax:TextBoxWatermarkExtender>
 <%--<ajax:AutoCompleteExtender ID="AutoCompleteExtender4" runat="server" CompletionInterval="1000" CompletionSetCount="1" 
  EnableCaching="true" MinimumPrefixLength="1" ServiceMethod="InterFlight" ShowOnlyCurrentWordInCompletionListItem="true"
   TargetControlID="txt2from" CompletionListCssClass="autobox">
  </ajax:AutoCompleteExtender>--%>
</td>
<td  align="center">&#x21c4;
</td>
<td> <asp:TextBox ID ="txt2to" runat ="server" Height="30" Width="270" BackColor="#f6f6f6" onfocus="javascript:cleartext(this);" CssClass="intern"></asp:TextBox>
<ajax:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender5" runat="server" TargetControlID="txt2to" 
WatermarkText="Select Destination" WatermarkCssClass="watertext"></ajax:TextBoxWatermarkExtender>
<%--<ajax:AutoCompleteExtender ID="AutoCompleteExtender5" runat="server" CompletionInterval="1000" CompletionSetCount="1" 
  EnableCaching="true" MinimumPrefixLength="1" ServiceMethod="InterFlight" ShowOnlyCurrentWordInCompletionListItem="true"
   TargetControlID="txt2to" CompletionListCssClass="autobox">
  </ajax:AutoCompleteExtender>--%>
</td>
</tr>
<%--<tr><td colspan="3" align="right">
</td></tr>--%>
</table>
<div id="TextBoxesGroup1" >
<div id="Div1" style="float:right; top:4px;  padding:10px;">
<input type='button' value='remove' id='removeButton'/>
</div> 
<div id="addButton0" style="float:right; top:4px; padding:10px;">
<input type='button' value='add' id='addButton'/>
</div>
</div>
</div>

</td></tr>
<tr>
<td colspan="3">
<table width="100%">
<tr>
<td > Departure </td>
<td > Return</td>
<td > Adult </td>
<td > Child(2-12 yrs)</td>
<td > Infant(0-2 yrs)</td>
<td >Class </td>

</tr>
<tr>
<td > 
<%--<script src="js/Extension.min.js" type="text/javascript"></script>--%> 
<asp:TextBox ID ="txtDepart" runat ="server" Height="25" Width="100" BackColor="#f6f6f6" CssClass="datepic" ></asp:TextBox>
 <ajax:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" TargetControlID="txtDepart" 
WatermarkText="mm/dd/yy" WatermarkCssClass="watertext"></ajax:TextBoxWatermarkExtender>
<%--<ajax:CalendarExtender ID="cal1" runat="server" TargetControlID="txtDepart" PopupPosition="TopRight"></ajax:CalendarExtender>--%> 
 
</td>

<td > 
<asp:TextBox ID ="txtReturn" runat ="server" Height="25" Width="100" BackColor="#f6f6f6" CssClass="datepic"  ></asp:TextBox>
<ajax:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" TargetControlID="txtReturn" 
WatermarkText="mm/dd/yy" WatermarkCssClass="watertext"></ajax:TextBoxWatermarkExtender> 
<%--<ajax:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtReturn" PopupPosition="TopRight"></ajax:CalendarExtender> --%>

</td>
<td > 
<asp:DropDownList ID="ddlFAdult" runat ="server" BackColor="#f6f6f6" Width="75" Height="35">
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
</asp:DropDownList>
</td>
<td > 
<asp:DropDownList ID="ddlFchild" runat ="server" BackColor="#f6f6f6" Width="85" Height="35">
<asp:ListItem Value="0" Text="0"></asp:ListItem>
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
</asp:DropDownList>
</td>
<td > 
<asp:DropDownList ID="ddlFinfant" runat ="server" BackColor="#f6f6f6" Width="75" Height="35">
<asp:ListItem Value="0" Text="0"></asp:ListItem>
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
 
</asp:DropDownList>
</td>
<td > 
<asp:DropDownList ID ="ddlFEB" runat ="server" BackColor="#f6f6f6" Width="105" Height="35">
<asp:ListItem Value="0" Text="Economy"></asp:ListItem>
<asp:ListItem Value="1" Text="Business"></asp:ListItem>
</asp:DropDownList>
</td>
</tr>

</table>
</td>
</tr>
<tr>
<td colspan="3"><hr /></td>
</tr>
<tr >
<td colspan="3" style="padding-left:150px;">
<asp:Button ID ="btnFSearch" runat ="server" CssClass="butn22" Text="Search Flights" />
</td>
</tr>
</table>
</div>
</div>   
<div id="hotelsdiv" style="width:97.5%; margin:9px 8px 8px 6px; height:280px; border:1px solid #2167A0; border-radius:5px; ">
<div style="font-family:Arial, Helvetica, sans-serif; font-size:16px; color:#002073; margin-left:10px;
     font-weight:bold; margin-top:10px; ">
     <div style=" font-size:12pt; color:Gray; font-weight:bold; width:100%">Book Your Hotel Online</div>   
     <div class="plandiv" id="hindiv">
<div id="hdodiv" class="pdiv1"><p style="margin:4px;">Domestic Hotel</p></div>
<div id="hinterdiv" class="pdiv2"><p style="margin:4px;">International Hotel</p></div>
</div>
<div id="hdomsearch" style="display:block ;padding-top:5px;">
<div style="float:left; width:100%; color:Gray; font-size:9pt;">Find Hotels In India</div>
<div style="width:100%">
<asp:TextBox ID="txtHdoSer" runat="server" BackColor="#F6F6F6" Height="30" Width="500" onfocus="javascript:cleartext(this);" CssClass="dhotel"></asp:TextBox>
<ajax:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender6" runat="server" TargetControlID="txtHdoSer" 
WatermarkText="Enter your Destination City Or Hotel" WatermarkCssClass="watertext"></ajax:TextBoxWatermarkExtender> 
<%--<ajax:AutoCompleteExtender ID="AutoCompleteExtender6" runat="server" CompletionInterval="1000" CompletionSetCount="1" 
  EnableCaching="true" MinimumPrefixLength="1" ServiceMethod="DomesticHotel" ShowOnlyCurrentWordInCompletionListItem="true"
   TargetControlID="txtHdoSer" CompletionListCssClass="autobox">
  </ajax:AutoCompleteExtender>--%>
</div>
</div>
<div id="IntSerachdiv" style="display:none; padding-top:5px;">
<div style="float:left; width:100%; color:Gray; font-size:9pt;">Find International Hotels</div>
<div style="width:100%">
<asp:TextBox ID="txtInterhSer" runat="server" BackColor="#F6F6F6" Height="30" Width="500" onfocus="javascript:cleartext(this);" CssClass="ihotel"></asp:TextBox>
<ajax:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender7" runat="server" TargetControlID="txtInterhSer" 
WatermarkText="Enter your Destination City Or Hotel" WatermarkCssClass="watertext"></ajax:TextBoxWatermarkExtender> 

<%--<ajax:AutoCompleteExtender ID="AutoCompleteExtender7" runat="server" CompletionInterval="1000" CompletionSetCount="1" 
  EnableCaching="true" MinimumPrefixLength="1" ServiceMethod="InterHotel" ShowOnlyCurrentWordInCompletionListItem="true"
   TargetControlID="txtInterhSer" CompletionListCssClass="autobox">
  </ajax:AutoCompleteExtender>--%>
</div>
</div>

<table width="100%">
<tr>
<td><p style="color:Gray; font-size:9pt;">Check-in</p></td>
<td><p style="color:Gray; font-size:9pt;">No. Nights</p></td>
<td><p style="color:Gray; font-size:9pt;">Check-out</p></td>
</tr>
<tr>
<td>
<asp:TextBox ID ="txtHcin" runat ="server" Height="25" Width="150" BackColor="#f6f6f6" CssClass="datepic" ></asp:TextBox>
<%--<ajax:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender8" runat="server" TargetControlID="txtHcin" 
WatermarkText="mm/dd/yy" WatermarkCssClass="watertext"></ajax:TextBoxWatermarkExtender>--%>
<%--<asp:RequiredFieldValidator ID="required12s" runat="server" ControlToValidate="txtHcin" ErrorMessage="Enter check in date" ValidationGroup="hotelser" >*</asp:RequiredFieldValidator>--%> 
</td>
<td>
<asp:TextBox ID ="txtNoNights" runat ="server" Height="25" Width="150" BackColor="#f6f6f6" MaxLength="2" onfocus="javascript:cleartext(this);" ></asp:TextBox>
<ajax:FilteredTextBoxExtender ID="filter1" runat="server" TargetControlID="txtNoNights" FilterMode="ValidChars" ValidChars="0123456789"></ajax:FilteredTextBoxExtender>
<%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNoNights" ErrorMessage="Enter Number of Nights" ValidationGroup="hotelser" >*</asp:RequiredFieldValidator>--%> 
</td>

<td >
<asp:TextBox ID ="txtHcout" runat ="server" Height="25" Width="150" BackColor="#f6f6f6" CssClass="datepic"  ></asp:TextBox>
<%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtHcout" ErrorMessage="Enter check out date" ValidationGroup="hotelser" >*</asp:RequiredFieldValidator>--%> 
<%--<ajax:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender9" runat="server" TargetControlID="txtHcout" 
WatermarkText="mm/dd/yy" WatermarkCssClass="watertext"></ajax:TextBoxWatermarkExtender>--%> 
</td>

</tr>
</table> 
<table width="100%">
<tr>
<td><p style="color:Gray; font-size:9pt;">No. Rooms</p></td>
<td><p style="color:Gray; font-size:9pt;">No. Adults (12+ yrs)</p></td>
<td><p style="color:Gray; font-size:9pt;">No. Child (< 12 yrs)</p></td>
<td></td>
</tr>
<tr>
<td>
<asp:DropDownList ID="ddlHRooms" runat ="server" BackColor="#f6f6f6" Width="130" Height="35">
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 
<asp:ListItem Value="7" Text="7"></asp:ListItem> 
<asp:ListItem Value="8" Text="8"></asp:ListItem> 
<asp:ListItem Value="9" Text="9"></asp:ListItem> 
</asp:DropDownList>
</td>
<td>
<asp:DropDownList ID="ddlHAdults" runat ="server" BackColor="#f6f6f6" Width="130" Height="35">
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
</asp:DropDownList>
</td>
<td>
<asp:DropDownList ID="ddlHChild" runat ="server" BackColor="#f6f6f6" Width="130" Height="35">
<asp:ListItem Value="0" Text="0"></asp:ListItem> 
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
</asp:DropDownList>
</td>
<td valign="top">
<asp:Button ID ="btnHSearch" runat ="server" CssClass="butn22 marr" OnClientClick="return filldata()"  ValidationGroup="hotelser"  Text="Search Hotel" />

</td>
</tr>
</table>
     </div>
 
</div>
<div id="HolidayDiv" style="width:97.5%; margin:9px 8px 8px 6px; height:280px; border:1px solid #2167A0; border-radius:5px; ">
<div style="font-family:Arial, Helvetica, sans-serif; font-size:16px; color:#002073; margin-left:10px; font-weight:bold; margin-top:10px; ">
     <div style=" font-size:12pt; color:Gray; font-weight:bold; width:100%; margin-top:-5px;">Book Your Holiday Package</div>   
     <div style="width:100%">
     <p style="color:Gray; font-size:9pt;">Destination/Theme</p>
     </div>
     <div style="margin-top:-10px;">
     <asp:TextBox ID="txtHoliday" runat="server" BackColor="#F6F6F6" Height="30" Width="500" onfocus="javascript:cleartext(this);" CssClass="holiday"></asp:TextBox>
<ajax:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender10" runat="server" TargetControlID="txtHoliday" 
WatermarkText="e.g. Goa, Agra, Thailand or Honeymoon" WatermarkCssClass="watertext"></ajax:TextBoxWatermarkExtender> 
<%--<ajax:AutoCompleteExtender ID="AutoCompleteExtender8" runat="server" CompletionInterval="1000" CompletionSetCount="1" 
  EnableCaching="true" MinimumPrefixLength="1" ServiceMethod="SearchHoliday" ShowOnlyCurrentWordInCompletionListItem="true"
   TargetControlID="txtHoliday" CompletionListCssClass="autobox">
  </ajax:AutoCompleteExtender>--%>
     </div>
     <table width="100%" >
     <tr >
     <td > <p style="color:Gray; font-size:9pt;">No. of Days</p></td>
     <td ><p style="color:Gray; font-size:9pt;">Month of Travel</p></td>
     </tr>
     <tr>
     <td><asp:DropDownList ID="ddlHolDays" runat ="server" BackColor="#f6f6f6" Width="260" Height="32">
<asp:ListItem Value="0" Text="All"></asp:ListItem> 
<asp:ListItem Value="1" Text="0-3 Days"></asp:ListItem> 

<asp:ListItem Value="2" Text="4-7 Days"></asp:ListItem> 
<asp:ListItem Value="3" Text=">7 Days"></asp:ListItem> 

</asp:DropDownList></td>
     <td><asp:DropDownList ID="ddlMtravel" runat ="server" BackColor="#f6f6f6" Width="260" Height="32"></asp:DropDownList></td>
     </tr>
     <tr>
     <td> <p style="color:Gray; font-size:9pt;">Budget Per Person</p></td>
     <td><p style="color:Gray; font-size:9pt;">Star Rating</p></td>
     </tr>
     <tr>
     <td><asp:DropDownList ID="ddlHolidayBudget" runat ="server" BackColor="#f6f6f6" Width="260" Height="33">
<asp:ListItem Value="0" Text="All"></asp:ListItem> 
<asp:ListItem Value="1" >less than &#2352; 25000 </asp:ListItem> 
<asp:ListItem Value="2" >&#2352; 25000 - &#2352; 50000</asp:ListItem> 
<asp:ListItem Value="3" >&#2352; 50000 - &#2352; 100000</asp:ListItem> 
<asp:ListItem Value="4" > > &#2352; 100000 </asp:ListItem>  
</asp:DropDownList></td>
     <td><asp:DropDownList ID="ddlHolidayRating" runat ="server" BackColor="#f6f6f6" Width="260" Height="33">
<asp:ListItem Value="0" Text="All"></asp:ListItem> 
<asp:ListItem Value="1" Text="Upto 3 Star"></asp:ListItem> 
<asp:ListItem Value="2" Text="4 Star"></asp:ListItem> 
<asp:ListItem Value="3" Text="5 Star"></asp:ListItem>  
</asp:DropDownList></td>
     </tr>
     <tr>
     <td align="center" colspan="2">
     <asp:Button ID ="btnHoliday" runat ="server" CssClass="butn22 marr"  Text="Search Holiday" OnClientClick="return holidayValid('txtHoliday');" OnClick="btnHoliday_Click" />
     </td>
     </tr>
     </table>
</div>
</div>
<div id="BusDiv" style="width:97.5%; margin:9px 8px 8px 6px; height:280px; border:1px solid #2167A0; border-radius:5px; ">
<div style="font-family:Arial, Helvetica, sans-serif; font-size:16px; color:#002073; margin-left:10px;
     font-weight:bold; margin-top:10px; ">
     <div style=" font-size:12pt; color:Gray; font-weight:bold; width:100%; margin-top:-5px;">Book Your Bus Tickets Online</div>   
    <div style="width:98%; text-align:justify; margin-top:10px;" >
    <p style="color:Gray; font-size:9pt;">&emsp; &emsp;
    Book the best bus for your journey. Choose from over 700 bus travel operators all over India and book your ticket.</p>
    </div>
     <div style="margin-top:10px;">
    
     </div>
     <table width="100%" >
     <tr >
     <td ><p style="color:Gray; font-size:9pt;">From (Any location inside India)</p></td>
     <td style="width:20px;"></td>
     <td ><p style="color:Gray; font-size:9pt;">To (Any location inside India)</p></td>
     </tr>
     <tr>
     <td> <asp:TextBox ID="txtBusfrom" runat="server" BackColor="#F6F6F6" Height="30" Width="270" onfocus="javascript:cleartext(this);" CssClass="seBus"></asp:TextBox>
<ajax:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender11" runat="server" TargetControlID="txtBusfrom" 
WatermarkText="Type Departure Location" WatermarkCssClass="watertext"></ajax:TextBoxWatermarkExtender> 
<%--<ajax:AutoCompleteExtender ID="AutoCompleteExtender9" runat="server" CompletionInterval="1000" CompletionSetCount="1" 
  EnableCaching="true" MinimumPrefixLength="1" ServiceMethod="SearchBus" ShowOnlyCurrentWordInCompletionListItem="true"
   TargetControlID="txtBusfrom" CompletionListCssClass="autobox">
  </ajax:AutoCompleteExtender>--%>
</td>
<td  align="left" width="15" style="color:Gray">&#x21c4;
</td>
     <td>
     <asp:TextBox ID="txtBusTo" runat="server" BackColor="#F6F6F6" Height="30" Width="270" onfocus="javascript:cleartext(this);" CssClass="seBus"></asp:TextBox>
<ajax:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender12" runat="server" TargetControlID="txtBusTo" 
WatermarkText="Type Arrival Location" WatermarkCssClass="watertext"></ajax:TextBoxWatermarkExtender> 
<%--<ajax:AutoCompleteExtender ID="AutoCompleteExtender10" runat="server" CompletionInterval="1000" CompletionSetCount="1" 
  EnableCaching="true" MinimumPrefixLength="1" ServiceMethod="SearchBus" ShowOnlyCurrentWordInCompletionListItem="true"
   TargetControlID="txtBusTo" CompletionListCssClass="autobox">
  </ajax:AutoCompleteExtender>--%>
</td>
    
     </tr>   
     <tr>
     <td colspan="3" align="left">
     <p style="color:Gray; font-size:9pt;">Departure</p>
     </td>
     </tr>
     <tr>
     <td  colspan="3">
       <div style="float:left">
     <asp:TextBox ID ="txtBusDept" runat ="server" Height="25" Width="150" BackColor="#f6f6f6" CssClass="datepic"  ></asp:TextBox>
<ajax:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender13" runat="server" TargetControlID="txtBusDept" 
WatermarkText="mm/dd/yy" WatermarkCssClass="watertext"></ajax:TextBoxWatermarkExtender> 
     </div>&emsp; &emsp;
     <asp:Button ID ="btnBusSearch" runat ="server" CssClass="butn22 marr"  Text="Search Bus" />

     </td>
     </tr>
     </table>
   
</div>
</div>
<div id="TrainDiv" style="width:97.5%; margin:9px 8px 8px 6px; height:280px; border:1px solid #2167A0; border-radius:5px; ">
<div style="font-family:Arial, Helvetica, sans-serif; font-size:16px; color:#002073; margin-left:10px;
     font-weight:bold; margin-top:10px; ">
     <div style=" font-size:12pt; color:Gray; font-weight:bold; width:100%; margin-top:-5px;">Book Your Train Tickets Online</div>   
   
     <div style="margin-top:10px;">
    
     </div>
     <table width="100%" >
     <tr >
     <td ><p style="color:Gray; font-size:9pt;">From </p></td>
     <td style="width:20px;"></td>
     <td ><p style="color:Gray; font-size:9pt;">To </p></td>
     </tr>
     <tr>
     <td> <asp:TextBox ID="txtTrainFrom" runat="server" BackColor="#F6F6F6" Height="30" Width="270" onfocus="javascript:cleartext(this);" CssClass="seTrain"></asp:TextBox>
<ajax:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender14" runat="server" TargetControlID="txtTrainFrom" 
WatermarkText="Type Departure Location" WatermarkCssClass="watertext"></ajax:TextBoxWatermarkExtender> 
<ajax:AutoCompleteExtender ID="AutoCompleteExtender11" runat="server" CompletionInterval="1000" CompletionSetCount="1" 
  EnableCaching="true" MinimumPrefixLength="1" ServiceMethod="SearchTrain" ShowOnlyCurrentWordInCompletionListItem="true"
   TargetControlID="txtTrainFrom" CompletionListCssClass="autobox">
  </ajax:AutoCompleteExtender>
</td>
<td  align="left" style="color:Gray">&#x21c4;
</td>
     <td>
     <asp:TextBox ID="txtTrainTo" runat="server" BackColor="#F6F6F6" Height="30" Width="270" onfocus="javascript:cleartext(this);" CssClass="seTrain"></asp:TextBox>
<ajax:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender15" runat="server" TargetControlID="txtTrainTo" 
WatermarkText="Type Arrival Location" WatermarkCssClass="watertext"></ajax:TextBoxWatermarkExtender> 
<ajax:AutoCompleteExtender ID="AutoCompleteExtender12" runat="server" CompletionInterval="1000" CompletionSetCount="1" 
  EnableCaching="true" MinimumPrefixLength="1" ServiceMethod="SearchTrain" ShowOnlyCurrentWordInCompletionListItem="true"
   TargetControlID="txtTrainTo" CompletionListCssClass="autobox">
  </ajax:AutoCompleteExtender>
</td>
    
     </tr> 
     <tr>
     <td colspan="3">
     <table width="100%">
     <tr>
     <td><p style="color:Gray; font-size:9pt;">Adults </p></td>
     <td><p style="color:Gray; font-size:9pt;">Children </p></td>
     <td><p style="color:Gray; font-size:9pt;">Senior Men </p></td>
     <td><p style="color:Gray; font-size:9pt;">Senior Women </p></td>
     </tr>
     <tr>
     <td><asp:DropDownList ID="DropDownList9" runat ="server" BackColor="#f6f6f6" Width="130" Height="35">
         <asp:ListItem Value="0" Text="0"></asp:ListItem>
<asp:ListItem Value="1" Text="1" Selected="True"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 

</asp:DropDownList></td>
     <td><asp:DropDownList ID="DropDownList12" runat ="server" BackColor="#f6f6f6" Width="130" Height="35">
     <asp:ListItem Value="0" Text="0"></asp:ListItem> 
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem> 

</asp:DropDownList></td>
     <td><asp:DropDownList ID="DropDownList13" runat ="server" BackColor="#f6f6f6" Width="130" Height="35">
 <asp:ListItem Value="0" Text="0"></asp:ListItem> 
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem>
</asp:DropDownList></td>
     <td><asp:DropDownList ID="DropDownList14" runat ="server" BackColor="#f6f6f6" Width="130" Height="35">
 <asp:ListItem Value="0" Text="0"></asp:ListItem> 
<asp:ListItem Value="1" Text="1"></asp:ListItem> 
<asp:ListItem Value="2" Text="2"></asp:ListItem> 
<asp:ListItem Value="3" Text="3"></asp:ListItem> 
<asp:ListItem Value="4" Text="4"></asp:ListItem> 
<asp:ListItem Value="5" Text="5"></asp:ListItem> 
<asp:ListItem Value="6" Text="6"></asp:ListItem>
</asp:DropDownList>
</td>
     </tr>
     <tr>
     <td ><p style="color:Gray; font-size:9pt;">Class </p></td> 
     <td><p style="color:Gray; font-size:9pt;">Departure </p></td>   
     <td colspan="2"></td>
     </tr>
      <tr>
     <td >
     <asp:DropDownList ID="DropDownList15" runat ="server" BackColor="#f6f6f6" Width="130" Height="35">
<asp:ListItem value="ALL" selected="True">All Classes</asp:ListItem>
<asp:ListItem value="1A">1A - AC First Class</asp:ListItem>
<asp:ListItem value="2A">2A - AC 2 Tier</asp:ListItem>
<asp:ListItem value="3A">3A - AC 3 Tier</asp:ListItem>
<asp:ListItem value="3E">3E - AC 3 Tier Economy</asp:ListItem>
<asp:ListItem value="CC">CC - AC Chair Car</asp:ListItem>
<asp:ListItem value="FC">FC - First Class</asp:ListItem>
<asp:ListItem value="SL">SL - Sleeper</asp:ListItem>
<asp:ListItem value="2S">2S - Second Sitting</asp:ListItem>
</asp:DropDownList>
     </td> 
     <td>
     <asp:TextBox ID ="txtTrainDep" runat ="server" Height="25" Width="150" BackColor="#f6f6f6" CssClass="datepic" ></asp:TextBox>
<ajax:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender16" runat="server" TargetControlID="txtTrainDep" 
WatermarkText="mm/dd/yy" WatermarkCssClass="watertext"></ajax:TextBoxWatermarkExtender> 
     </td> 
     <td  valign="top">
     <asp:Button ID ="Button5" runat ="server" CssClass="butn22 marr"  Text="Search Train" />
    
     </td>  
     <td><img src="images/irctc.jpg" width="150" height="40" alt="irctc" /></td>
     </tr>
     </table>
     </td>
     </tr>       
     </table>
   
</div>
</div>

<script src="js/watermark.js" type="text/javascript"></script>
<script  type="text/javascript">
    $(document).ready(function () {
        $("#bdiv1").addClass("actflight");
        $("#mway,#trmul").hide();
        $("#way1").css("margin-left", "80px");
        $("#txtReturn").prop("disabled", true);
        $("#txtReturn").css("background-color", "#E4E4E4");
        $("#BusDiv,#hotelsdiv,#HolidayDiv,#TrainDiv,#interfrmtr").hide();
        $("#flightsdiv,#domefrmtr").show();
    });
    $("#bdiv1").click(function () {
        $("#form1 input:text").each(function () {
            this.value = "";
        });
        $('#form1 select').each(function (key, value) {
            $(this)[0].selectedIndex = 0;
        });
        $("#bdiv1").addClass("actflight");
        $("#BusDiv,#hotelsdiv,#HolidayDiv,#TrainDiv").hide();
        $("#flightsdiv").show();
        $("#bdiv2").removeClass("acthotal");
        $("#bdiv3").removeClass("actholiday");
        $("#bdiv4").removeClass("actbus");
        $("#bdiv5").removeClass("acttrain");
    });
    $("#bdiv2").click(function () {
        $("#form1 input:text").each(function () {
            this.value = "";
        });
        $('#form1 select').each(function (key, value) {
            $(this)[0].selectedIndex = 0;
        });
        $("#bdiv1").removeClass("actflight");
        $("#bdiv3").removeClass("actholiday");
        $("#bdiv4").removeClass("actbus");
        $("#bdiv5").removeClass("acttrain");
        $("#bdiv2").addClass("acthotal");
        $("#BusDiv,#flightsdiv,#HolidayDiv,#TrainDiv").hide();
        $("#hotelsdiv").show();
    });
    $("#bdiv3").click(function () {
        $("#form1 input:text").each(function () {
            this.value = "";
        });
        $('#form1 select').each(function (key, value) {
            $(this)[0].selectedIndex = 0;
        });
        $("#bdiv1").removeClass("actflight");
        $("#bdiv3").addClass("actholiday");
        $("#bdiv4").removeClass("actbus");
        $("#bdiv5").removeClass("acttrain");
        $("#bdiv2").removeClass("acthotal");
        $("#BusDiv,#flightsdiv,#hotelsdiv,#TrainDiv").hide();
        $("#HolidayDiv").show();
    });
    $("#bdiv4").click(function () {
        $("#form1 input:text").each(function () {
            this.value = "";
        });
        $('#form1 select').each(function (key, value) {
            $(this)[0].selectedIndex = 0;
        });
        $("#bdiv1").removeClass("actflight");
        $("#bdiv3").removeClass("actholiday");
        $("#bdiv4").addClass("actbus");
        $("#bdiv5").removeClass("acttrain");
        $("#bdiv2").removeClass("acthotal");
        $("#HolidayDiv,#flightsdiv,#hotelsdiv,#TrainDiv").hide();
        $("#BusDiv").show();
    });
    $("#bdiv5").click(function () {
        $("#form1 input:text").each(function () {
            this.value = "";
        });
        $('#form1 select').each(function (key, value) {
            $(this)[0].selectedIndex = 0;
        });
        $("#bdiv1").removeClass("actflight");
        $("#bdiv3").removeClass("actholiday");
        $("#bdiv4").removeClass("actbus");
        $("#bdiv5").addClass("acttrain");
        $("#bdiv2").removeClass("acthotal");
        $("#HolidayDiv,#flightsdiv,#hotelsdiv,#BusDiv").hide();
        $("#TrainDiv").show();
    });
    $("#pd1").click(function () {
        $("#pd2").css("background-color", "#C0C0C0");
        $("#pd1").css("background-color", "#606060");
        $("#pd1").css("color", "white");
        $("#pd2").css("color", "#002073");
        $("#way1").css("margin-left", "80px");
        $("#way1").addClass("bgcols");
        $("#way2,#mway").removeClass("bgcols");
        $("#txtReturn").prop("disabled", true);
        $("#txtReturn").css("background-color", "#E4E4E4");
        $("#mway").hide("slow");
        $("#tr12,#domefrmtr").show();
        $("#trmul,#interfrmtr").hide();
    });
    $("#hdodiv").click(function () {
        $("#hinterdiv").css("background-color", "#C0C0C0");
        $("#hdodiv").css("background-color", "#606060");
        $("#hdodiv").css("color", "white");
        $("#hinterdiv").css("color", "#002073");
        $("#IntSerachdiv").hide();
        $("#hdomsearch").show();
        $("#txtInterhSer").val('');
    });
    $("#hinterdiv").click(function () {
        $("#hdodiv").css("background-color", "#C0C0C0");
        $("#hinterdiv").css("background-color", "#606060");
        $("#hinterdiv").css("color", "white");
        $("#hdodiv").css("color", "#002073");
        $("#hdomsearch").hide();
        $("#IntSerachdiv").show();
        $("#txtHdoSer").val('');
    });
    $("#pd2").click(function () {
        $("#pd1").css("background-color", "#C0C0C0");
        $("#pd2").css("background-color", "#606060");
        $("#pd2").css("color", "white");
        $("#pd1").css("color", "#002073");
        $("#way1").css("margin-left", "0px");
        $("#mway").show("slow");
        $("#interfrmtr").show();
        $("#domefrmtr").hide();
    });
    $("#way1").click(function () {
        $("#way1").addClass("bgcols");
        $("#way2,#mway").removeClass("bgcols");
        $("#txtReturn").prop("disabled", true);
        $("#txtReturn").css("background-color", "#E4E4E4");
        $("#tr12").show();
        $("#trmul").hide();
    });
    $("#way2").click(function () {
        $("#way2").addClass("bgcols");
        $("#way1,#mway").removeClass("bgcols");
        $("#txtReturn").prop("disabled", false);
        $("#txtReturn").css("background-color", "#f6f6f6");
        $("#tr12").show();
        $("#trmul").hide();
    });
    $("#mway").click(function () {
        $("#mway").addClass("bgcols");
        $("#way2,#way1").removeClass("bgcols");
        $("#tr12").hide();
        $("#trmul").show();
    });
</script>
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
                    <a id="lnk_usa" class="dot5" continent="NA" city="USA" title="USA" href="PackageLocation.aspx?loc=USA&type=inter" style="top: 133px; left: 80px;"></a>                    
                    <a id="lnk_canada" class="dot5" continent="NA" city="Canada" title="Canada" href="PackageLocation.aspx?loc=Canada&type=inter" style="top: 81px; left: 56px;"></a>
                    <a id="lnk_turkey" class="dot6" continent="EU" city="Turkey" href="PackageLocation.aspx?loc=Turkey&type=inter" style="top: 120px; left: 350px;"></a>                    
                    <a id="lnk_France" class="dot6" continent="EU" city="France" href="PackageLocation.aspx?loc=France&type=inter" style="top:100px;left: 275px;"></a>
                    <a id="lnk_greece" class="dot6" continent="EU" city="Greece" href="PackageLocation.aspx?loc=Greece&type=inter" style="top: 125px; left: 330px;"></a>                    
                    <a id="lnk_italy" class="dot6" continent="EU" city="Italy" href="PackageLocation.aspx?loc=Italy&type=inter" style="top: 125px; left: 310px;"></a>                    
                    <a id="lnk_spain" class="dot6" continent="EU" city="Spain" href="PackageLocation.aspx?loc=Spain&type=inter" style="top: 125px; left: 280px;"></a>                    
                    <a id="lnk_Switzerland" class="dot6" continent="EU" city="Switzerland" href="PackageLocation.aspx?loc=Switzerland&type=inter" style="top: 110px; left: 310px;"></a>
                    <a id="lnk_southamerica" class="dot4" continent="SA" city="South-America" title="South America" href="PackageLocation.aspx?loc=South-America&type=inter" style="top: 200px;left: 155px;"></a>
                    <a id="lnk_dubai" class="dot2" continent="AS" city="Dubai" title="Dubai" href="PackageLocation.aspx?loc=Dubai&type=inter" style="top: 170px; left: 379px;"></a>                    
                    <a id="lnk_thailand" class="dot2" continent="AS" city="Thailand" href="PackageLocation.aspx?loc=Thailand&type=inter" style="top: 160px; left: 466px;"></a>
                     <a id="lnk_SriLanka" class="dot2" continent="AS" city="India"  href="PackageLocation.aspx?loc=Srilanka&type=inter" style="top: 190px; left: 450px;"></a>                  
                    <a id="lnk_Indonesia" class="dot2" continent="AS" city="Indonesia" href="PackageLocation.aspx?loc=Indonesia&type=inter" style="top: 210px; left: 500px;"></a>                    
                    <a id="lnk_nepal" class="dot2" continent="AS" city="Nepal" href="PackageLocation.aspx?loc=Nepal&type=inter" style="top: 142px; left: 460px;"></a>                
                    <a id="lnk_Singapore" class="dot2" continent="AS" city="Singapore" href="PackageLocation.aspx?loc=Singapore&type=inter" style="top: 202px;  left: 487px;"></a>
                    <a id="lnk_malaysia" class="dot2" continent="AS" city="Malaysia" href="PackageLocation.aspx?loc=Malaysia&type=inter" style="top:180px; left:481px;"></a>                    
                    <a id="lnk_honkong" class="dot2" continent="AS" city="Hongkong" href="PackageLocation.aspx?loc=Honkong&type=inter" style="top: 148px;  left: 510px;"></a>
                    <a id="lnk_australia" class="dot3" continent="AU" city="Australia" title="Australia" href="PackageLocation.aspx?loc=Australia&type=inter" style="top: 242px; left:563px;"></a>                        
                    <a id="lnk_NewZealand" class="dot3" continent="AU" city="NewZealand" href="PackageLocation.aspx?loc=NewZealand&type=inter" style="top: 270px; left: 620px;"></a>
                    <a id="lnk_SouthAfrica" class="dot1" continent="AF" city="SouthAfrica" title="SouthAfrica" href="PackageLocation.aspx?loc=SouthAfrica&type=inter" style="top: 245px;  left: 335px;"></a>
                    <a id="lnk_kenya" class="dot1" continent="AF" city="Kenya" title="Kenya" href="PackageLocation.aspx?loc=Kenya&type=inter" style="top: 200px; left: 350px;"></a>                    
                    <a id="lnk_Mauritius" class="dot1" continent="AF" city="Mauritius" title="Mauritius" href="PackageLocation.aspx?loc=Mauritius&type=inter" style="top: 235px; left: 390px;"></a>                        
                   <%--  <a id="lnk_India" class="dot2" continent="AS" city="India" href="PackageLocation.aspx?loc=India" style="top:175px; left: 442px;"></a>--%>                        
                        <%--</td>--%>
                    <!-- Form -->
                   <%-- </tr>--%> 

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
                                <img class="city_photo" src="images/map/cities/HONGKONG.jpg" alt="Hongkong" width="75" height="75" />
                                <div class="city_info">
                                    <h2>
                                      Hongkong</h2>
                                </div>
                            </a>
                        </div>
                     
                        <!-- City -->
                        <div class="city_detail" id="India">
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/SRILANKA.jpg" alt="India" width="75" height="75" />
                                <div class="city_info">
                                    <h2>
                                       &nbsp;&nbsp;&nbsp;&nbsp; SriLanka</h2>
                                </div>
                            </a>
                        </div>
                           <!-- City -->
                        <div class="city_detail" id="SriLanka" >
                            <a href="#">
                                <img  class="city_photo" src="images/map/cities/SriLanka.jpg" alt="SriLanka" width="75" height="75" />
                                <div class="city_info">                                    <h2>&nbsp; SriLanka</h2>
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
                        <div class="city_detail" id="MALDIVES">
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
<img alt="Indus Image" src="images/welcom_text.png" style="margin-top:-4px;"/>

</div><!--welcome_text-->
<p class="pelement">*Travelling is something which rejuvenates you and fills you up with lots of energy. Yes, that is true because travelers who love to travel, explore the unexplored, learn new things, and so enliven 
their lives. As of today, both business travels and vacation based travels are on a high note. </p>
<p class="pelement">*We have a diverse team of skilled professionals who carry a decent amount of experience in the travel industry. We have always focused upon providing holistic travel solutions, 
right from air ticketing, airfares (domestic and international), hotel booking, visa assistance, rail and bus services, exclusive customer support all the way up to cruise tours.</p>
<p class="pelement">*Indus travels and tours initiated its operations in the year 2001. Since then, our team has worked hard to provide value based cost-effective travel services. Having a decade of experience in the 
global travels and tours domain, we understand in-depth as to how the travel industry functions, as so with such finesse, we assure you that your travel plan will be customized to suit your budget. 
Upon that, you will not only save money but also save time, as our travel consultants will custom design your travel plan in such a way that you can travel quite a few destinations in a less amount of time.</p>
<%--<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; margin-top:-5px; line-height:20px;">* Travel is fatal to prejudice, bigotry, and narrow-mindedness, and many of our people need it sorely on these accounts.  Broad, wholesome, charitable views of men and things cannot be acquired by vegetating in One little corner of the earth all one's lifetime” Custom Designed Vacations. </p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px;">* Indus Travels & Tours travel packages are designed to fit your independent spirit. We know you have your own ideas and special needs, so we offer you complete flexibility in planning your trip. You may choose:</p>
<li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px;list-style:none;">* Special discounted airfares from most U.S. cities to Asia, Africa and rest of the World. </li>
<li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px;list-style:none;">* Any length of stay on any number of destinations</li>
 <li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px;list-style:none;">* Any departure day</li>
<li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px; list-style:none;">* You can make your own small group of family and friends.</li>
<li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px; list-style:none;">* Transportation -- rental cars and round trip transfers to your hotel </li>
<li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px; list-style:none;">* Sightseeing tours, helicopter rides, and much more. </li>
<li style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:570px;
text-align:justify; margin-left:32px; line-height:20px; list-style:none;">* Unlike other travel packages you might see, there are no required purchases of lei greeting, transportation or activities. You pay only for the exact features you wants.</li>
--%></div><!--text_information-->
<img alt="Indus Image" src="images/summer_offer.jpg" width="640" height="45" style="background-color:#090"/>
</div><!--container_left-->
<div class="containe_right">
<h1 style="height: 22px; color: #c62731; font-family: Tahoma, Geneva, sans-serif; font-size: 24px; padding-top: 13px; margin-left: 22px;">
Best Packages for Domestic & International Tours</h1>
<div class="top">
<ul>
<li><a href="PackageLocation.aspx?loc=Kulumanali&type=Domes"><img alt="Indus Image" src="images/kulumanali.jpg" width="158" /></a></li>
<li><a href="PackageLocation.aspx?loc=Agra&type=Domes"> <img alt="Indus Image" src="images/img_02.jpg" width="166" /></a></li>
<li><a href="PackageLocation.aspx?loc=Kerala&type=Domes"> <img alt="Indus Image" src="images/img_03.jpg" width="155" /></a></li>
<li><a href="PackageLocation.aspx?loc=Gujarat&type=Domes"><img alt="Indus Image" src="images/img_04.jpg" width="162" /></a></li>
</ul>
</div><!--top-->
<div class="center">
<ul>
<li><p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; margin-left:-10px;">Kulumanali</p> 
<p style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; margin-left:-10px;">6 Nights 7 Days  Trip</p></li>
<%--<p style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;"></p></li>--%>
<li style="margin-left:72px;"><p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Agra</p> &nbsp;&nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:25px;"></span></p>
<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;"> 4 Nights 5 Days  Trip</span>&nbsp;</p></li>
 <%--<span style="color:#fc2400;  font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; " >Rs. 8,900</span></p></li>--%>
<li  style="margin-left:75px;" > <p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Kerala</p> &nbsp;&nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:25px;"></span></p>
<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;">6 Nights 7 Days Trip</span></p>&nbsp;</li> 
<%--<span style="color:#fc2400; font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; " > Rs. 26,000</span></p></li>--%>
<li style="margin-left:60px;"><p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Gujarat </p> &nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:35px;"></span></p>
<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;">7 Nights 8 Days Trip</span></p>&nbsp;</li>
<%--<span style="color:#fc2400; font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; text-align:left; position:relative; top:-10px;" > Rs. 26,000</span></p></li>--%>
</ul>
</div><!--center-->
<div class="buttom">
<ul>
<li><a href="PackageLocation.aspx?loc=Singapore&type=inter"><img alt="Indus Image" src="images/img_05.jpg" width="158" /></a></li>
<li><a href="PackageLocation.aspx?loc=Australia&type=inter"><img alt="Indus Image" src="images/img_06.jpg" width="166" /></a></li>
<li><a href="PackageLocation.aspx?loc=Thailand&type=inter"><img alt="Indus Image" src="images/img_07.jpg"  width="155"/></a></li>
<li><a href="PackageLocation.aspx?loc=Dubai&type=Domes"><img alt="Indus Image" src="images/modified.png"  width="162" /></a></li >
</ul>
</div><!--buttom-->
<div class="lastone">
<ul>
<li style="margin-left:7px;"><p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" > Singapore</p> &nbsp;&nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:15px;"></span></p>
<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;">4 Nights 5 Days Trip</span>&nbsp;&nbsp;</li>
 <%--<span style="color:#fc2400; font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;" > Rs. 35,900</span></p></li> --%>

<li style="margin-left:61px;"><p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Australia </p> &nbsp;&nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:15px;"></span></p>

<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;">9 Nights 10 Days Trip</span>&nbsp;&nbsp;</li>
 <%--<span style="color:#fc2400; font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; " > Rs. 20,000</span></p></li>--%>
 
<li style="margin-left:60px;"> <p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Thailand </p> &nbsp;&nbsp;&nbsp;&nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:15px;"></span></p>

<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; ">3 Nights 4 Days Trip</span>&nbsp;&nbsp;&nbsp;</li>
 <%--<span style="color:#fc2400; font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; " > Rs. 41,000</span></p></li>--%>
<li style="margin-left:55px;"> <p style="font-size:12px; color:#42a0b7; font-family:Arial, Helvetica, sans-serif; font-weight:bold; float:left;" >Dubai </p> &nbsp;&nbsp;&nbsp;&nbsp;
<span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; float:left; margin-left:25px;"></span></p>
<p><span style="color:#8a8c8e; font-size:10px; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px; ">4 Nights 5 Days Trip</span>&nbsp;&nbsp;&nbsp;</li>
<%-- <span style="color:#fc2400; font-size:10px; font-weight:bold; font-family:Arial, Helvetica, sans-serif; position:relative; top:-10px;"> Rs. 41,000</span></p></li>--%>
</ul>
</div><!--lsastone-->
</div><!--container_right-->
</div><!--container-->

<div class="summer_packeges" style="margin-top:405px;">
<%--<img alt="Indus Image" src="images/summer_packeges.jpg" width="1299"  />--%>
<table>
<tr>
<td>
<a href="#" ><img src="images/special_offer.jpg" alt="special offer" /></a>
<%--<asp:ImageButton ID="imgbtn1" runat="server" ImageUrl="~/industravels/images/special_offer.jpg" CommandName="ClickMe" PostBackUrl="HolidayDetails.aspx" />--%>
</td>
<td>
<a href="HolidaySpot.aspx?type=Summer Vacation&regions=All" ><img src="images/tourism_summer.jpg" alt="special offer" /></a>
<%--<asp:ImageButton ID="imgbtn2" runat="server" ImageUrl="~/industravels/images/tourism_summer.jpg" CommandName="ClickMe" PostBackUrl="HolidayDetails.aspx" />--%>
</td>
<td>
<a href="HolidaySpot.aspx?type=Honeymoon&regions=All" ><img src="images/honeymoon_special.jpg" alt="special offer" /></a>
<%--<asp:ImageButton ID="imgbtn3" runat="server" ImageUrl="~/industravels/images/honeymoon_special.jpg" CommandName="ClickMe" PostBackUrl="HolidayDetails.aspx" />--%>
</td>
<td>
<a href="#" ><img src="images/International_hotels.jpg" alt="special offer" /></a>
<%--<asp:ImageButton ID="imgbtn4" runat="server" ImageUrl="~/industravels/images/International_hotels.jpg" CommandName="ClickMe" PostBackUrl="HolidayDetails.aspx" />--%>
</td>
<td>
<a href="HolidaySpot.aspx" ><img src="images/international.jpg" alt="special offer" /></a>
<%--<asp:ImageButton ID="imgbtn5" runat="server" ImageUrl="~/industravels/images/international.jpg" CommandName="ClickMe" PostBackUrl="HolidayDetails.aspx" />--%>
</td>
</tr>
</table>
</div><!--summer_packeges-->


<TraF:Foot ID="TFoot" runat="server" />

</div><!--wrapper class-->


</form>

</body>

</html>