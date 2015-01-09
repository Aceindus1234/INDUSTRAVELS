<%@ Page Title="" Language="C#" MasterPageFile="~/IndusTravelMasterPage.master" AutoEventWireup="true" CodeFile="Packages_Enquiryform.aspx.cs" Inherits="Packages_Enquiryform" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<script language="javascript" type="text/javascript">
    function validate() {
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
<link href="Css/Stylemodif.css" rel="stylesheet" type="text/css" media="all" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%-- <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" >
                </cc1:ToolkitScriptManager>--%>
 <asp:Panel ID="pnlEnquiry" runat="server" style="border: 1px solid #000; width: 100%;" >
    <table class="style2" border="0" cellspacing="0" cellpadding="0" style="padding:10px 0px 0px 10px;">
     <tr class="trstyle" >
            <td colspan="5" align="center" valign="middle">
               <asp:Label ID="lblTitle" runat="server" ForeColor="Green" Font-Bold="true" Font-Size="18px">Packages Enquiry</asp:Label>
            </td>
           
        </tr>
        <tr class="trstyle" >
            <td class="tdleftstyle">
                <span class="span">*</span>&nbsp;&nbsp;<asp:Label ID="lblFName" runat="server">First Name</asp:Label>
            </td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtFName" runat="server"  CssClass="txtstyle"></asp:TextBox>
            </td>
            <td width="2%">
                &nbsp;</td>
             <td class="tdleftstyle">
                <span class="span">*</span>&nbsp;&nbsp;<asp:Label ID="lblMblNum" runat="server">Mobile Number</asp:Label>
            </td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtMblNum" runat="server"  CssClass="txtstyle" MaxLength="10"></asp:TextBox>
            </td>
        </tr>
        <tr class="trstyle">
           <td class="tdleftstyle">
                <span class="span">*</span>&nbsp;&nbsp;<asp:Label ID="lblLName" runat="server">Last Name</asp:Label>
            </td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtLName" runat="server"  CssClass="txtstyle"></asp:TextBox>

            </td>
            <td width="2%">
                &nbsp;</td>
             <td class="tdleftstyle">
                <span class="span">*</span>&nbsp;&nbsp;<asp:Label ID="lblEmail" runat="server">Email ID</asp:Label>
            </td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtEmail" runat="server"  CssClass="txtstyle"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="revEmail1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format" Display="dynamic" ValidationExpression=".*@.*\..*" ValidationGroup="Package"> <span class="span">*</span></asp:RegularExpressionValidator>
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
                &nbsp;&nbsp;<asp:Label ID="lblPackageType" runat="server">Package Type</asp:Label>
            </td>
            <td class="tdrightstyle">
                 <asp:DropDownList ID="ddlPackageType" runat="server" CssClass="ddlstyle">
                 <asp:ListItem Text="Select">Select</asp:ListItem>
                 <asp:ListItem Text="Honeymoon">Honeymoon</asp:ListItem>
                 <asp:ListItem Text="Leisure">Leisure</asp:ListItem>
                  <asp:ListItem Text="Group">Group</asp:ListItem>
                 <asp:ListItem Text="Weekend breaks">Weekend breaks</asp:ListItem>
            </asp:DropDownList>
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
                &nbsp;&nbsp;<asp:Label ID="lbltravelDest" runat="server">Travel Destination</asp:Label>
            </td>
            <td class="tdrightstyle">                  
              <asp:TextBox ID="txtDestination" runat="server"  CssClass="txtstyle"></asp:TextBox>
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
                &nbsp;&nbsp;<asp:Label ID="lblHotelType" runat="server">Hotel Type</asp:Label>
            </td>
            <td class="tdrightstyle">   
             <asp:DropDownList ID="ddlHotelType" runat="server" CssClass="ddlstyle">
              <asp:ListItem Value="0">-Select-</asp:ListItem>
              <asp:ListItem Value="1">3 star</asp:ListItem>
               <asp:ListItem Value="2">4 star</asp:ListItem>
               <asp:ListItem Value="3">5 star </asp:ListItem>
             </asp:DropDownList>
                          
              <%--<asp:TextBox ID="txtHotelType" runat="server"  CssClass="txtstyle"></asp:TextBox>--%>
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
               &nbsp;&nbsp;<asp:Label ID="lblNights" runat="server">No. Of Nights</asp:Label>
            </td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtnumNights" runat="server"  CssClass="txtstyle" MaxLength="2"></asp:TextBox>
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
                &nbsp;&nbsp;<asp:Label ID="lblPassengers" runat="server">No. Of Passengers</asp:Label>
            </td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtPassengers" runat="server"  CssClass="txtstyle" MaxLength="2"></asp:TextBox>
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
                &nbsp;&nbsp;<asp:Label ID="lblNopassengers" runat="server">Meal Plan Required</asp:Label>
            </td>
            <td class="tdrightstyle" valign="middle">
            <asp:DropDownList ID="ddlMealPlan" runat="server" CssClass="ddlstyle">
            <asp:ListItem Value="0">-Select-</asp:ListItem>
              <asp:ListItem Value="1"> EP- EUROPEAN PLAN</asp:ListItem>
               <asp:ListItem Value="2">CP- CONTINENTAL PLAN</asp:ListItem>
               <asp:ListItem Value="3">MAP- MODIFIED AMERICAN PALN</asp:ListItem>
               <asp:ListItem Value="4">AP- AMERICAN PLAN</asp:ListItem>
            </asp:DropDownList>
               <%--<asp:TextBox ID="txtMeal" runat="server"  CssClass="txtstyle"></asp:TextBox>--%>
            </td>
            <td width="2%">
                &nbsp;</td>
             <td class="tdleftstyle">
               &nbsp;
            </td>
            <td class="tdrightstyle" align="right" style="padding-right:30px;">
              &nbsp;
            </td>
        </tr>
        <%-- <tr class="trstyle">
            <td class="tdleftstyle">
                &nbsp;&nbsp;<asp:Label ID="Label3" runat="server">Prefered Destination</asp:Label>
            </td>
            <td class="tdrightstyle" valign="middle">
               <asp:TextBox ID="txtMealDestination" runat="server"  CssClass="txtstyle"></asp:TextBox>
            </td>
            <td width="2%">
                &nbsp;</td>
             <td class="tdleftstyle">
               &nbsp;
            </td>
            <td class="tdrightstyle" align="right" style="padding-right:30px;">
              &nbsp;
            </td>
        </tr>--%>
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
                    onclick="btnSubmit_Click" OnClientClick=" return validate()" ValidationGroup="Package" />
                    <asp:ValidationSummary ID="ValidationSummary" runat="server" ShowMessageBox="true" ShowSummary="false" ValidationGroup="Package"/>
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

