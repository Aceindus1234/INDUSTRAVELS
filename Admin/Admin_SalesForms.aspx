<%@ Page Title="" Language="C#" MasterPageFile="../AdminMainMasterPage.master" AutoEventWireup="true" CodeFile="Admin_SalesForms.aspx.cs" Inherits="industravels_Admin_Admin_SalesForms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <script src="../js/jquery-1.8.2.js" type="text/javascript"></script>
    <link rel="stylesheet" href="../css/jquery-ui.css" />
    <script src="../js/jquery-ui.js" type="text/javascript"></script>
    <script src="../js/commanfunction.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            //                if ($("#ctl00_ContentPlaceHolder1_txtTextSearch").val() == "")
            //                    return false;
            //                else
            //                    return true;

            var txt1 = $("#ctl00_ContentPlaceHolder1_txtFName").val();
            changetr(txt1);

            var sele1 = $('option:selected', $("#ctl00_ContentPlaceHolder1_ddlPtype")).text();
            hidedrlists(sele1);

            var selrd = $('input:checked', $("#ctl00_ContentPlaceHolder1_rdlInitial")).val();
            if (selrd == "New Enquiry")
                $("#searchtr").hide();
            if (selrd == "Existing Enquiry")
                $("#searchtr").show();
            numbersonly("#ctl00_ContentPlaceHolder1_txtAmount");
            numbersonly("#ctl00_ContentPlaceHolder1_txtMblNum");
            emailformat("#ctl00_ContentPlaceHolder1_txtEmail")
            $("#ctl00_ContentPlaceHolder1_ddlPtype").change(function () {
                var sele = $('option:selected', $(this)).text();
                hidedrlists(sele);
            });

            function hidedrlists(selec) {
                if (selec == "Select")
                    $("#regiontr").hide();
                else if (selec == "Other Service")
                    $("#regiontr").hide();
                else
                    $("#regiontr").show();
            }

