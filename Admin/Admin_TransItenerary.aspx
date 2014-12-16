<%@ Page Title="" Language="C#" MasterPageFile="../AdminMainMasterPage.master" AutoEventWireup="true" CodeFile="Admin_TransItenerary.aspx.cs" Inherits="Admin_Admin_TransItenerary" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<td width="70%">
<table align="left" width="100%">
<tr>
<td align="left" width="70%" >

<table width="100%">
<tr>
<td style ="background-color:#006699;color:White;font-size:medium;font-weight:bold" colspan="3">Itinerary Search</td>
</tr>
<tr><td>
<asp:ScriptManager ID="script" runat="server"></asp:ScriptManager>

    <br /></td></tr>
<tr>
<td style ="border:solid 1px"><table><tr>
<td >
<table width="100%">
<tr>
<td>Search Criteria<br /><asp:DropDownList ID="ddlcriteria" runat="server"><asp:ListItem>ReferenceNo</asp:ListItem></asp:DropDownList></td>

<td colspan="2" align="left" style="padding-left:20px">Search Text<br /><asp:TextBox ID="txttext" runat="server" ></asp:TextBox></td>


</tr>
<tr>
<td>Service<br />
<asp:DropDownList ID="ddlservice" runat="server">
<asp:ListItem>All Services</asp:ListItem>
</asp:DropDownList>
</td>
<td>Status<br />
<asp:DropDownList ID="ddlstatus" runat="server" Width="80px">
<asp:ListItem>All</asp:ListItem>
</asp:DropDownList>
</td>

<td>Financial Year<br />
<asp:DropDownList ID="ddlyear" runat="server" Width="120px">
<asp:ListItem>2014-2015</asp:ListItem>
</asp:DropDownList>
</td>
</tr>

</table></td>

<td valign="top" style="border:solid 1px;"><table >
<tr><td colspan="2">
<asp:RadioButton ID="rdbookdate" runat="server" GroupName="date"  Text="Booking Date"/>&nbsp;&nbsp;&nbsp;&nbsp;
<asp:RadioButton ID="rdtraveldate" runat="server" GroupName="date"  Text="Travel Date"/></td>
</tr>
<tr><td>From Date<br />

 <asp:TextBox ID="txtfrom" runat="server"  contenteditable="false" Height="20px"></asp:TextBox>
                          
                           <cc1:CalendarExtender ID="CalendarExtender1" runat="server"  TargetControlID="txtfrom">
                           </cc1:CalendarExtender>
</td>
<td>To Date<br />
<asp:TextBox ID="txtto" runat="server"  contenteditable="false" Height="20px"></asp:TextBox>
                          
                           <cc1:CalendarExtender ID="CalendarExtender2" runat="server"  TargetControlID="txtto">
                           </cc1:CalendarExtender>
</td>
</tr>
</table></td>

<td><asp:Button ID="btnsubmit" runat="server" Text="Search" /></td>

</tr></table></td>
</tr>
</table>

</td>
</tr>












<tr>
<td align="left" width="70%" >

<table width="100%">
<tr>
<td style ="background-color:#006699;color:White;font-size:medium;font-weight:bold" colspan="3">Cancellations</td>
</tr>
<tr><td><br /></td></tr>
<tr>
<td style ="border:solid 1px"><table><tr>
<td >
<table width="100%">
<tr>
<td>Search Criteria<br /><asp:DropDownList ID="ddltransaction" runat="server"><asp:ListItem>TransactionId</asp:ListItem></asp:DropDownList></td>

<td colspan="2" align="left" style="padding-left:20px">Search Text<br /><asp:TextBox ID="ddlcanctext" runat="server" ></asp:TextBox></td>


</tr>
<tr>
<td>Service<br />
<asp:DropDownList ID="ddlcancserivce" runat="server">
<asp:ListItem>All Services</asp:ListItem>
</asp:DropDownList>
</td>


<td>Financial Year<br />
<asp:DropDownList ID="ddlcancyear" runat="server" Width="120px">
<asp:ListItem>2014-2015</asp:ListItem>
</asp:DropDownList>
</td>
</tr>

</table></td>

<td valign="top" style="border:solid 1px;"><table >
<tr><td colspan="2">
<asp:RadioButton ID="RadioButton1" runat="server" GroupName="date"  Text="Booking Date"/>&nbsp;&nbsp;&nbsp;&nbsp;
<asp:RadioButton ID="RadioButton2" runat="server" GroupName="date"  Text="Travel Date"/></td>
</tr>
<tr><td>From Date<br />

 <asp:TextBox ID="TextBox2" runat="server"  contenteditable="false" Height="20px"></asp:TextBox>
                          
                           <cc1:CalendarExtender ID="CalendarExtender3" runat="server"  TargetControlID="TextBox2">
                           </cc1:CalendarExtender>
</td>
<td>To Date<br />
<asp:TextBox ID="TextBox3" runat="server"  contenteditable="false" Height="20px"></asp:TextBox>
                          
                           <cc1:CalendarExtender ID="CalendarExtender4" runat="server"  TargetControlID="TextBox3">
                           </cc1:CalendarExtender>
</td>
</tr>
</table></td>

<td><asp:Button ID="Button1" runat="server" Text="Search" /></td>

</tr></table></td>
</tr>
</table>

</td>
</tr>



















<tr>
<td align="left" width="70%" >

<table width="100%">
<tr>
<td style ="background-color:#006699;color:White;font-size:medium;font-weight:bold">Travel Calender</td>
</tr>
<tr><td><br /></td></tr>
<tr>
<td ><table><tr>
<td >
<table width="100%">
<tr>
<td valign="top">Month&nbsp;&nbsp;<asp:DropDownList ID="ddlmonth" runat="server"><asp:ListItem>TransactionId</asp:ListItem></asp:DropDownList></td>

<td colspan="2" valign="top" align="left" style="padding-left:20px">Year&nbsp;&nbsp;<asp:DropDownList ID="ddlcalyear" runat="server" ><asp:ListItem>2014</asp:ListItem></asp:DropDownList></td>


</tr>


</table></td>



<td><asp:Button ID="Button2" runat="server" Text="Show Details" /></td>

</tr></table></td>
</tr>

<tr><asp:Calendar ID="cal" Width="100%" Height="400px" runat="server"></asp:Calendar></tr>
</table>

</td>
</tr>
</table>


</asp:Content>

