<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AirlineNumbers.aspx.cs" Inherits="industravels_airlinenumbers" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH22" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF22" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL22" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR22" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Airline-Numbers::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%><link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script type="text/javascript" src="js/jquery1-1.8.3(1).js"></script>
<style>

.GridviewScrollPager SPAN
{
    font-size: 16px;
    color: OrangeRed; 
    font-weight: bold;
}

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH22:Head ID="THead22" runat="server" />
    </td>
    </tr>    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td>
     <TraL22:Left ID="TLeft22" runat="server" />  
    </td>
    <td valign="top" class="col" >
   <div class="contain_center"  >
    <h1 style="color:#5d5d5d; font-size:16px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px;" >Toll Free Number For Airlines :</h1>
<asp:GridView ID="dtBasic" runat="server" AllowPaging="true" OnPageIndexChanging="dtBasicPage_Change" Width="925" 
 AutoGenerateColumns="false" GridLines="Both" BorderWidth="1" CellPadding="3" CellSpacing="3"  PageSize="27" >
<Columns>
<asp:TemplateField HeaderText="&nbsp; S.No." >
<ItemTemplate>&emsp;
 <%#Container.DataItemIndex + 1%>
 </ItemTemplate>
 <HeaderStyle Width="100"   /> 
</asp:TemplateField>
<asp:TemplateField HeaderText="Company"   >
<ItemTemplate >
<%#Eval("Company") %>
</ItemTemplate>
<HeaderStyle Width="200" />
</asp:TemplateField>
<asp:TemplateField HeaderText="Toll Free Number"  >
<ItemTemplate >
<%#Eval("Phone") %>
</ItemTemplate>
<HeaderStyle Width="200" />
</asp:TemplateField>
</Columns>
<HeaderStyle   BackColor="#88CAF7" ForeColor="#404040" Font-Bold="true" Font-Size="13pt" Height="30" Font-Names="Verdana Arial San-Serif" HorizontalAlign="Center"  /> 
<RowStyle BorderWidth="1" Height="20" Font-Size="10pt"  ForeColor="Gray"/>
<PagerStyle HorizontalAlign="Right" Height="25" Font-Size="10pt"
 CssClass="GridviewScrollPager" ForeColor="#404040" BorderColor="Lime" BackColor="#88CAF7"   />
</asp:GridView>
<%--<asp:DataList ID="dtBasic" runat="server" >
    <ItemTemplate>
   
    Name: <%#DataBinder.Eval(Container.DataItem,"name") %><br />
    Location:<%#DataBinder.Eval(Container.DataItem,"location") %><br />
    e-mail:<a href="mailto:<%#DataBinder.Eval(Container.DataItem,"email") %>">
    <%#DataBinder.Eval(Container.DataItem,"email") %></a> <br />
    Comments:<%#DataBinder.Eval(Container.DataItem,"comments") %><br />
    Post Date:<%#DataBinder.Eval(Container.DataItem,"date") %>
    </ItemTemplate>
    </asp:DataList>--%>
   
    </div>
    </td>
    <td>
     <TraR22:Right ID="TRight22" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF22:Foot ID="TFoot22" runat="server" />
    </td></tr>
    </table>
  
   
    </div>
    
    </form>
</body>
</html>

