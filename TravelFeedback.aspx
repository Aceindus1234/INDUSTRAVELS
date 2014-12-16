<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TravelFeedback.aspx.cs" Inherits="industravels_TravelFeedback" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH3" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF3" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL3" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR3" TagName="Right"  %>
<%@ Register Assembly="Recaptcha" Namespace="Recaptcha"  TagPrefix="recaptcha" %>
<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %> --%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Feedback::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%><link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" language="javascript">

    function isNumberKey(evt) {
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (charCode != 46 && charCode > 31
            && (charCode < 48 || charCode > 57))
            return false;

        return true;
    }

//function NumberOnly()
//        {
//           var AsciiValue=event.keyCode
//           if ((AsciiValue >= 48 && AsciiValue <= 57) || (AsciiValue == 8 || AsciiValue == 127))
//               event.returnValue = true;
//           else
//               event.returnValue = false;
//        }

//        function RefreshCaptcha() {
//            var img = document.getElementById("imgCaptcha");
//            img.src = "Handler.ashx?query=" + Math.random();
//        }
//  
//    function isNumberKey(evt) {
//        var charCode = (evt.which) ? evt.which : event.keyCode
//        if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57))
//            return false;
//        return true;
//    }
       //-->


//        function checking() {
//            var val = document.getElementById('recaptcha_response_field');
//            if (val.value == "") {
//                alert('please enter the text as shown in the image');
//                return false;
//            }
    //        }
   
