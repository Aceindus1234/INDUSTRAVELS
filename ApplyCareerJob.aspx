<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplyCareerJob.aspx.cs" Inherits="industravels_ApplyCareerJob" %>

<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH2" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF2" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL2" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR2" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Apply-Careers-Job::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%><link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<style type="text/css">

.h3{color:#C62731}
.hrl{border:1px solid #CBC6C4;}
.inhrl{border:1px dotted #CBC6C4;}
 .h4{text-decoration:underline; color:#4E81B3; padding-left:5px;}
 .uls{list-style:square;}
 .spancl{float:right; padding-right:10px;}
 .trs{height:20px;}
 .td1{width:120px; }
 .td2{width:15px; }
 .ftr{color:#0B2EC5; font-size:14px; font-family:Arial, Helvetica, sans-serif; width:905px; text-align:justify; text-align:center; margin-top:25px;}
.bprev{float:left;font-size:medium; font-weight:bold; height:30px;border-radius:5px;}
.bnext{float:right; font-size:medium; font-weight:bold; height:30px;border-radius:5px;}
#divfoot{width:100%; text-align:center; border:1px dotted gray; height:33px; border-radius:5px;  vertical-align:middle;}
.jtitle{color: #006FFF;
font-size: 14px;
font-weight: bold;}
.listcl{padding:10px 5px 10px 5px;}
.itstyle{padding:10px 0px 0px 0px;}
.ali{color: #FF0202;
background-color: #DADADA;
padding: 2px 10px 2px 10px;
border-radius: 5px;}
.ali:hover{color: Green;
background-color: #DADADA;
padding: 2px 10px 2px 10px;
border-radius: 5px;}
.lbl{margin:5px 0px 0px 0px; width:100px;}
.cntrlstyles
        {
            width:200px; height:25px;  border:1px solid #75828a;   background:#f9f9f9; -webkit-border-radius:3px; border-radius:3px;
        }
        .tabtitle{color: #178FDB;font-size: 14px;}
        .tbldivup{border:1px solid gray; border-radius:5px; background-color:#F9F9F9;}
</style>
<script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script src="js/jquery-1.8.2.js" type="text/javascript"></script>
<script src="js/commanfunction.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        numbersonly("#txtPhone");
        emailformat("#txtmail");
    });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH2:Head ID="THead22" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td>
     <TraL2:Left ID="TLeft22" runat="server" />  
    </td>
    <td valign="top" class="col">
     <div class="contain_center" >
     <h3 class="h3">Apply Career Job</h3><hr  class="hrl" />
     <div class="listcl">
     <table width="100%">
     <tr>
     <td valign="top">
     <asp:DataList ID="dtCareers1" runat="server" Width="100%">
     <ItemStyle CssClass="itstyle" />
     <ItemTemplate>
    <span class="jtitle"> <%#Eval("job_title")%></span><br />
     <hr  class="inhrl"/>
     <table width="100%" >
     <tr class="trs"><td class="td1 "><b>Location</b></td><td class="td2"><b>:</b></td><td><%#Eval("job_loc")%></td></tr>
     <tr class="trs"><td><b>Experience</b></td><td ><b>:</b></td><td><%#Eval("job_exp")%></td></tr>    
     </table>
     </ItemTemplate>    
     </asp:DataList>
     </td>
     <td width="20"></td>
     <td valign="top" width="450">
     <div class="tbldivup">
     <table width="450" class="listcl">
     <tr> <td align="center" colspan="3"><b class="tabtitle">Post Your Resume</b></td></tr>
     <tr><td colspan="3" ><hr class="inhrl" /></td></tr>
     <tr><td class="td1"><b>Full Name</b></td><td class="td2"><b>:</b></td><td>
     <asp:TextBox ID="txtFullname" runat="server" CssClass="cntrlstyles"></asp:TextBox>
     <asp:RequiredFieldValidator ID="req1" runat="server" ControlToValidate="txtFullname" ValidationGroup="g1" >*</asp:RequiredFieldValidator>
     </td></tr>
     <tr><td class="td1"><b>Email Address</b></td><td class="td2"><b>:</b></td><td>
      <asp:TextBox ID="txtmail" runat="server" CssClass="cntrlstyles"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtmail" ValidationGroup="g1" >*</asp:RequiredFieldValidator>
     </td></tr>
     <tr><td class="td1"><b>Phone</b></td><td class="td2"><b>:</b></td><td>
      <asp:TextBox ID="txtPhone" runat="server" CssClass="cntrlstyles" MaxLength="10"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPhone" ValidationGroup="g1" >*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="reg" runat="server" ControlToValidate="txtPhone" ValidationExpression="\d{10}" ValidationGroup="g1">*</asp:RegularExpressionValidator>
     </td></tr>
     <tr><td class="td1"><b>Upload Resume</b></td><td class="td2"><b>:</b></td><td>
     <asp:FileUpload ID="upload1" runat="server" />
       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="upload1" ValidationGroup="g1" >*</asp:RequiredFieldValidator>
     </td></tr>
     <tr><td colspan="3" align="center" >
     <asp:ImageButton ID="imgsubmit" runat="server" AlternateText="submit" ImageUrl="~/industravels/images/buttons1/submit.png" ValidationGroup="g1" 
      OnClick="imgsubmit_click"/>
     <asp:ValidationSummary ID="vsumm" runat="server" ValidationGroup="g1" ShowMessageBox="true" ShowSummary="false" DisplayMode="List" HeaderText="* Marks are mandatory" />
     </td></tr>
     </table>
     </div>
     </td>
     </tr>
     <tr>
     <td colspan="3">
      <span class="jtitle">Job Description</span><br />
     <hr  class="inhrl"/>
     <asp:DataList ID="dtCareers2" runat="server" Width="100%">
     <ItemTemplate>
     
     <%#Eval("job_descr")%>
     </ItemTemplate>
     <ItemStyle  CssClass="itstyle"/>
      <FooterTemplate>
<asp:Label Visible='<%#bool.Parse((dtCareers2.Items.Count==0).ToString())%>' CssClass="ftr" runat="server" 
ID="lblNoRecord" Text="Selected job code is incorrect...."></asp:Label>
</FooterTemplate>
     </asp:DataList>
     
     </td>
     </tr>
     </table>
     
     </div>    
      </div>
<%--<h1 style="color:#0B2EC5; font-size:14px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; text-align:center; margin-top:25px;">Presently Jobs Are Not Avalaible Keep Visiting.....</h1>--%>
      
    </td>
    <td>
     <TraR2:Right ID="TRight22" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF2:Foot ID="TFoot22" runat="server" />
    </td></tr>
    </table>
    </div>
    
    </form>
</body>
</html>
