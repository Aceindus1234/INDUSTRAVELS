<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TravelEnqForm.aspx.cs" Inherits="industravels_TravelEnqForm" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH4" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF4" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL4" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR4" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Travel Enquiry::</title>
<link rel="stylesheet" href="css/jquery-ui.css" />
<link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
 <style type="text/css">
 .hrl{border:1px solid #C1C4C5;}
 .h4s{padding:5px; color:Gray}
 .bor_div{border: 1px solid #000; width:100%}
 #intable tr{height:35px;}
 #intable tr td{height:35px;}
 .txtboxs{height:30px; padding-left:2px; border-radius:5px; width:250px; border:1px solid gray;}
 .mtxtboxs{ height:100px; width:575px; border:1px solid gray; border-radius:5px 0px 0px 5px;}
 .mdiv{float:right; width:150px; text-align:center; height:15px; font-size:12px; border:1px dotted gray; margin-top:-2px;}
 .ddltypes{width:90px; height:30px; border-radius:5px; border:1px solid gray; }
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
  <script src="js/jquery-1.8.2.js" type="text/javascript"></script>
<script src="js/jquery-ui.js" type="text/javascript"></script>
 <script src="js/commanfunction.js" type="text/javascript"></script>
 <script type="text/javascript">
     $(document).ready(function () {
         numbersonly("#txtPhone");
         emailformat("#txtmail");
         $(function () {
             var date = new Date();
             var currentMonth = date.getMonth();
             var currentDate = date.getDate();
             var currentYear = date.getFullYear();
             $('.datepic').datepicker({
                 minDate: new Date(currentYear, currentMonth, currentDate)
             });
         });
         $('#txtfrdate').change(function () {
             if ($('#txtfrdate').datepicker("getDate") != null) {
                 filldates(1);
             }
         });

         $('#txttodate').change(function () {
             if ($('#txtfrdate').datepicker("getDate") != null) {
                 if ($('#txttodate').val() < $('#txtfrdate').val()) {
                     alert('To date must be grater than From date');
                     $('#txttodate').val('');
                     $('#txttodate').focus();
                 }
             }
             else
             { alert('Enter from date'); $('#txttodate').val(''); $('#txtfrdate').focus(); }
         });
         function filldates(night) {
             var date2 = $('#txtfrdate').datepicker('getDate');
             date2.setDate(date2.getDate() + night);
             $('#txttodate').datepicker('setDate', date2);
         }
         $("#rdJrnyList").on("change", function () {
             if ($("input[name$='rdJrnyList']:checked").val() == "One Way") {
                 $("#sptodate").hide();
             }
             else {
                 $("#sptodate").show();
             }
         });
         $("#ddlAdult").change(function () {
             calno();
             var i1 = parseInt($("#ddlAdult option:selected").text());
             bindval($("#ddlchilds"), $("#ddlinfant"), i1);
         });
         function bindval(box1, box2, val) {
             box1.empty();
             box2.empty();
             for (var i = 0; i < (10 - val); i++) {
                 $(box1).append($("<option>").val(i).html(i));
                 $(box2).append($("<option>").val(i).html(i));
             }
         }
         $("#ddlchilds").change(function () {
             calno();
             var i1 = parseInt($("#ddlAdult option:selected").text());
             var i2 = parseInt($("#ddlchilds option:selected").text());
             $("#ddlinfant").empty();
             for (var i = 0; i < (10 - (i1 + i2)); i++) {
                 $("#ddlinfant").append($("<option>").val(i).html(i));
             }

         });
         $("#ddlinfant").change(function () {
             calno();
             var i1 = parseInt($("#ddlAdult option:selected").text());
             var i2 = parseInt($("#ddlchilds option:selected").text());
             if (i2 == 0) {
                 $("#ddlchilds").empty();
                 for (var i = 0; i < (10 - (i1 + i2)); i++) {
                     $("#ddlchilds").append($("<option>").val(i).html(i));
                 }
             }
         });

         //         function calno(ddlval) {
         function calno() {
             var i1 = parseInt($("#ddlAdult option:selected").text());
             var i2 = parseInt($("#ddlchilds option:selected").text());
             var i3 = parseInt($("#ddlinfant option:selected").text());
             if ((i1 + i2 + i3) < 10) {
                 $("#txtpass").val(i1 + i2 + i3);
             }
             else {
                 alert('only 9 passenger allowed...');
             }
         }
         //ddlinfant ddlchilds
     });
 </script>
 <script type="text/javascript"  language="javascript">
     function cleartext(txttext) {
         txttext.value = "";
     }    
 </script>
 <script type="text/javascript" language="javascript">
     $(function () {         
         cssFmt(".intern", "allplaces");
     });
     function cssFmt(csstype, vech) {
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
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="scr1" runat="server"></asp:ScriptManager>
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH4:Head ID="THead4" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td valign="top">
     <TraL4:Left ID="TLeft4" runat="server" />  
    </td>
    <td valign="top" class="col">
    <div class="contain_center" >
    <div class="bor_div" >      
    <h4 class="h4s"> Travel Enquiry Form </h4>
    <hr class="hrl" />
    <div class="mdiv"><font color="red">*</font> marks are mandatory</div>
    <br />
    <table width="100%" id="intable">
  
    <tr>
    <td align="right" width="25%">* Full Name</td>
    <td width="15" align="center"><b>:</b></td>
    <td align="left">&emsp;&emsp;&emsp;
    <asp:TextBox ID="txtName" runat="server" CssClass="txtboxs" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="re1" runat="server" ControlToValidate="txtName" ValidationGroup="g1">*</asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td align="right">* Contact Number</td>
    <td align="center"><b>:</b></td>
    <td align="left">&emsp;&emsp;&emsp;
    <asp:TextBox ID="txtPhone" runat="server" CssClass="txtboxs" MaxLength="10" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPhone" ValidationGroup="g1">*</asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator ID="regu1" runat="server" ControlToValidate="txtPhone" ValidationExpression="\d{10}" ValidationGroup="g1">*</asp:RegularExpressionValidator>
    </td>
    </tr>
     <tr>
    <td align="right">* Email Id</td>
    <td align="center"><b>:</b></td>
    <td align="left">&emsp;&emsp;&emsp;
    <asp:TextBox ID="txtmail" runat="server" CssClass="txtboxs" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmail" ValidationGroup="g1">*</asp:RequiredFieldValidator>
    </td>
    </tr>
     <tr>
    <td align="right">* Country</td>
    <td align="center"><b>:</b></td>
    <td align="left">&emsp;&emsp;&emsp;
    <asp:TextBox ID="txtcountry" runat="server" CssClass="txtboxs" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcountry" ValidationGroup="g1">*</asp:RequiredFieldValidator>
    </td>
    </tr>
     <tr>
    <td align="right">State</td>
    <td align="center"><b>:</b></td>
    <td align="left">&emsp;&emsp;&emsp;
    <asp:TextBox ID="txtstate" runat="server" CssClass="txtboxs" ></asp:TextBox>
    </td>
    </tr>
     <tr>
    <td align="right">City</td>
    <td align="center"><b>:</b></td>
    <td align="left">&emsp;&emsp;&emsp;
    <asp:TextBox ID="txtcity" runat="server" CssClass="txtboxs" ></asp:TextBox>
    </td>
    </tr>
     <tr>
    <td align="right">Type of Journey</td>
    <td align="center"><b>:</b></td>
    <td align="left">
    <asp:RadioButtonList ID="rdJrnyList" runat="server" Width="300" RepeatDirection="Horizontal" style="padding-left:50px;"  >
    <asp:ListItem Selected="True" Text=" One Way" Value="One Way"></asp:ListItem>
     <asp:ListItem  Text=" Two Way" Value="Two Way"></asp:ListItem>
    </asp:RadioButtonList>
    </td>
    </tr>
     <tr>
    <td align="right">* Travel Location</td>
    <td align="center"><b>:</b></td>
    <td align="left"> From - 
    <asp:TextBox ID="txtsrc" runat="server" CssClass="intern txtboxs"  onfocus="javascript:cleartext(this);" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtsrc" ValidationGroup="g1">*</asp:RequiredFieldValidator>
      &emsp;&emsp;
    To - <asp:TextBox ID="txtdest" runat="server" CssClass="intern txtboxs"  onfocus="javascript:cleartext(this);" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtdest" ValidationGroup="g1">*</asp:RequiredFieldValidator>
      
    </td>
    </tr>
    <tr>
    <td align="right">* Travel Date</td>
    <td align="center"><b>:</b></td>
    <td align="left"> From - 
    <asp:TextBox ID="txtfrdate" runat="server" CssClass="datepic txtboxs" ></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtfrdate" ValidationGroup="g1">*</asp:RequiredFieldValidator>
      &emsp;&emsp;<span id="sptodate" style="display:none">
    To - <asp:TextBox ID="txttodate" runat="server" CssClass="datepic txtboxs" ></asp:TextBox>
      <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txttodate" ValidationGroup="g1">*</asp:RequiredFieldValidator>--%>
      </span>
    </td>
    </tr>
    <%-- <tr>
    <td align="right">* Travel To</td>
    <td align="center"><b>:</b></td>
    <td align="left">
    
    </td>
    </tr>--%>
    <%-- <tr>
    <td align="right">* From Date</td>
    <td align="center"><b>:</b></td>
    <td align="left">
    <asp:TextBox ID="TextBox8" runat="server" CssClass="txtboxs" ></asp:TextBox>
    </td>
    </tr>
     <tr>
    <td align="right">* To Date</td>
    <td align="center"><b>:</b></td>
    <td align="left">
    <asp:TextBox ID="TextBox9" runat="server" CssClass="txtboxs" ></asp:TextBox>
    </td>
    </tr>--%>
     <tr>
    <td align="right">* No of Passingers</td>
    <td align="center"><b>:</b></td>
    <td align="left">&emsp;&emsp;&emsp;
    <asp:TextBox ID="txtpass" runat="server" CssClass="txtboxs" Width="100" Enabled="false"></asp:TextBox>
      <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtpass" ValidationGroup="g1">*</asp:RequiredFieldValidator>--%>
    &emsp; Adults : <asp:DropDownList ID="ddlAdult" runat="server" CssClass="ddltypes">
    <asp:ListItem Text="0"></asp:ListItem>
     <asp:ListItem Text="1"></asp:ListItem>
    <asp:ListItem Text="2"></asp:ListItem>
    <asp:ListItem Text="3"></asp:ListItem> 
    <asp:ListItem Text="4"></asp:ListItem> 
    <asp:ListItem Text="5"></asp:ListItem>
    <asp:ListItem Text="6"></asp:ListItem>
    <asp:ListItem Text="7"></asp:ListItem> 
    <asp:ListItem Text="8"></asp:ListItem>   
     <asp:ListItem Text="9"></asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="ddlAdult" InitialValue="0" ValidationGroup="g1">*</asp:RequiredFieldValidator>
    &emsp;
    Childs : <asp:DropDownList ID="ddlchilds" runat="server" CssClass="ddltypes">
      <asp:ListItem Text="0"></asp:ListItem>
     <%--<asp:ListItem Text="1"></asp:ListItem>
    <asp:ListItem Text="2"></asp:ListItem>
    <asp:ListItem Text="3"></asp:ListItem> 
    <asp:ListItem Text="4"></asp:ListItem> 
    <asp:ListItem Text="5"></asp:ListItem>
    <asp:ListItem Text="6"></asp:ListItem>
    <asp:ListItem Text="7"></asp:ListItem> 
    <asp:ListItem Text="8"></asp:ListItem>   
     <asp:ListItem Text="9"></asp:ListItem> --%>
    </asp:DropDownList>&emsp;
    Infant : <asp:DropDownList ID="ddlinfant" runat="server" CssClass="ddltypes">
    <asp:ListItem Text="0"></asp:ListItem>
      <%--<asp:ListItem Text="1"></asp:ListItem>
    <asp:ListItem Text="2"></asp:ListItem>
    <asp:ListItem Text="3"></asp:ListItem> 
    <asp:ListItem Text="4"></asp:ListItem> 
    <asp:ListItem Text="5"></asp:ListItem>
    <asp:ListItem Text="6"></asp:ListItem>
    <asp:ListItem Text="7"></asp:ListItem> 
    <asp:ListItem Text="8"></asp:ListItem>   
     <asp:ListItem Text="9"></asp:ListItem>  --%>
    </asp:DropDownList>
    </td>
    </tr>
    <%-- <tr>
    <td colspan="3">&nbsp;</td>
    </tr>--%>
    <tr>
    <td align="right">Remarks</td>
    <td align="center"><b>:</b></td>
    <td align="left">&emsp;&emsp;&emsp;
    <asp:TextBox ID="txtRemark" runat="server" CssClass="mtxtboxs" TextMode="MultiLine" ></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td colspan="3" align="center">
    <asp:ImageButton ID="btnsubmit" runat="server" ImageUrl="images/buttons1/submit.png" AlternateText=" Submit " ValidationGroup="g1" />
    <asp:ValidationSummary ID="vsum" runat="server" ValidationGroup="g1" ShowMessageBox="true" ShowSummary="false" HeaderText="* Marks are mandatory" />
    </td>
    </tr>
     <tr>
    <td colspan="3" align="center">
    &nbsp;
    </td>
    </tr>
    </table>
    </div>
    </div>
    </td>
     <td valign="top">
     <TraR4:Right ID="TRight4" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF4:Foot ID="TFoot4" runat="server" />
    </td></tr>
    </table>
    </div>    
    </form>
</body>
</html>