<%@ Page Title="" Language="C#" MasterPageFile="../AdminMainMasterPage.master" AutoEventWireup="true" CodeFile="Admin_EnquiryForm.aspx.cs" Inherits="industravels_Admin_Admin_EnquiryFormaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <script src="../js/jquery-1.8.2.js" type="text/javascript"></script>
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
        var emailPat = /^(\".*\"|[A-Za-z]\w*)@(\[\d{1,3}(\.\d{1,3}){3}]|[A-Za-z]\w*(\.[A-Za-z]\w*)+)$/;
        var emailid = document.getElementById("<%=txtEmail.ClientID %>").value;
        var matchArray = emailid.match(emailPat);
        if (matchArray == null) {
            alert("Your email address seems incorrect. Please try again.");
            document.getElementById("<%=txtEmail.ClientID %>").focus();
            return false;
        }
        var e = document.getElementById("<%=ddlPtype.ClientID %>");
        var strUser = e.options[e.selectedIndex].text;
        if (strUser == "Select") {
            alert("select type of enquiry");
            return false;
        }
        return true;
    }

      </script>
        <script type="text/javascript">
            $(document).ready(function () {
                document.getElementById("regiontr").style.visibility = "hidden";                
            });
            function getcontrol(val) {
                //alert(val);
                if (val == 'Select' || val == 'Other Service')
                    document.getElementById("regiontr").style.visibility = "hidden";
                    else
                        document.getElementById("regiontr").style.visibility = "visible";
            }

    </script>
<link href="../Css/Stylemodif.css" rel="stylesheet" type="text/css" media="all" />
<style type="text/css">
.txtstyle{     width:300px; height:25px;  border:1px solid #75828a;   background:#f9f9f9; -webkit-border-radius:3px; border-radius:3px; }
.trstyle{margin-top:3px; height:35px;}
.tdleftstyle{text-align:right; width:40%}
.midtd{width:20px; text-align:center;}
.tdrightstyle {  width:800px;  height:100%; }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table class="style2" border="0" cellspacing="0" cellpadding="0" style="padding:10px 0px 0px 10px;">
     <tr class="trstyle" >
            <td colspan="3" align="center" valign="middle">
               <asp:Label ID="lblTitle" runat="server" ForeColor="Green" Font-Bold="true" Font-Size="16">Enquiry Form</asp:Label>
            </td>           
        </tr>
         <tr class="trstyle">
            <td colspan="3"  width="100%" style="padding-right:10px;">
            <div style="border-top:1px dotted #000;width:100%;height:1px;"></div>
               </td>
        </tr>
        <tr class="trstyle" >
            <td class="tdleftstyle" width="400">
                <span class="span">*</span>&nbsp;&nbsp;First Name
            </td>
            <td class="midtd">:</td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtFName" runat="server"  CssClass="txtstyle"></asp:TextBox>
            </td>            
        </tr>
        <tr class="trstyle">
           <td class="tdleftstyle">
                <span class="span">*</span>&nbsp;&nbsp;Last Name
            </td>
            <td class="midtd">:</td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtLName" runat="server"  CssClass="txtstyle"></asp:TextBox>

            </td>
            
        </tr>
        
        <tr class="trstyle">
        <td class="tdleftstyle">
                <span class="span">*</span>&nbsp;&nbsp;Mobile Number
            </td>
            <td class="midtd">:</td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtMblNum" runat="server"  CssClass="txtstyle" MaxLength="10"></asp:TextBox>
            </td>       
        </tr>
        <tr class="trstyle">
        <td class="tdleftstyle">
                <span class="span">*</span>&nbsp;&nbsp;Email ID
            </td>
            <td class="midtd">:</td>
            <td class="tdrightstyle">
                <asp:TextBox ID="txtEmail" runat="server"  CssClass="txtstyle"></asp:TextBox>
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
               <span class="span">*</span> &nbsp;&nbsp;Type Of Enquiry
            </td>
            <td class="midtd">:</td>
            <td class="tdrightstyle">
                 <asp:DropDownList ID="ddlPtype" runat="server" CssClass="txtstyle" onchange="getcontrol(this.options[this.selectedIndex].value);">
                 <asp:ListItem Value="Select" Text="Select"></asp:ListItem>
                 <asp:ListItem  Value="Air Tickets" Text="Air Tickets"></asp:ListItem>
                 <asp:ListItem  Value="Tour Package" Text="Tour Package"></asp:ListItem>
                  <asp:ListItem  Value="Other Service" Text="Other Service"></asp:ListItem>                
            </asp:DropDownList>            
            </td>            
        </tr>
          
          <tr class="trstyle" id="regiontr"   >
            <td class="tdleftstyle">
                &nbsp;&nbsp;Region Type
            </td>
            <td class="midtd">:</td>
            <td class="tdrightstyle">   
             <asp:DropDownList ID="ddlRgnType" runat="server" CssClass="txtstyle">
              <asp:ListItem Value="0">Domestic</asp:ListItem>
              <asp:ListItem Value="1">International</asp:ListItem>               
             </asp:DropDownList> 
            </td>
        </tr>
        
         <tr class="trstyle">
            <td  colspan="3" width="100%" align="right">
               &nbsp;
            </td>
        </tr>
        <tr class="trstyle">
            <td  colspan="3" width="100%" align="center" style="padding-right:15px;">
                <asp:Button ID="btnSubmit" runat="server" Text=" Save "  Font-Size="13" Height="30" ValidationGroup="g1"
                    OnClick="btnSubmit_Click" OnClientClick="return validate()"/>
            </td>
        </tr>
         <tr class="trstyle">
            <td  colspan="3" width="100%" align="right">
               &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

