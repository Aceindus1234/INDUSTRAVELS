<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TravelInsurence.aspx.cs" Inherits="industravels_TravelInsurence" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR15" TagName="Right"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH15" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF15" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL15" TagName="Left"  %>
<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" tagPrefix="ajax" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels :: Insurence Policy::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">--%>
<link rel="stylesheet" href="css/jquery-ui.css" />
<link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script src="js/popjquery.min.js" type="text/javascript"></script>
 <script src="js/jquery-1.8.2.js" type="text/javascript"></script>
<script src="js/jquery-ui.js" type="text/javascript"></script>
<script src="js/commanfunction.js" type="text/javascript"></script>
   
    <script type="text/javascript">
        $(document).ready(function () {
            numbersonly("#txtnotraveldays");
            $("#ddltravelersno").change(function () {
                var selec = $('option:selected', $(this)).text();
                if (selec != "Select") {
                    $("#opsdiv").show();
                    var val = parseInt(selec);
                    for (var i = 1; i <= 6; i++) {
                        $("#" + "option" + i + "").hide();
                    }
                    for (var i = 1; i <= val; i++) {
                        $("#" + "option" + i + "").show();
                    }
                    //  alert("#"+"options" + val+"");
                    //alert(val);
                }
                else
                    $("#opsdiv").hide();
            });
            $('#txtreturndate').change(function () {
                dateFmt();
            });
            $('#txtdepadate').change(function () {
                dateFmt();
            });
            function dateFmt() {
                if ($('#txtreturndate').val() != "") {
                    if ($('#txtreturndate').val() < $('#txtdepadate').val()) {
                        alert('return date must be grater than departure date');
                        $('#txtreturndate').val('');
                        $("#txtnotraveldays").val('');
                    }
                    else {
                        var d1 = Date.parse($('#txtdepadate').val());
                        var d2 = Date.parse($('#txtreturndate').val());
                        $("#txtnotraveldays").val(Math.floor((d2 - d1) / 86400000));
                    }
                }
            }

            $(function () {
                var date = new Date();
                var currentMonth = date.getMonth();
                var currentDate = date.getDate();
                var currentYear = date.getFullYear();
                $('.datepic').datepicker({
                    minDate: new Date(currentYear, currentMonth, currentDate)
                });
            });

        });
    </script>
    <script type="text/javascript" language="javascript">

    function isNumberKey(evt) {
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (charCode != 46 && charCode > 31
            && (charCode < 48 || charCode > 57))
            return false;

        return true;
    }
    </script>
    <style type="text/css">
        .style1
        {
            width: 105px;
        }
        .cntrlstyles
        {
            width:200px; height:25px;  border:1px solid #75828a;   background:#f9f9f9; -webkit-border-radius:3px; border-radius:3px;
        }
        .rdstyle{ width:60%; font-size:14px; font-weight:bold; }
        .hrl{border:2px solid #C1C4C5;}
        .top1div{border-radius:5px; border:1px solid Red; margin-top:2px;}
        .intop1div{padding:5px 10px;}
        #rdbl1{ width:30%;}
        .box{display:none;}
        .imgs{cursor:pointer;}
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH15:Head ID="THead15" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td valign="top">
     <TraL15:Left ID="TLeft15" runat="server" />  
    </td>
    <td valign="top" class="col">
    
    
    <div class="contain_center_new" style="padding:5px; color:#666; line-height:20px;">
    <h4> Travel Insurance</h4>
    <hr class="hrl" />
<p>
Like any other insurance policy, travel insurance also plays a vital role. Travel insurance covers medical and non-medical expenses when you are travelling to another foreign country. There can be many scenarios where travel insurance can be of help like say you fall sick during travel or you might lose some of your valuables like passports, personal accident, medical expenses, loss of checked in baggage or any other necessary belongings.
</p>
<br />

<p>
With a contingent travel insurance plan, you can travel without any worry, as you are covered amply under the travel insurance plan. <b>
<a href="Default.aspx"> Indus travels and tours </a> </b> 
being a global travel and tours company specialized in worldwide travels and also have got travel insurance plans for student, individuals and corporate, 
so that they can get the maximum benefit from our reasonable and well laid out travel plans.   </p>

<br />
<p>
Our team will assist you in picking up a perfect travel insurance plan. We will also guide you in ascertaining as 
to what are all the credentials and documentation required, so that you can easily acquire an insurance plan.</p>
<br />

<p> We will be more than happy to help you for any further assistance. </p><br />
<p> <b>  Kindly contact on the information provided below:</b> </p><br />


<h4>  Online Travel Insurance Buying Process </h4>


	<%--&nbsp;<a href="#tab-1" style="width:300px; height:40px; background-color:#C1C4C5; padding:5px; font-size:12px; font-weight:bold; "> International Travel Insurance</a>	
		 	<a href="#tab-2" style="width:300px; height:40px; background-color:#C1C4C5; padding:5px; font-size:12px; font-weight:bold"> Student Travel Insurance</a>--%>

    <div class="top1div">
    
    <div class="intop1div" >
    <asp:RadioButtonList ID="rdInsType" runat="server" RepeatDirection="Horizontal" CssClass="rdstyle">
<asp:ListItem Text=" International Travel Insurance" Selected="True"></asp:ListItem>
<asp:ListItem Text=" Student Travel Insurance"></asp:ListItem>

</asp:RadioButtonList> 
<hr class="hrl" />
       <h5>  Where are you travelling?  </h5>
<asp:RadioButtonList ID="rdbl1" runat="server" RepeatDirection="Horizontal">
<asp:ListItem Text=" USA / Canada" Selected="True"></asp:ListItem>
<asp:ListItem Text=" Asia"></asp:ListItem>
<asp:ListItem Text=" Others"></asp:ListItem>
</asp:RadioButtonList> 
        <table >

<tr>


 <td > Sum insured</td> 
   <td>
           
    <asp:DropDownList  id="ddlsuminsured"  runat="server" CssClass="cntrlstyles">
             <asp:ListItem >Select</asp:ListItem>
             <asp:ListItem Text="1 Month"></asp:ListItem>
             <asp:ListItem Text="3 Month"></asp:ListItem>
             <asp:ListItem Text="6 Month"></asp:ListItem>
             <asp:ListItem Text="12 Month"></asp:ListItem>  
             </asp:DropDownList> 
  <asp:RequiredFieldValidator id="rfv1" runat="server" InitialValue="Select" ControlToValidate="ddlsuminsured" ValidationGroup="g10">*</asp:RequiredFieldValidator> 
                     
 </td>    
</tr>

<tr>
 <td style=" height:35px;"> Departure date </td>
   <td> <asp:TextBox ID="txtdepadate" runat="server" CssClass="cntrlstyles datepic" >
   </asp:TextBox>&nbsp;<%--<asp:Image ID="imgbtn" runat="server" ImageUrl="~/industravels/images/buttons1/calender.png" CssClass="imgs" />
<asp:CalendarExtender ID="CalendarExtender1" PopupButtonID="imgbtn" TargetControlID="txtdepadate" runat="server"></asp:CalendarExtender>--%>
 <asp:RequiredFieldValidator id="rfv2" runat="server" ControlToValidate="txtdepadate" ValidationGroup="g10">*</asp:RequiredFieldValidator>   
 </td>  
 
</tr>

<tr>
 <td style=" height:35px;">  Return date </td>
   <td> <asp:TextBox ID="txtreturndate" runat="server" CssClass="cntrlstyles datepic" >
   </asp:TextBox>&nbsp;<%--<asp:Image ID="imgbtn1" runat="server" ImageUrl="~/industravels/images/buttons1/calender.png" CssClass="imgs" />
<asp:CalendarExtender ID="CalendarExtender2" PopupButtonID="imgbtn1" TargetControlID="txtreturndate" runat="server"></asp:CalendarExtender>--%>
 <asp:RequiredFieldValidator id="rfv3" runat="server" ControlToValidate="txtreturndate" ValidationGroup="g10">*</asp:RequiredFieldValidator>   
 </td>    

</tr>


<tr>
 <td style=" height:35px;"> No of days travelling</td>
   <td> <asp:TextBox ID="txtnotraveldays" runat="server" CssClass="cntrlstyles"></asp:TextBox>
   <asp:RequiredFieldValidator id="rfv4" runat="server" ControlToValidate="txtnotraveldays" ValidationGroup="g10">*</asp:RequiredFieldValidator>  
   <%--<asp:FilteredTextBoxExtender ID="fil" runat="server" FilterMode="ValidChars"  ValidChars="0123456789" TargetControlID="txtnotraveldays"></asp:FilteredTextBoxExtender>--%>
 </td>    
</tr>


<tr>


 <td > <p>  No of Travellers</p></td> 
   <td>
<asp:DropDownList  id="ddltravelersno"  runat="server" CssClass="cntrlstyles">
             <asp:ListItem Value="">Select</asp:ListItem>
             <asp:ListItem Value="1"></asp:ListItem>
             <asp:ListItem Value="2"></asp:ListItem>
             <asp:ListItem Value="3"></asp:ListItem>
             <asp:ListItem Value="4"></asp:ListItem>
             <asp:ListItem Value="5"></asp:ListItem>
             <asp:ListItem Value="6"></asp:ListItem>

 </asp:DropDownList> <asp:RequiredFieldValidator id="rfv5" runat="server" ControlToValidate="ddltravelersno" ValidationGroup="g10">*</asp:RequiredFieldValidator>       
                    
 </td>    
</tr>

</table>
<div id="opsdiv" style="display:none;">
<h5> Details </h5> <hr class="hrl" />
<table >
  <tr>
  <td>

<div id="option1" class="box"> 

<table >
<tr>
<td> Traveller 1</td><td style="width:49px;"></td>
<td>  
<asp:DropDownList  id="ddltrveler1"  runat="server" CssClass="cntrlstyles">
             <asp:ListItem Text="Select Age Group"></asp:ListItem>
             <asp:ListItem Text=" 3m-40yrs"></asp:ListItem>
             <asp:ListItem Text="41-55yrs"></asp:ListItem>
             <asp:ListItem Text="56-60yrs"></asp:ListItem>
             <asp:ListItem Text="61-70yrs"></asp:ListItem>
</asp:DropDownList> <asp:RequiredFieldValidator id="rfv6" runat="server" ControlToValidate="ddltrveler1" ValidationGroup="g10">*</asp:RequiredFieldValidator>     

   
</td> 

</tr>
</table>
 </div>
<div id="option2" class="box"> 
<table >
<tr>
<td> Traveller 2</td> <td style="width:49px;"></td>
<td> 
<asp:DropDownList  id="ddltraveler2"  runat="server" CssClass="cntrlstyles">
             <asp:ListItem Text="Select Age Group"></asp:ListItem>
             <asp:ListItem Text=" 3m-40yrs"></asp:ListItem>
             <asp:ListItem Text="41-55yrs"></asp:ListItem>
             <asp:ListItem Text="56-60yrs"></asp:ListItem>
             <asp:ListItem Text="61-70yrs"></asp:ListItem>
</asp:DropDownList>   <asp:RequiredFieldValidator id="rfv7" runat="server" ControlToValidate="ddltraveler2" ValidationGroup="g10">*</asp:RequiredFieldValidator> 
</td> 

</tr>
</table>
</div>
<div id="option3" class="box"> 
<table>
<tr>
<td> Traveller 3</td> <td style="width:49px;"></td>
<td> 
<asp:DropDownList  id="ddltraveler3"  runat="server" CssClass="cntrlstyles">
             <asp:ListItem Text="Select Age Group"></asp:ListItem>
             <asp:ListItem Text=" 3m-40yrs"></asp:ListItem>
             <asp:ListItem Text="41-55yrs"></asp:ListItem>
             <asp:ListItem Text="56-60yrs"></asp:ListItem>
             <asp:ListItem Text="61-70yrs"></asp:ListItem>
 </asp:DropDownList>   <asp:RequiredFieldValidator id="rfv8" runat="server" ControlToValidate="ddltraveler3" ValidationGroup="g10">*</asp:RequiredFieldValidator>  
</td> 

</tr>
</table>
</div>
<div id="option4" class="box">
<table>
<tr>
<td> Traveller 4</td> <td style="width:49px;"></td>
<td> 
<asp:DropDownList  id="ddltraveler4"  runat="server" CssClass="cntrlstyles">
             <asp:ListItem Text="Select Age Group"></asp:ListItem>
             <asp:ListItem Text=" 3m-40yrs"></asp:ListItem>
             <asp:ListItem Text="41-55yrs"></asp:ListItem>
             <asp:ListItem Text="56-60yrs"></asp:ListItem>
             <asp:ListItem Text="61-70yrs"></asp:ListItem>
 </asp:DropDownList> <asp:RequiredFieldValidator id="rfv9" runat="server" ControlToValidate="ddltraveler4" ValidationGroup="g10">*</asp:RequiredFieldValidator>   
</td> 

</tr>
</table>
 </div>
<div id="option5" class="box"> 

<table>
<tr>
<td> Traveller 5</td> <td style="width:49px;"></td>
<td> 
<asp:DropDownList  id="ddltraveler5"  runat="server" CssClass="cntrlstyles">
             <asp:ListItem Text="Select Age Group"></asp:ListItem>
             <asp:ListItem Text=" 3m-40yrs"></asp:ListItem>
             <asp:ListItem Text="41-55yrs"></asp:ListItem>
             <asp:ListItem Text="56-60yrs"></asp:ListItem>
             <asp:ListItem Text="61-70yrs"></asp:ListItem>

 </asp:DropDownList> 
  <asp:RequiredFieldValidator id="rfv10" runat="server" ControlToValidate="ddltraveler5" ValidationGroup="g10">*</asp:RequiredFieldValidator>  
</td> 

</tr>
</table>
 </div>
<div id="option6" class="box">

<table>
<tr>
<td> Traveller 6</td> <td style="width:49px;"></td>
<td> 
<asp:DropDownList  id="ddltraveler6"  runat="server" CssClass="cntrlstyles">
             <asp:ListItem Text="Select Age Group"></asp:ListItem>
             <asp:ListItem Text=" 3m-40yrs"></asp:ListItem>
             <asp:ListItem Text="41-55yrs"></asp:ListItem>
             <asp:ListItem Text="56-60yrs"></asp:ListItem>
             <asp:ListItem Text="61-70yrs"></asp:ListItem>
 </asp:DropDownList> 
 <asp:RequiredFieldValidator id="rfv11" runat="server" ControlToValidate="ddltraveler6" ValidationGroup="g10">*</asp:RequiredFieldValidator>  
</td> 

</tr>
</table>
</div>

</td>
  </tr>
  </table>
  </div>
<h5> Your Information </h5><hr class="hrl"   />
<table>
<tr><td colspan="2"> </td></tr>
  
<tr>
 <td class="style1"> Email Id: </td>
   <td><asp:TextBox ID="txtemailid" runat="server" CssClass="cntrlstyles"></asp:TextBox>
   <asp:RequiredFieldValidator id="rfv12" runat="server" ControlToValidate="txtemailid" ValidationGroup="g10">*</asp:RequiredFieldValidator>   
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
    ControlToValidate="txtemailid" Text="Invalid Email Address" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)