//    $(document).ready(function () {
//        $(".numericOnly").keypress(function (e) {
//            if (String.fromCharCode(e.keyCode).match(/[^0-9]/g)) return false;
//        });
//    });
</script>
<style type="text/css">
.innertext{
	           font-family: Tahoma, Geneva, sans-serif;
			   font-size:16px;
			   font-weight:bold;
			   color:#003366;
			   height:30px; padding-left:35px;
}
.crentopenings{
               font-family:Arial, Helvetica, sans-serif;
font-family:10px;
font-weight:bold;
color:#900;
}
.Text
{
	width:180px; 
	border:1px #CCC solid;
	
	}
	.Text1
	{
		height:100px;width:180px;
             border:1px #CCC solid;}
             
             .Drop
             {
             	border:1px #CCC solid; width:183px;
             	}
             	.margin
             	{
             		margin-top:100px;
             		}
             		.summary
                     {
                       border:2px solid Red;
                        width:220px;
                           }
                           
  #recaptcha_privacy,#recaptcha_whatsthis_btn,#recaptcha_logo
  {
  	display:none;
  }
  #recaptcha_switch_audio_btn img,#recaptcha_switch_img_btn img,#recaptcha_reload_btn
  {
  	height:25;
  }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <%--<asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>--%>
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH3:Head ID="THead311" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td>
     <TraL3:Left ID="TLeft311" runat="server" />  
    </td>
    <td valign="top" class="col">
    <div class="contain_center" >
    
<div style="float:left; padding-left:10px; width:360px; height:500px; ">
<asp:Image ImageUrl="~/industravels/images/feedback1.png" Width="322" Height="307" CssClass="margin" runat="server" />
</div>

<div style="float:left; width:550px; height:500px; ">

<table style="width:500px;">

<tbody><tr>
    <td class="innertext">Feedback Form</td>
  </tr>
  <tr>
    <td style=" padding-left:20px;padding-top:10px" valign="top">
    <table width="100%" border="0">
      <tbody><tr>
        <td width="315" style="height:400; width:320px;" valign="top">
        <table width="100%" border="0" style="padding-left:10px">
      <tbody>
      <tr>
        <td>
            <font class="crentopenings">*</font>
            <span id="lblname">Name</span>
        </td>
        <td>:</td>
        <td height="30">
        <asp:TextBox ID="txtname" CssClass="Text" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RFV" ControlToValidate="txtname" ErrorMessage="" runat="server" ValidationGroup="vg1">*
        </asp:RequiredFieldValidator> 
       </td>
      </tr>
     <%-- <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <span  style="color:Red;visibility:hidden;">Please enter the Name</span>
        </td>
      </tr>--%>
      <%--<tr>
        <td>
            <font class="crentopenings">*</font>
            <span id="lblorganization">Organization</span>
        </td>
        <td>:</td>
        <td height="30">
                <asp:TextBox ID="txtorg" CssClass="Text" runat="server"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="rfvorf" ErrorMessage="" runat="server" ControlToValidate="txtorg" ValidationGroup="vg1">*
                </asp:RequiredFieldValidator>
        </td>
      </tr>--%>
      <%--<tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <span  style="color:Red;visibility:hidden;">Please enter the Organization.</span>
        </td>
      </tr>--%>
      <%--<tr>
        <td>
            <font class="crentopenings">*</font>
            <span id="lbladdr">Address</span>
        </td>
        <td>:</td>
        <td height="30">
        <asp:TextBox ID="txtadd" Rows="2" Columns="20" CssClass="Text1" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="Address" ErrorMessage="" runat="server" ControlToValidate="txtadd" ValidationGroup="vg1">*
        </asp:RequiredFieldValidator>
        </td>
      </tr>--%>
     <%-- <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <span  style="color:Red;visibility:hidden;">Please enter the Address.</span>
        </td>
      </tr>--%>
      <%--<tr>
        <td>
            <font class="crentopenings">*</font>
            <span id="lblcountry">Country</span>
        </td><td>:</td>
        <td height="30">
       
        <asp:DropDownList ID="Country" CssClass="Drop" runat="server" Visible="true">
        <asp:ListItem Value="Select Country">Select Country</asp:ListItem>
        <asp:ListItem Value="1" Text="india">India</asp:ListItem>
        <asp:ListItem Text="USA" Value="2"></asp:ListItem>
        <asp:ListItem Text="UK/ Europe" Value="3"></asp:ListItem>
        <asp:ListItem Text="Nepal" Value="4"></asp:ListItem>
        <asp:ListItem Text="China" Value="5"></asp:ListItem>
        <asp:ListItem Text="Australia" Value="6"></asp:ListItem>
        <asp:ListItem Text="Russia" Value="7"></asp:ListItem>
        <asp:ListItem Text="New Zealand" Value="8"></asp:ListItem>
        <asp:ListItem Text="Singapore" Value="9"></asp:ListItem>
        <asp:ListItem Text="Phillipines" Value="11"></asp:ListItem>
        <asp:ListItem Text="Malaysia" Value="12"></asp:ListItem>
        <asp:ListItem Text="Pakistan" Value="13"></asp:ListItem>
        <asp:ListItem Text="UAE" Value="14"></asp:ListItem>
        <asp:ListItem Text="Africa" Value="15"></asp:ListItem>
        <asp:ListItem Text="South America" Value="16"></asp:ListItem>
        <asp:ListItem Text="Bangladesh" Value="17"></asp:ListItem>
        <asp:ListItem Text="Bahrain" Value="18"></asp:ListItem>
        <asp:ListItem Text="Belgium" Value="19"></asp:ListItem>
        <asp:ListItem Text="Egypt" Value="20"></asp:ListItem>
        <asp:ListItem Text="France" Value="21"></asp:ListItem>
        <asp:ListItem Text="Germany" Value="22"></asp:ListItem>
        <asp:ListItem Text="Indonesia" Value="24"></asp:ListItem>
        <asp:ListItem Text="Ireland" Value="25"></asp:ListItem>
        <asp:ListItem Text="Japan" Value="26"></asp:ListItem>
        <asp:ListItem Text="Jordan" Value="27"></asp:ListItem>
        <asp:ListItem Text="Kuwait" Value="28"></asp:ListItem>
        <asp:ListItem Text="Lebanon" Value="29"></asp:ListItem>
        <asp:ListItem Text="Maldives" Value="30"></asp:ListItem>
        <asp:ListItem Text="Mauritius" Value="31"></asp:ListItem>
        <asp:ListItem Text="Mexico" Value="32"></asp:ListItem>
        <asp:ListItem Text="Netherlands" Value="33"></asp:ListItem>
        <asp:ListItem Text="Oman" Value="35"></asp:ListItem>
        <asp:ListItem Text="Saudi Arabia" Value="36"></asp:ListItem>
        <asp:ListItem Text="South Africa" Value="37"></asp:ListItem>
        <asp:ListItem Text="South Korea" Value="38"></asp:ListItem>
        <asp:ListItem Text="Spain" Value="39"></asp:ListItem>
        <asp:ListItem Text="Sri Lanka" Value="40"></asp:ListItem>
        <asp:ListItem Text="Sweden" Value="41"></asp:ListItem>
        <asp:ListItem Text="Switzerland" Value="42"></asp:ListItem>
        <asp:ListItem Text="Thailand" Value="43"></asp:ListItem>
        <asp:ListItem Text="Yemen" Value="44"></asp:ListItem>
        <asp:ListItem Text="Hong Kong" Value="45"></asp:ListItem>
        </asp:DropDownList> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Country"
                ErrorMessage="" InitialValue="Select Country" ValidationGroup="vg1">*</asp:RequiredFieldValidator>      
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
        </td>
      </tr>--%>
      <%--<tr>    
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <span  style="color:Red;visibility:hidden;">Please Select the Country.</span>
        </td>
      </tr>--%>
      <tr>
        <td>
            <font class="crentopenings">*</font>
            <span id="lbltelno">Tel No.</span>
        </td>
        <td>:</td>
        <td height="30">
        <asp:TextBox ID="txttelno" CssClass="Text" runat="server" MaxLength="10" onkeypress="return isNumberKey(event)"></asp:TextBox>
        <asp:RequiredFieldValidator ID="Telno" ErrorMessage="" runat="server" ControlToValidate="txttelno" ValidationGroup="vg1">*
        </asp:RequiredFieldValidator>  
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
    ControlToValidate="txttelno" ErrorMessage="" ValidationExpression="\d{10}" runat="server" ValidationGroup="vg1"/>        </td>
        <%--<asp:FilteredTextBoxExtender ID="fitlter1" runat="server" TargetControlID="txttelno" ValidChars="0123456789" FilterMode="ValidChars" ></asp:FilteredTextBoxExtender>--%>
      </td>
      </tr>
     <%-- <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <span  style="color:Red;visibility:hidden;">Please enter the Telephone No.</span>
        </td>
      </tr>--%>
      <tr>
        <td>
            <font class="crentopenings">*</font>
            <span id="lblemail">E-mail</span>
        </td>
        <td>:</td>
        <td height="30">
        <asp:TextBox ID="txtemail" CssClass="Text" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate = "txtemail" Display ="Dynamic" runat="server" ValidationGroup="vg1" ErrorMessage="">*</asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
    ControlToValidate="txtEmail" Text="Invalid Email Address" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)
