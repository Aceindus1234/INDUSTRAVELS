<%@ Page Language="C#" AutoEventWireup="true" CodeFile="../Admin/Default1.aspx.cs" Inherits="industravels_Admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
 <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9" />
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="../Css/stylesheet.css"/>
<link href="../Css/Style.css" rel="stylesheet" type="text/css" media="all" />
 <link href="../Css/Stylemodif.css" rel="stylesheet" type="text/css" media="all" />
    <title>: : Admin Login : :</title>
</head>
 <body>
    <form id="form1" runat="server">
    <center>    
      <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr><td valign="middle">&nbsp;</td></tr>
  <tr>
    <td align="center" valign="middle">
    <table width="1286" border="0" cellspacing="0" cellpadding="0" align="center">
      <tr>
        <td align="left" valign="top" style="background-image:url(images/top_strip.png); background-position:center; background-repeat:no-repeat;">
        <table width="1243" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr><td>&nbsp;</td></tr>
          <tr>          
             <td align="center" valign="middle"><asp:ImageButton ID="ImageButton1" src="../images/Indus_Travrl_admin.png" width="474" height="77"  runat="server" OnClick="logo_click"/></td>            
          </tr>
            <tr>
              <td align="right">
                  <table border="0">
                     <tr>
                        <td width="80" height="20" align="center" valign="middle" >&nbsp;</td>
                         <td id="td1" runat="server" width="100" height="20" align="center" valign="middle" >&nbsp;</td>
                        <td id="td2" runat="server" width="80" height="20" align="center" valign="middle" >&nbsp;</td>
                        <td id="td3" runat="server" width="105" height="20" align="center" valign="middle" >&nbsp;</td>
                        <td id="td4" runat="server" width="105" height="20" align="center" valign="middle">&nbsp;</td>
                         <td id="tdlogout" runat="server" width="100" height="20" align="center" valign="middle">&nbsp;</td>
                        <td id="tdplans" runat="server" width="100" height="20" align="center" valign="middle" >&nbsp;</td>
                        <td id="tdemailsettings" runat="server" width="130" height="20" align="center" valign="middle" >&nbsp;</td>
                        <td id="tdhome" runat="server" width="100" height="20" align="center" valign="middle" >
                        <asp:LinkButton ID="lnkhome" runat="server" onclick="lnkhome_Click" CausesValidation="false" class="nav_top">Home</asp:LinkButton></td>
                     </tr>
                  </table>
              </td>
           </tr>
          <tr><td>&nbsp;</td></tr>
          <tr>
            <td  align="center" valign="middle" ><img src="../images/travels6.png" width="1243" height="244" alt=""/></td>
          </tr>
          </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top" style="background-image:url(images/middle_strip.png); background-position:center; background-repeat:repeat-Y;">
        <table width="1243" border="0" align="center" cellpadding="0" cellspacing="0">
           <tr>
            <td>
                 <asp:Panel ID="Panel1" runat="server" DefaultButton="imgLogin">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="middle">
    <table width="1286" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td style="background-image:url(images/middle_strip.png); background-position:center; background-repeat:repeat-Y;">
        <table width="1286">
        <tr><td>&nbsp;</td></tr>
        <tr>
                  <td  align="center" style="padding:0 20px 0 20px;">
                      <div id="divid" runat="server" class="error" >
                         </div>
                  </td>
       </tr>
       <tr>
  <td background="../images/banner-loginbg.jpg" style="background-position:center; background-repeat:no-repeat; vertical-align:middle; height:320px;width:1243px;"  align="left">

   <table align="center" width="90%" height="310px" style="padding-left:80px;">
   <tr>
      <td align="center">
      <table border="0" align="center">
      <tr>
          <td colspan="3" align="center" valign="middle">
    <img src="images/newsletters.gif"  alt=""/>
           <asp:Label ID="lablogin" runat ="server" Text="Admin Login" 
           Font-Bold="True" Font-Names="Arial" Font-Size="14pt" 
           ForeColor="Black"></asp:Label>
   </td></tr>
