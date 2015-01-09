<%@ Page Title="" Language="C#" MasterPageFile="~/IndusTravelMasterPage.master" AutoEventWireup="true" CodeFile="Travel_EnquiryForm.aspx.cs" Inherits="Travel_EnquiryForm" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/Stylemodif.css" rel="stylesheet" type="text/css" media="all" />
<script language="javascript" type="text/javascript">
    function validate() 
    {
        if (document.getElementById("<%=txtFName.ClientID%>").value == "") {
            alert("First Name Feild can not be blank");
            document.getElementById("<%=txtFName.ClientID%>").focus();
            return false;
        }
        if (document.getElementById("<%=txtLName.ClientID%>").value == "") {
            alert("Last Name Feild can not be blank");
            document.getElementById("<%=txtLName.ClientID%>").focus();
            return false;
        }
        var fld = document.getElementById("<%=txtMblNum.ClientID%>");

         if (fld.value == "") {
             alert("You didn't enter a phone number.");
             fld.value = "";
             fld.focus();
             return false;
         }
         else if (isNaN(fld.value)) {
             alert("The phone number contains illegal characters.");
             fld.value = "";
             fld.focus();
             return false;
         }
         else if (!(fld.value.length == 10)) {
             alert("The phone number is the wrong length. \nPlease enter 10 digit mobile no.");
             fld.value = "";
             fld.focus();
             return false;
         }
        if (document.getElementById("<%=txtEmail.ClientID %>").value == "") {
            alert("Email id can not be blank");
            document.getElementById("<%=txtEmail.ClientID %>").focus();
            return false;
        }
//        var emailPat = /^(\".*\"|[A-Za-z]\w*)@(\[\d{1,3}(\.\d{1,3}){3}]|[A-Za-z]\w*(\.[A-Za-z]\w*)+)$/;
//        var emailid = document.getElementById("<%=txtEmail.ClientID %>").value;
//        var matchArray = emailid.match(emailPat);
//        if (matchArray == null) {
//            alert("Your email address seems incorrect. Please try again.");
//            document.getElementById("<%=txtEmail.ClientID %>").focus();
//            return false;
//        }
        if (document.getElementById("<%=txtCountry.ClientID%>").value == "") {
            alert("Country Feild can not be blank");
            document.getElementById("<%=txtCountry.ClientID%>").focus();
            return false;
        }
        if (document.getElementById("<%=txtCity.ClientID%>").value == "") {
            alert("City Feild can not be blank");
            document.getElementById("<%=txtCity.ClientID%>").focus();
            return false;
        }

               
        return true;
    }

    function checkDate(sender, args) {
        if (sender._selectedDate < new Date()) {

            alert("You cannot select a day earlier than today!");

            sender._selectedDate = new Date();
            // set the date back to the current date
            sender._textbox.set_Value(sender._selectedDate.format(sender._format))
        }

    }
  
 
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="pnlEnquiry" runat="server" style="border: 1px solid #000; width: 100%;" >
       <table class="style2" border="0" cellspacing="0" cellpadding="0" style="padding:10px 0px 0px 10px;">
        <asp:UpdatePanel ID="updatepanel1" runat="server">
      <ContentTemplate>
        <tr class="trstyle" >
            <td colspan="5" align="center" valign="middle">
               <asp:Label ID="lblTitle" runat="server" ForeColor="Green" Font-Bold="true" Font-Size="18px">Travels Enquiry</asp:Label>
            </td>
           
        </tr>
        <tr class="trstyle" >
            <td class="tdleftstyle">
                <span class="span">*</span>&nbsp;&nbsp;<asp:Label ID="lblFName" runat="server">First Name</asp:Label>
            </td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtFName" runat="server"  CssClass="txtstyle"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="rfvFname" runat="server" ControlToValidate="txtFName" class="span" ValidationGroup="EnguiryForm">*</asp:RequiredFieldValidator>--%>
            </td>
            <td width="2%">
                &nbsp;</td>
             <td class="tdleftstyle">
                <span class="span">*</span>&nbsp;&nbsp;<asp:Label ID="lblMblNum" runat="server">Mobile Number</asp:Label>
            </td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtMblNum" runat="server"  CssClass="txtstyle" MaxLength="10"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="rfvMblNum" runat="server" ControlToValidate="txtMblNum" class="span" ValidationGroup="EnguiryForm">*</asp:RequiredFieldValidator>--%>
            </td>
        </tr>
        <tr class="trstyle">
           <td class="tdleftstyle">
                <span class="span">*</span>&nbsp;&nbsp;<asp:Label ID="lblLName" runat="server">Last Name</asp:Label>
            </td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtLName" runat="server"  CssClass="txtstyle" ></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="rfvLName" runat="server" ControlToValidate="txtLName" class="span" ValidationGroup="EnguiryForm">*</asp:RequiredFieldValidator>--%>

            </td>
            <td width="2%">
                &nbsp;</td>
             <td class="tdleftstyle">
                <span class="span">*</span>&nbsp;&nbsp;<asp:Label ID="lblEmail" runat="server">Email ID</asp:Label>
            </td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtEmail" runat="server"  CssClass="txtstyle"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" class="span" ValidationGroup="EnguiryForm">*</asp:RequiredFieldValidator>--%>
                <asp:RegularExpressionValidator ID="revEmail1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format" Display="dynamic" ValidationExpression=".*@.*\..*" ValidationGroup="Travel"> <span class="span">*</span></asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr class="trstyle">
            <td colspan="5"  width="100%" style="padding-right:10px;">
           
            <div style="border-top:1px dotted #000;width:100%;height:1px;"></div>
               </td>
        </tr>
        <tr class="trstyle">
           <td class="tdleftstyle">
                <span class="span">*</span>&nbsp;&nbsp;<asp:Label ID="lblCountry" runat="server">Country</asp:Label>
            </td>
            <td class="tdrightstyle">
                 <%--<asp:DropDownList ID="ddlCountry" runat="server" CssClass="ddlstyle">
                 <asp:ListItem Value="0">Select</asp:ListItem>
            </asp:DropDownList>--%>
                <asp:TextBox ID="txtCountry" runat="server"  CssClass="txtstyle"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="rfvddlCountry" runat="server" ControlToValidate="ddlCountry" class="span" ValidationGroup="EnguiryForm">*</asp:RequiredFieldValidator>--%>
            </td>
           <td width="2%">
                &nbsp;</td>
             <td class="tdleftstyle">
               &nbsp;
            </td>
            <td class="tdrightstyle">
                &nbsp;
            </td>
        </tr>
        <tr class="trstyle">
            <td class="tdleftstyle">
                <span class="span">*</span>&nbsp;&nbsp;<asp:Label ID="lblCity" runat="server">City</asp:Label>
            </td>
            <td class="tdrightstyle">
            <%--<asp:DropDownList ID="ddlCity" runat="server" CssClass="ddlstyle">
            <asp:ListItem Value="0">Select</asp:ListItem>
            </asp:DropDownList>--%>
                <asp:TextBox ID="txtCity" runat="server"  CssClass="txtstyle"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="rfvddlCity" runat="server" ControlToValidate="ddlCity" ValidationGroup="EnguiryForm" class="span">*</asp:RequiredFieldValidator>--%>
           </td>
           <td width="2%">
                &nbsp;</td>
             <td class="tdleftstyle">
               &nbsp;
            </td>
            <td class="tdrightstyle">
                &nbsp;
            </td>
        </tr>
        <tr class="trstyle">
            <td colspan="5"  width="100%" style="padding-right:10px;">
            <div style="border-top:1px dotted #000;width:100%;height:1px;"></div>
               </td>
        </tr>
        <tr class="trstyle">
            <td class="tdleftstyle">
                &nbsp;&nbsp;<asp:Label ID="lblJournyType" runat="server">Type Of Journey</asp:Label>
            </td>
            <td class="tdrightstyle">
                 <asp:DropDownList ID="ddlJournyType" runat="server" CssClass="ddlstyle" 
                     onselectedindexchanged="ddlJournyType_SelectedIndexChanged" AutoPostBack="true">
                 <asp:ListItem Text="Select">Select</asp:ListItem>
                 <asp:ListItem Text="One Way">One Way</asp:ListItem>
                 <asp:ListItem Text="Return">Return</asp:ListItem>
            </asp:DropDownList>
            </td>
            <td width="2%">
                &nbsp;</td>
             <td class="tdleftstyle">
               &nbsp;&nbsp;<asp:Label ID="lblTravelClass" runat="server">Class Of Travel</asp:Label>
            </td>
            <td class="tdrightstyle">
            <asp:DropDownList ID="ddlTravelClass" runat="server" CssClass="ddlrightstyle">
                 <asp:ListItem Text="Select">Select</asp:ListItem>
                 <asp:ListItem Text="Economy">Economy</asp:ListItem>
                 <asp:ListItem Text="Business">Business</asp:ListItem>
                 <asp:ListItem Text="First">First</asp:ListItem>
            </asp:DropDownList>
           
            </td>
        </tr>
         <tr class="trstyle">
            <td colspan="5"  width="100%" style="padding-right:10px;">
             <div style="border-top:1px dotted #000;width:100%;height:1px;"></div>
               </td>
        </tr>
        <tr class="trstyle">
           <td class="tdleftstyle">
               &nbsp;&nbsp;<asp:Label ID="lblTravelFrom" runat="server">Travel From</asp:Label>
            </td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtTravelFrom" runat="server"  CssClass="txtstyle"></asp:TextBox>
            </td>
            <td width="2%">
                &nbsp;</td>
                 <td class="tdleftstyle">
                &nbsp;&nbsp;<asp:Label ID="lblTravelTo" runat="server">Travel To</asp:Label>
            </td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtTravelTo" runat="server"  CssClass="txtstyle"></asp:TextBox>

            </td>
            
        </tr>
        <tr class="trstyle">
            <td class="tdleftstyle">
               &nbsp;&nbsp;<asp:Label ID="lblDeparture" runat="server">Departure Date</asp:Label>
            </td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtDepartureDate" runat="server"  CssClass="txtstyle" ></asp:TextBox>
                 <cc1:CalendarExtender ID="CalendarExtender3" runat="server" PopupPosition="BottomLeft" 
                    TargetControlID="txtDepartureDate" OnClientDateSelectionChanged="checkDate" >
                  </cc1:CalendarExtender>
            </td>
            <td width="2%">
                &nbsp;</td>
             <td class="tdleftstyle" id="tdreturn" runat="server" >
                &nbsp;&nbsp;<asp:Label ID="lblReturnDate" runat="server">Return Date</asp:Label>
            </td>
            <td class="tdrightstyle" id="tdReturnDate" runat="server" >
                <asp:TextBox ID="txtReturnDate" runat="server"  CssClass="txtstyle"></asp:TextBox>
                <cc1:CalendarExtender ID="CalendarExtender2" runat="server" PopupPosition="BottomLeft" 
                    TargetControlID="txtReturnDate" OnClientDateSelectionChanged="checkDate" >
                  </cc1:CalendarExtender>
            </td>
        </tr>
         <tr class="trstyle">
            <td colspan="5"  width="100%" style="padding-right:10px;">
             <div style="border-top:1px dotted #000;width:100%;height:1px;"></div>
               </td>
        </tr>
        <tr class="trstyle">
            <td class="tdleftstyle">
                &nbsp;&nbsp;<asp:Label ID="lblNopassengers" runat="server">No.Of Passengers</asp:Label>
            </td>
            <td class="tdrightstyle" valign="middle">
                &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Width="45px" CssClass="lblstyle">Adults&nbsp;&nbsp;</asp:Label>
                <asp:DropDownList ID="ddlAdults" runat="server"  CssClass="ddl1style">
                  <asp:ListItem Value="0">0</asp:ListItem>
                 <asp:ListItem Value="1">1</asp:ListItem>
                 <asp:ListItem Value="2">2</asp:ListItem>
                 <asp:ListItem Value="3">3</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td width="2%">
                &nbsp;</td>
             <td class="tdleftstyle">
               <asp:Label ID="lblChildrens" runat="server" Width="65px" CssClass="lblstyle">&nbsp;Childrens&nbsp;&nbsp;&nbsp;</asp:Label>
               <asp:DropDownList ID="ddlChildrens" runat="server"  CssClass="ddl1style">
                <asp:ListItem Value="0">0</asp:ListItem>
                 <asp:ListItem Value="1">1</asp:ListItem>
                 <asp:ListItem Value="2">2</asp:ListItem>
                 <asp:ListItem Value="3">3</asp:ListItem>
               </asp:DropDownList>
            </td>
            <td class="tdrightstyle" align="right" style="padding-right:30px;">
                <asp:Label ID="lblInfants" runat="server" Width="45px"  CssClass="lblstyle">&nbsp;Infants&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label>
               <asp:DropDownList ID="ddlInfants" runat="server"  CssClass="ddl1style" >
                <asp:ListItem Value="0">0</asp:ListItem>
                 <asp:ListItem Value="1">1</asp:ListItem>
                 <asp:ListItem Value="2">2</asp:ListItem>
                 <asp:ListItem Value="3">3</asp:ListItem>
               </asp:DropDownList>
            </td>
        </tr>
         <tr class="trstyle">
            <td colspan="5"  width="100%" style="padding-right:10px;">
             <div style="border-top:1px dotted #000;width:100%;height:1px;"></div>
               </td>
        </tr>
        <tr class="trstyle">
            <td  colspan="5" width="40%" style="padding-left:18px;">
               <asp:Label ID="lblSpecialRequest" runat="server" Text="Remarks" Width="55px" Height="50px" CssClass="lblstyle"></asp:Label>&nbsp;&nbsp;<asp:TextBox ID="txtSpecialRequest" runat="server" TextMode="MultiLine" Width="80%" Height="100px"></asp:TextBox>
               </td>
           
        </tr>
         </ContentTemplate>
        </asp:UpdatePanel>
        <tr class="trstyle">
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr class="trstyle">
            <td  colspan="5" width="100%" align="right" style="padding-right:15px;">
                <asp:ImageButton ID="btnSubmit" runat="server" ImageUrl="~/images/buttons1/submit.png" Width="57px" Height="23px" 
                    onclick="btnSubmit_Click" OnClientClick=" return validate()" ValidationGroup="Travel" />
                    <asp:ValidationSummary ID="ValidationSummary" runat="server" ShowMessageBox="true" ShowSummary="false" ValidationGroup="Travel"/>
            </td>
        </tr>
         <tr class="trstyle">
            <td  colspan="5" width="100%" align="right">
               &nbsp;
            </td>
        </tr>
    </table>
   
</asp:Panel>
</asp:Content>



<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TravelEnqForm.aspx.cs" Inherits="industravels_TravelEnqForm" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Indus Travels :: Enquiry Form</title>
    <link href="Css/Stylemodif.css" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
--%>

