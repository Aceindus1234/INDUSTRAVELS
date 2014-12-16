<%@ Page Language="C#" MasterPageFile="../AdminMainMasterPage.master" AutoEventWireup="true" CodeFile="Admin_Homepage.aspx.cs" Inherits="Admin_Admin_Homepage" Title=": : Admin Homepage : :" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../Css/Stylemodif.css" rel="stylesheet" type="text/css" media="all" />
    <table border="0">
       <tr><td align="center" width="1243" colspan="3">
      
        <table width="1243" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF">
              <tr>
                <td><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td colspan="5" align="center" valign="middle">&nbsp;</td>
                    </tr>
                  <tr>
                        <td width="232" align="center" valign="middle"><asp:ImageButton runat="server" 
                            ID="imgusers" ImageUrl="~/images/admin_images/Users.png" width="216" 
                            height="240" onclick="imgusers_Click" /></td>
                    <td align="center" valign="middle" width="232"><asp:ImageButton ID="imgplans" 
                            ImageUrl="~/images/admin_images/Plans.png" width="216" runat="server" 
                            height="240" border="0" onclick="imgplans_Click" /></td>
                           <td align="center" valign="middle" width="232"><asp:ImageButton runat="server" ID="imgedetails" 
                            ImageUrl="~/images/admin_images/Email Details.png" width="216" height="240" 
                            border="0" onclick="imgedetails_Click" /></td>
                             <td width="232" align="center" valign="middle"><asp:ImageButton runat="server" 
                            ID="imgtemplates" ImageUrl="~/images/admin_images/Template.png" width="216" 
                            height="240" onclick="imgtemplates_Click" /></td>
                             <td align="center" valign="middle">
                        <asp:ImageButton id="imglists" ImageUrl="~/images/admin_images/List.png" width="216" 
                            runat="server" height="240" border="0" onclick="imglists_Click" /></td>
                   
                    </tr>
                  <tr>
                    <td align="center" valign="middle">&nbsp;</td>
                    <td align="center" valign="middle">&nbsp;</td>
                    <td align="center" valign="middle">&nbsp;</td>
                    <td align="center" valign="middle">&nbsp;</td>
                    <td align="center" valign="middle">&nbsp;</td>
                  </tr>
                  <tr>
                      <td align="center" valign="middle"><asp:ImageButton runat="server" 
                            ID="imgnewsletter" ImageUrl="~/images/admin_images/Email News Letter.png" 
                            width="216" height="240" onclick="imgnewsletter_Click" /></td>                 
                    <td align="center" valign="middle"><asp:ImageButton runat="server" 
                            ID="imgesettings" ImageUrl="~/images/admin_images/Email Setting.png" 
                            width="216" height="240" border="0" onclick="imgesettings_Click" /></td>
                    <td align="center" valign="middle"><asp:ImageButton runat="server" ID="imgschedule" 
                            ImageUrl="~/images/admin_images/Schedule Emails.png" width="216" height="240" 
                            border="0" onclick="imgschedule_Click" /></td>
                             <td align="center" valign="middle"><asp:ImageButton runat="server" ID="imgcontact" 
                            ImageUrl="~/images/admin_images/Contact Us Details.png" width="216" 
                            height="240" border="0" onclick="imgcontact_Click" /></td>
                             <td align="center" valign="middle" width="232"><asp:ImageButton runat="server" ID="imgfeedback" 
                            ImageUrl="~/images/admin_images/feedback.png" width="216" height="240" 
                            border="0" onclick="imgfeedback_Click" /></td>
                   </tr>
                  <tr>
                    <td align="center" valign="middle">&nbsp;</td>
                    <td align="center" valign="middle">&nbsp;</td>
                    <td align="center" valign="middle">&nbsp;</td>
                    <td align="center" valign="middle">&nbsp;</td>
                    <td align="center" valign="middle">&nbsp;</td>
                  </tr>
                  </table></td>
                </tr>
              </table></td>
          </tr>
          </table>
    </td></tr>
   
      
     </table>     
        
</asp:Content>