<tr><td colspan="3">&nbsp;</td></tr>
   
    <tr>
   <td style="height:25px;width:50%;" align="right">
    <span class="span">*</span> <asp:Label ID ="Label2" Text="User Type" runat ="server" Font-Bold="True" 
           Font-Names="Arial" Font-Size="11pt" ForeColor="#0D478D" ></asp:Label>
   </td>
    <td style="height:25px;width:1%; color:#0D478D" align="center">
  <strong>&nbsp;:&nbsp;</strong>
   </td>
   <td align="left">
        <asp:DropDownList ID="ddlUsertype" runat="server" Width="166px" Font-Size="11pt" >
         <asp:ListItem Text="Select">Select</asp:ListItem>
         <asp:ListItem Text="Admin">Admin</asp:ListItem>
         
        </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvusertype" runat="server" InitialValue="Select" ControlToValidate="ddlUsertype" ValidationGroup="travels"> <span class="span">*</span></asp:RequiredFieldValidator>              
   </td>
   </tr>
   <tr>
   <td style="height:25px;" align="right">
    <span class="span">*</span> <asp:Label ID ="Label1" Text="Country" runat ="server" Font-Bold="True" 
           Font-Names="Arial" Font-Size="11pt" ForeColor="#0D478D" ></asp:Label>
   </td>
     <td style="height:25px;width:1%; color:#0D478D" align="center">
  <strong>&nbsp;:&nbsp;</strong>
   </td>
   <td align="left">
        <asp:DropDownList ID="ddlCountry" runat="server" Width="166px" Font-Size="11pt" >
        <asp:ListItem Text="Select">Select</asp:ListItem>
         <asp:ListItem Text="India">India</asp:ListItem>
         <asp:ListItem Text="USA">USA</asp:ListItem>
        </asp:DropDownList>
          <asp:RequiredFieldValidator ID="rfvcountry" runat="server" ControlToValidate="ddlCountry" InitialValue="Select" ValidationGroup="travels"> <span class="span">*</span></asp:RequiredFieldValidator>              
   </td>
   </tr>
   <tr>
   <td style="height:25px;" align="right" align="right">
    <span class="span">*</span> <asp:Label ID ="ltrlUserName" Text="User Id" runat ="server" Font-Bold="True" 
           Font-Names="Arial" Font-Size="11pt" ForeColor="#0D478D" ></asp:Label>
   </td>
     <td style="height:25px;width:1pt; color:#0D478D" align="center">
  <strong>&nbsp;:&nbsp;</strong>
   </td>
   <td align="left">       
        <asp:TextBox ID="txtUserID" runat="server" Width="164px" Font-Size="11pt" />  
                <asp:RequiredFieldValidator ID="Requiredfieldvalidator3" runat="server" ControlToValidate="txtUserID" ValidationGroup="travels"> <span class="span">*</span></asp:RequiredFieldValidator>             
   </td>
   </tr>
   <tr>
   <td style="height:25px;" align="right">
    <span class="span">*</span><asp:Label ID="ltrlPwd" runat="server" Text="Password" Font-Bold="True" 
           Font-Names="Arial" Font-Size="11pt" ForeColor="#0D478D"></asp:Label>
   </td>
     <td style="height:25px;width:1%; color:#0D478D" align="center">
  <strong>&nbsp;:&nbsp;</strong>
   </td>
   <td align="left">
          <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="164px" Font-Size="11pt" />  
   <asp:RequiredFieldValidator ID="Requiredfieldvalidator1" runat="server" ControlToValidate="Password" ValidationGroup="travels"> <span class="span">*</span></asp:RequiredFieldValidator>
                
   </td>
   </tr>
   <tr>
   <td colspan="3" align="center" style="padding-left:30%;"><br />
       <div style="float:none;"><asp:ImageButton ID="imgLogin" runat="server" OnClick="Signin_Click" ImageUrl="~/images/buttons1/login.png" ValidationGroup="travels"/></div>          
      </td>
   </tr>
   </table>
      </td>
       </tr>
   </table>
   </td>    
   </tr>
</table>            
       </td>
      </tr>
      </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
    </asp:Panel> 
            </td>
           </tr>
         
          </table></td>
      </tr>
                       
    </table></td>
  </tr>
  
</table>   
    </center>    
  
    </form>
</body>
</html>