|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" runat="server" ValidationGroup="g10"/> </td>

</tr>



<tr>
 <td class="style1"> Contact No: </td>
   <td> <asp:TextBox ID="txtcontact" onkeypress="return isNumberKey(event)" runat="server" CssClass="cntrlstyles" MaxLength="10"></asp:TextBox>
   <asp:RequiredFieldValidator id="rfv13" runat="server" ControlToValidate="txtcontact" ValidationGroup="g10">*</asp:RequiredFieldValidator>    
   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtcontact" ErrorMessage="*"
    ValidationExpression="\d{10}" runat="server" ValidationGroup="vg1"></asp:RegularExpressionValidator>  
   </td>
</tr>
</table>

<table width="350" >

<tr> 

<td colspan="2"><asp:CheckBox ID="ckbaccepet" runat="server" Text=" I accept Terms & Conditions" ></asp:CheckBox>
<asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server" ControlToValidate="ddltravelersno" ValidationGroup="g10">*</asp:RequiredFieldValidator> 

</td>
</tr>

<tr> 
<td width="150"></td>
<td >
 <asp:ImageButton ID="insurencebtn" runat="server" Text="Submit" align="left"  OnClick="insurencebtn_Click" ValidationGroup="g10" ImageUrl="~/industravels/images/buttons1/submit.png" />
 </td>
</tr>
<tr>
<td colspan="2"><asp:ValidationSummary
        ID="ValidationSummary1"
        runat="server"
        ShowMessageBox="true"
        ShowSummary="false"
        ForeColor="Red"
        HeaderText=" All The Feilds Mandatory !!! Enter Fields With Proper Data "
        DisplayMode="BulletList"
        CssClass="summary" ValidationGroup="g10"/></td>
</tr>
  </table>
 
  </div>
  </div>
   </div>
    </td>
    <td valign="top">
     <trar15:right ID="TRight15" runat="server" />
    </td>
    </tr>
    </table>
    </div>
     </td>
    </tr>
    <tr><td>
     <TraF15:Foot ID="TFoot15" runat="server"/>
    </td></tr>
    </table>
    </div> 
    </form>
</body>
</html>



