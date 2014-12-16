<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ItineraryDisplay.aspx.cs" Inherits="ItineraryDisplay" %>

<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH16" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF16" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL16" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR16" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Visa-Types-India::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%><link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/package.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script type="text/javascript" src="js/jquery1-1.8.3(1).js"></script>
 
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td >
     <TraH16:Head ID="THead38" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td valign="top">
     <TraL16:Left ID="TLeft38" runat="server" />  
    </td>
    <td valign="top" class="col">
   <div class="contain_center" >
   <table width="100%"> 
   <tr>
   <td id="contentId" runat="server" style="font-family:Segoe UI; font-size:13px; text-align:justify; ">  

      <asp:DataList ID="dtlist" runat="server">
      <ItemTemplate > 
      <div  style="font-size:13px; font-weight:bold; width:100%; color:#3571AB;">
      <span class="topdiv" style="padding:5px;">&emsp;&emsp;Itinerary Details&emsp;&emsp;&emsp; </span> &emsp;
     <span style="color:#25928A"> <%#Eval("Package_Title") %>&emsp;(<%#Eval("Package_SubTitle") %>)&emsp;--&emsp;<%#Eval("Itenerary_Type") %></span></div>
      <div class="dotteddiv"></div>
    <%-- <div class='box_img_left'><img alt="Package" height="91" width="158" src='<%#Eval("Itinerary_Photoname", "Photos\\{0}") %>' id="imng1" runat="server" /></div>--%>
    <div style="border:1px solid gray; border-radius:8px; ">
    <div style="padding:0px 5px 0px 5px">
     <%#Eval("Description1") %><br />
      <%#Eval("Description2") %>
      </div></div>
      </ItemTemplate>
      </asp:DataList>            
   </td>  
    </tr>
   <tr><td>
   <div style="border:1px dotted Gray; width:100%"></div>
   </td></tr>    
   <tr>
   <td align="left" >
    <div class="topdiv">
    <p style="padding-top:5px">Itinerary Packages </p></div </td>
   </tr>
   <tr>
   <td>
    <div style="border:1px dotted Gray; width:100%"></div>
   <div class="indiv" style="width:99.5%;" >
      <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal" >
      <ItemTemplate > 
   <span style="color:Red; font-weight:bold"><%#Eval("Package_Title")%></span><br />
      <%#Eval("Package_SubTitle")%><br />  
       <div class='box_img_left'>   
   <a href='ItineraryDisplay.aspx?itineraryId=<%#Eval("itenarary_id") %>'>
  <img alt="Itenary" height="91" width="158" src='<%#Eval("Itinerary_Photoname", "Photos/{0}") %>' id="imng1" runat="server" /></a></div>    
      </ItemTemplate>
      <ItemStyle Width="180" />
      </asp:DataList></div>
     
   </td>
   </tr>
   </table>
    </div>
    </td>
    <td valign="top">
     <TraR16:Right ID="TRight38" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF16:Foot ID="TFoot38" runat="server" />
    </td></tr>
    </table>    
    </div>    
    </form>
</body>
</html>