|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" runat="server" ValidationGroup="vg1"/>        </td>
      </tr>
      <%--<tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>    
                <span  style="color:Red;visibility:hidden;">Please Enter Valid Email Address</span>
                <span style="color:Red;visibility:hidden;">*</span>    
            </td>
      </tr>--%>
      <tr>
        <td>
            <font class="crentopenings">*</font>
            <span id="Span1">Category</span>
        </td><td>:</td>
        <td height="30">
        <asp:DropDownList ID="ddlcategory" CssClass="Drop" runat="server" Visible="true">
        <asp:ListItem Value="Select Category">Select Category</asp:ListItem>
        <asp:ListItem Text="general feedback" Value="1"></asp:ListItem>
         <asp:ListItem Text="futere request" Value="2"></asp:ListItem>
          <asp:ListItem Text="technical issue" Value="3"></asp:ListItem>
           <asp:ListItem Text="accessibility issues" Value="4"></asp:ListItem>
        </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlcategory"
                ErrorMessage="" InitialValue="Select Category" ValidationGroup="vg1">*</asp:RequiredFieldValidator>
        </td>
        </tr>
      <tr>
        <td>
            <font class="crentopenings">*</font>
            <span id="lblcomments">Comments</span>
        </td>
        <td>:</td>
        <td height="75">
             <asp:TextBox ID="txtcomment" Rows="2" Columns="20" CssClass="Text1" runat="server" TextMode="MultiLine"></asp:TextBox>
             &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ErrorMessage="" runat="server" ControlToValidate="txtcomment" ValidationGroup="vg1">*
        </asp:RequiredFieldValidator>
        </td>
      </tr>
         <tr>
        <%--<td>&nbsp;</td>
        <td>&nbsp;</td>--%>
        <td colspan="3">
           <recaptcha:RecaptchaControl ID="recaptcha" runat="server" PublicKey="6LcCWvMSAAAAAD1zl9Tz8o0tdxtltjLoicVwXBhG" 
                   PrivateKey="6LcCWvMSAAAAAGDEDPzv8l083xM9Ayf353jYwiwG" BackColor="WhiteSmoke" Theme="clean" />
                  <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ErrorMessage="" runat="server" ControlToValidate="recaptcha" ValidationGroup="vg1">
        </asp:RequiredFieldValidator>--%>
        
        
        </td>
      </tr>
       
      <tr>
        <td colspan="3">
            <table border="0" width="">
                <tbody><tr>
                    <td align="center"><asp:Button ID="btnsub" Text="Submit"  
                            style="width:60px; height:25px;  border:1px #999 solid;" runat="server" 
                            onclick="btnsubmit_Click" ValidationGroup="vg1" /></td>
                            <asp:ValidationSummary
        ID="ValidationSummary1"
        runat="server"
        ShowMessageBox="true"
        ShowSummary="false"
        ForeColor="Red"
        HeaderText=" All The Feilds Mandatory !!! Enter Fields With Proper Data "
        DisplayMode="BulletList"
        CssClass="summary" ValidationGroup="vg1"/>
                            
                    <td width="20px" colspan="3">&nbsp;</td>
                    <td><asp:Button Text="Reset"  
                            style="width:60px; height:25px; border:1px #999 solid;" ID="btnreset" 
                            runat="server" onclick="btnreset_Click1"/>
                            </td>
                </tr>
            </tbody></table>
        </td>
      </tr>
      <tr>
        <td>
            <span id="lblerror">&nbsp;&nbsp;&nbsp; </span>
        </td>
      </tr>
      <tr>
        <td colspan="3" class="style1"></td>
      </tr>
      <tr>
        <td colspan="3">&nbsp;</td>
        </tr>
    </tbody></table>
</td>
  </tr>
  <tr><td>&nbsp;</td></tr>
  <tr><td>&nbsp;</td></tr>
  <tr><td>&nbsp;</td></tr>
</tbody></table>
</td>
  </tr>
</tbody>

</table>

</div>

</div>
    </td>
    <td>
     <TraR3:Right ID="TRight311" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF3:Foot ID="TFoot311" runat="server" />
    </td></tr>
    </table>
  
   
    </div>
    </form>
</body>
</html>