//            $("#ctl00_ContentPlaceHolder1_txtTextSearch").keydown(function () {
//                var txts = $(this).val();
//                if (txts == "")
//                    return false;
//                   
 //            });

            $("#ctl00_ContentPlaceHolder1_txtTextSearch").change(function () {
                var txt = $(this).val();
                changetr(txt);
            });
            function changetr(txt) {
                if (txt == "") {
                    $("#enquirytr").hide();
                    $("#airlinetr").hide();
                }
                else {
                    $("#enquirytr").show();
                    $("#airlinetr").show();
                }
            }
            $("#ctl00_ContentPlaceHolder1_rdlInitial").change(function () {
                var selrd = $('input:checked', $(this)).val();
                //alert(selrd);
                if (selrd == "New Enquiry") {
                    if (confirm('Are you sure you want to generate new enquiry information?'))
                        window.location('Admin_EnquiryForm.aspx');
                    else
                        $('#ctl00_ContentPlaceHolder1_rdlInitial input').attr('checked', false);
                    //                        var selrd = $('input:checked', $(this)) = false;
                }
                else {
                    //   $("#enquirytr").show();
                    //    $("#airlinetr").show();
                    $("#searchtr").show();
                }
            });
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
<link href="../Css/Stylemodif.css" rel="stylesheet" type="text/css" media="all" />
<style type="text/css">
.txtstyle{ width:300px; height:25px;  border:1px solid #75828a;   background:#f9f9f9; -webkit-border-radius:3px; border-radius:3px; }
.trstyle{margin-top:3px; height:35px;}
.tdleftstyle{text-align:right; width:40%}
.midtd{width:20px; text-align:center;}
.tdrightstyle { width:800px;  height:100%; }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table class="style2" border="0" cellspacing="0" cellpadding="0" style="padding:10px 0px 0px 10px;">
   <tr class="trstyle" >
     <td align="center" valign="middle">
      <asp:Label ID="lblTitle" runat="server" ForeColor="Green" Font-Bold="true" Font-Size="16">Sales Form</asp:Label>
      <hr />
     </td>           
     </tr>
    <tr>
    <td align="center">
    <asp:RadioButtonList ID="rdlInitial" runat="server" RepeatDirection="Horizontal" Width="400" >
    <asp:ListItem Text=" New Enquiry" Value="New Enquiry"></asp:ListItem>
    <asp:ListItem Text=" Existing Enquiry" Value="Existing Enquiry"></asp:ListItem>
    </asp:RadioButtonList>
    </td>
    </tr>
    <tr class="trstyle">
   <td width="100%" align="right">   &nbsp;  </td>
    </tr>
    <tr id="searchtr" style="display:none">
    <td >&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
    Search by name / mobile number / passport Number &emsp; : &emsp;
     <asp:TextBox ID="txtTextSearch" runat="server" AutoPostBack="true"  CssClass="txtstyle"   OnTextChanged="txtText_changed" ></asp:TextBox>
     <%--<asp:TextBox ID="txtTextSearch" runat="server"   CssClass="txtstyle" ></asp:TextBox>--%>
    </td>
    </tr>
   <tr id="enquirytr"  style="display:none">
   <td>
   <table class="style2" border="0" cellspacing="0" cellpadding="0" style="padding:10px 0px 0px 10px;">
     <tr class="trstyle" >
            <td colspan="3" >
              <h5>Enquiry Form</h5>
            </td>           
        </tr>
         <tr>
            <td colspan="3"  width="100%" style="padding-right:10px;">
            <div style="border-top:1px dotted #000;width:100%;height:1px;"></div>
               </td>
        </tr>
        <tr class="trstyle" >
            <td class="tdleftstyle" width="400">
               &nbsp;&nbsp;First Name
            </td>
            <td class="midtd">:</td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtFName" runat="server"  CssClass="txtstyle"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtFName" ValidationGroup="g1" >*</asp:RequiredFieldValidator>
            </td>            
        </tr>
        <tr class="trstyle">
           <td class="tdleftstyle">
               &nbsp;&nbsp;Last Name
            </td>
            <td class="midtd">:</td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtLName" runat="server"  CssClass="txtstyle"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtLName" ValidationGroup="g1" >*</asp:RequiredFieldValidator>
            </td>            
        </tr>
        <tr class="trstyle">
        <td class="tdleftstyle">
                &nbsp;&nbsp;Mobile Number
            </td>
            <td class="midtd">:</td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtMblNum" runat="server"  CssClass="txtstyle" MaxLength="10"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtMblNum" ValidationGroup="g1" >*</asp:RequiredFieldValidator>
            </td>     
        </tr>
        <tr class="trstyle">
        <td class="tdleftstyle">
               &nbsp;&nbsp;Email ID
            </td>
            <td class="midtd">:</td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtEmail" runat="server"  CssClass="txtstyle"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtEmail" ValidationGroup="g1" >*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="trstyle">
        <td class="tdleftstyle">
               &nbsp;&nbsp;Adress
            </td>
            <td class="midtd">:</td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtAddress" runat="server"  CssClass="txtstyle" TextMode="MultiLine" Height="100" Width="300"></asp:TextBox>
            </td>
        </tr>
        <tr class="trstyle">
        <td class="tdleftstyle">
               &nbsp;&nbsp;Passport Number
            </td>
            <td class="midtd">:</td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtpass" runat="server"  CssClass="txtstyle"></asp:TextBox>
            </td>
        </tr>
        <tr class="trstyle">
            <td class="tdleftstyle">
               &nbsp;&nbsp;Type Of Enquiry
            </td>
            <td class="midtd">:</td>
            <td class="tdrightstyle">
                 <asp:DropDownList ID="ddlPtype" runat="server" CssClass="txtstyle" >
                 <asp:ListItem Value="Select" Text="Select"></asp:ListItem>
                 <asp:ListItem  Value="Air Tickets" Text="Air Tickets"></asp:ListItem>
                 <asp:ListItem  Value="Tour Package" Text="Tour Package"></asp:ListItem>
                  <asp:ListItem  Value="Other Service" Text="Other Service"></asp:ListItem>                
            </asp:DropDownList>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server"  InitialValue="Select" ControlToValidate="ddlPtype" ValidationGroup="g1" >*</asp:RequiredFieldValidator>
                        
            </td>            
        </tr>
          <tr class="trstyle" id="regiontr" style="display:none"   >
            <td class="tdleftstyle">
                &nbsp;&nbsp;Region Type
            </td>
            <td class="midtd">:</td>
            <td class="tdrightstyle">   
             <asp:DropDownList ID="ddlRgnType" runat="server" CssClass="txtstyle">
              <asp:ListItem Value="Domestic">Domestic</asp:ListItem>
              <asp:ListItem Value="International">International</asp:ListItem>               
             </asp:DropDownList> 
            </td>
        </tr>
        
         <tr class="trstyle">
            <td  colspan="3" width="100%" align="right">
               &nbsp;
            </td>
        </tr>
    </table>  
   </td>
   </tr>
   <tr id="airlinetr"  style="display:none">
   <td>
   <h5>Airline Information</h5>
   <table width="100%">
    <tr>
            <td colspan="3"  width="100%" style="padding-right:10px;">
            <div style="border-top:1px dotted #000;width:100%;height:1px;"></div>
               </td>
        </tr>
   <tr class="trstyle">
   <td class="tdleftstyle">AirLine Name</td>
   <td class="midtd">:</td>
   <td class="tdrightstyle">
   <asp:TextBox ID="txtAName" runat="server" CssClass="txtstyle"></asp:TextBox>
   <asp:RequiredFieldValidator ID="req1" runat="server" ControlToValidate="txtAName" ValidationGroup="g1" >*</asp:RequiredFieldValidator>
   </td>
   </tr>
    <tr class="trstyle">
   <td class="tdleftstyle">Airline Number</td>
   <td class="midtd">:</td>
   <td class="tdrightstyle"> <asp:TextBox ID="txtANumber" runat="server" CssClass="txtstyle"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtANumber" ValidationGroup="g1" >*</asp:RequiredFieldValidator></td>
   </tr>
    <tr class="trstyle">
   <td class="tdleftstyle">Origin</td>
   <td class="midtd">:</td>
   <td class="tdrightstyle">
   <asp:TextBox ID="txtorg" runat="server" CssClass="txtstyle"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtorg" ValidationGroup="g1" >*</asp:RequiredFieldValidator>
   </td>
   </tr>
    <tr class="trstyle">
   <td class="tdleftstyle">Destination</td>
   <td class="midtd">:</td>
   <td class="tdrightstyle">
   <asp:TextBox ID="txtdest" runat="server" CssClass="txtstyle"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdest" ValidationGroup="g1" >*</asp:RequiredFieldValidator>
   </td>
   </tr>
    <tr class="trstyle">
   <td class="tdleftstyle">Type Of Journey</td>
   <td class="midtd">:</td>
   <td class="tdrightstyle">
   <asp:RadioButtonList ID="rdlJourney" runat="server" RepeatDirection="Horizontal" Width="300" >
   <asp:ListItem Text=" One Way" Value=" One Way" Selected="True"></asp:ListItem>
   <asp:ListItem Text=" Two Way" Value=" Two Way"></asp:ListItem>
   </asp:RadioButtonList>
   </td>
   </tr>
    <tr class="trstyle">
   <td class="tdleftstyle">Issued On</td>
   <td class="midtd">:</td>
   <td class="tdrightstyle">
    <asp:TextBox ID="txtIssued" runat="server" CssClass="datepic txtstyle"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtIssued" ValidationGroup="g1" >*</asp:RequiredFieldValidator>
   </td>
   </tr>
    <tr class="trstyle">
   <td class="tdleftstyle">Date Of Travel</td>
   <td class="midtd">:</td>
   <td class="tdrightstyle">
    <asp:TextBox ID="txtDTra" runat="server" CssClass="datepic txtstyle"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDTra" ValidationGroup="g1" >*</asp:RequiredFieldValidator>
   </td>
   </tr>
    <tr class="trstyle">
   <td class="tdleftstyle">Ticket Number</td>
   <td class="midtd">:</td>
   <td class="tdrightstyle">
   <asp:TextBox ID="txtTiNumber" runat="server" CssClass="txtstyle"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTiNumber" ValidationGroup="g1" >*</asp:RequiredFieldValidator>
   </td>
   </tr>
    <tr class="trstyle">
   <td class="tdleftstyle">Amount</td>
   <td class="midtd">:</td>
   <td class="tdrightstyle">
    <asp:TextBox ID="txtAmount" runat="server" CssClass="txtstyle" MaxLength="8"></asp:TextBox>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAmount" ValidationGroup="g1" >*</asp:RequiredFieldValidator>
   </td>
   </tr>
    <tr class="trstyle">
  <td colspan="3">&nbsp;</td>
   </tr>
    <tr class="trstyle">
  <td colspan="3" align="center">
  <asp:Button ID="btnSave" runat="server" Text=" Save & Continue " OnClick="btnsave_click" ValidationGroup="g1" Font-Size="13" Height="35" />
  <asp:ValidationSummary ID="vsum1" runat="server" ValidationGroup="g1" ShowMessageBox="true" ShowSummary="false" HeaderText="* Marks or mandatory" />
   &emsp; <asp:Button ID="btnUpdate" runat="server" Text=" Update & Continue " OnClick="btnupdate_click" ValidationGroup="g1" Font-Size="13" Height="35" Visible="false" />
  </td>
   </tr>
   </table>
   </td>
   </tr>
    <tr class="trstyle">
   <td width="100%" align="right">   &nbsp;  </td>
    </tr>
</table>
</asp:Content>

