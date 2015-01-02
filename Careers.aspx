<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Careers.aspx.cs" Inherits="industravels_new_Careers" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH2" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF2" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL2" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR2" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Careers::</title>
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
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH2:Head ID="THead2" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td>
     <TraL2:Left ID="TLeft2" runat="server" />  
    </td>
    <td valign="top" class="col">
     <div class="contain_center" >
     <h3 class="h3">Careers</h3><hr  class="hrl" />
     <div class="listcl">
     <asp:DataList ID="dtCareers" runat="server" Width="100%">
     <ItemStyle CssClass="itstyle" />
     <ItemTemplate>
    <span ><a  href='ApplyCareerJob.aspx?jcode=<%#Eval("job_code")%>' class="jtitle"> <%#Eval("job_title")%></a></span>
    <span class="spancl"><a class="ali" href='ApplyCareerJob.aspx?jcode=<%#Eval("job_code")%>'>Apply</a></span><br />
     <hr  class="inhrl"/>
     <table width="100%" >
     <tr class="trs"><td class="td1 "><b>Location</b></td><td class="td2"><b>:</b></td><td><%#Eval("job_loc")%></td></tr>
     <tr class="trs"><td><b>Experience</b></td><td ><b>:</b></td><td><%#Eval("job_exp")%></td></tr>
     <tr class="trs" ><td><b>Description</b></td><td ><b>:</b></td><td title='<%#Eval("job_descr")%>'>
     <%# Eval("job_descr").ToString().Length > 120 ? Eval("job_descr").ToString().Substring(0, 120) + " ..." : Eval("job_descr")%>
     </td></tr>
     </table>
     </ItemTemplate>
     <FooterTemplate>
<asp:Label Visible='<%#bool.Parse((dtCareers.Items.Count==0).ToString())%>' CssClass="ftr" runat="server" 
ID="lblNoRecord" Text="Presently Jobs Are Not Avalaible Keep Visiting....."></asp:Label>
</FooterTemplate>
     </asp:DataList>
     </div>
     <div id="divfoot" runat="server"  >
     <table width="100%">
     <tr>
     <td> <asp:Button ID="btnprev" runat="server" CssClass="bprev" OnClick="btnprev_click" Text="<<" ToolTip="Previous"  />
     </td>
     <td align="center"> <asp:Label ID="lblpage" runat="server" ></asp:Label></td>
     <td> <asp:Button ID="btnext" runat="server" CssClass="bnext" OnClick="btnext_click" Text=">>" ToolTip="Next"  /></td>
     </tr>
     </table>
      </div>
<%--<h1 style="color:#0B2EC5; font-size:14px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; text-align:center; margin-top:25px;">Presently Jobs Are Not Avalaible Keep Visiting.....</h1>--%>
</div>
    </td>
    <td>
     <TraR2:Right ID="TRight2" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF2:Foot ID="TFoot2" runat="server" />
    </td></tr>
    </table>
  
   
    </div>
    
    </form>
</body>
</html>
