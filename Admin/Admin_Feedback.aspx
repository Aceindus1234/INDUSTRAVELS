<%@ Page Language="C#" MasterPageFile="../AdminMainMasterPage.master"  AutoEventWireup="true" CodeFile="Admin_Feedback.aspx.cs" Inherits="industravels_Admin_Admin_Feedback" Title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
.roun{border-radius:5px;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<table width="100%">
<tr>
<td>&nbsp;</td>
</tr>
<tr>
 <td align="center" ><font color="#1b6daf" size="4px" >Feedbacks</font></td>
</tr>
<tr>

<td>
<asp:DataList ID="datalist1" runat="server" DataKeyField="id" Width="100%" BackColor="#63ABD8" BorderColor="Tan" BorderWidth="1px" Font-Bold="False" Font-Italic="False" Font-Overline="False" 
Font-Strikeout="False" Font-Underline="False" ForeColor="Black"  GridLines="Horizontal" HorizontalAlign="Justify" Font-Size="10pt" ondeletecommand="datalist1_DeleteCommand" CellPadding="4" CellSpacing="2">
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
<ItemTemplate>
<table width="100%">
<%--<tr>
<td></td><td></td>
<td style="padding-right:110px" align="right">--%>
<%--<asp:Button id="btndel" runat="server" CommandName="Delete" Text="Delete" />--%>

<%--</td>
</tr>--%>

<tr>
<td width="200"><b>&nbsp;&nbsp;Name</b></td>
<td width="10">:</td>
<td align="left"><asp:Label Font-Size="Medium" Font-Bold="true" ID="namelable" runat="server" Text='<%#Eval("name") %>'></asp:Label>
<div style="width:200px; float:right"><asp:Label ID="datelable" runat="server" Text='<%#Eval("Date","{0:dd MMM yyyy}") %>'></asp:Label>&emsp;&emsp;
<asp:Button ID="Delete" runat="server" CssClass="roun" ToolTip="Delete"
 OnClientClick="return confirm(' Are you sure !!! You want delete this record ? ');" CommandName="Delete" CommandArgument='<%#Eval("Id")%>' Text=" Delete "  />
</div>

</td></tr>

<tr>
<td colspan="3">
<table width="100%">
<tr>
<td width="50%">
<table width="100%">
<tr>
<td width="195"><b>Organization</b></td>
<td width="10">:</td>
<td  align="left"><asp:Label ID="orglable" runat="server" Text='<%#Eval("organization") %>'></asp:Label></td></tr>
<tr>
<td><b>Contact</b></td>
<td>:</td>
<td  align="left"><asp:Label ID="telnolable" runat="server" Text='<%#Eval("telno") %>'></asp:Label></td></tr>
<tr>
<td><b>e-mail</b></td>
<td>:</td>
<td  align="left"><asp:Label ID="emaillable" runat="server" Text='<%#Eval("email") %>'></asp:Label></td></tr>
</table>
</td>
<td valign="top">
<table width="100%">
<tr>
<td valign="top" width="100"><b>Address</b></td>
<td valign="top" width="10">:</td>
<td  align="left"><asp:Label ID="lblAddress" runat="server" Text='<%#Eval("address") %>'></asp:Label></td></tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td valign="top"><b>&nbsp;&nbsp;Comments</b></td>
<td valign="top">:</td>
<td  align="left" style="text-align:justify"><asp:Label ID="comentslable" runat="server" Text='<%#Eval("coments") %>'></asp:Label></td>
</tr>
<tr>
<td></td>
<td></td>
<td  align="left"></td>
</tr>
</table>
</ItemTemplate>
    <AlternatingItemStyle BackColor="White" />
    <ItemStyle BackColor="#F0F9FF" ForeColor="#333333" />
    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
</asp:DataList>
</td>
</tr>
<tr id="trNodata" runat="server">
<td align="center" style="color:Red; font-size:11pt;">No Records Are Found.</td>
</tr>
<tr id="trPaging" runat="server" >
<td  align="right" style="padding-right:7px;">
    <asp:Button ID="imgPrevious" runat="server" Font-Bold="true" Text=" << " Font-Size="Medium"  OnClick="imgPrevious_Click" ToolTip="Previous"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="imgNext" runat="server" Font-Bold="true" Font-Size="Medium" Text=" >> " OnClick="imgNext_Click" ToolTip="Next" />
</td></tr>
</table>
</div>
</asp:Content>

