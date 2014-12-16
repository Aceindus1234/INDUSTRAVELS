<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HolidayDetails.aspx.cs" Inherits="HolidayDetails" %>

<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH16" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF16" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL16" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR16" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Holiday-Details-View::</title>
<link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/package.css" rel="stylesheet" type="text/css" />
<link href="css/Holidays.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script type="text/javascript" src="js/jquery1-1.8.3(1).js"></script>
  <script type="text/javascript" src="js/tabslide.js"></script>
   <script type="text/javascript" src="js/commanfunction.js"></script>
 <script type="text/javascript">
     function getting() {
         alert("For Conformation and Advices, Please Call Us !!!. \n \n USA : 703-574-3278 \n India : 040-66736226");
     }     
 </script> 
 <script type="text/javascript">
     $(document).ready(function () {
         numbersonly("#txtPhone");
         emailformat("#txtMail");
     });
 </script>

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
    <div class="contain" style="margin-top:2px; ">
    <table width="100%">
    <tr>
    <td valign="top">
     <TraL16:Left ID="TLeft38" runat="server" />  
    </td>
    <td valign="top" class="col">
   <div class="contain_center" >
   <div class="toptitle">
   Holiday Detail view For : &nbsp;
    <asp:Label ID="lbl1" runat="server" CssClass="lblstyle" >   
    </asp:Label> 
    <div class="rightdiv">
    <a href="HolidaySpot.aspx" class="backclass"><< Back</a></div>
    <hr class="hrdiv" />
   </div>
   <table width="100%">
   <tr>
   <td>
   <div id="htmltd" runat="server" style="width:100%; padding-left:5px;">
   <div class="catetbsdiv">&nbsp;
   <span id="div1"  >General Information</span>
    <span id="div2"  >Itineraries</span>
     <span id="div3"  >Inclusion & Exclusion</span>
     <span id="div4"  >Photos</span>
     <span id="div5" >Other Information</span>
     </div>
     <div  class="datalistdiv">     
   <asp:DataList ID="dtlistItineraries" runat="server" Width="100%" OnItemDataBound="outerRep_ItemDataBound">
   <ItemTemplate>   
   <div id="generaldiv" class="genralinfo">
   <%#Eval("description1")%>
   </div>
   <div id="itidiv" class="Itinerarydiv">
   <%#Eval("description2")%>
   </div>
    <div id="inclusdiv" class="inexdiv">
   <%#Eval("description3")%>
   </div>
   <div id="photdiv" class="Photosdiv" style="text-align:center">    
  <asp:DataList ID="innerdatalist" Width="98%" runat="server" RepeatColumns="2" CellPadding="5" CellSpacing="5" RepeatDirection="Horizontal">
  <ItemTemplate>  
  <img src="<%#Eval("Itinerary_Photoname","photos/{0}") %>" width="400" height="250" class="photodiv" alt="Itinerary Image" /> <br /><br /><br />
  </ItemTemplate>
  </asp:DataList>
  </center>
   </div>   
   </ItemTemplate>
   </asp:DataList> 
    <div class="Otherdiv" id="Othdiv">  <br />
   To know the details of the package rates and dates, please fill the enquiry form.
   Our travels market agents will contact you soon.<br /><br />
   <center>
   <div class="tablediv">
   <table width="500" class="tblstyle">
   <tr>
   <td colspan="3" align="center" class="tbltitle">Please Enter Basic Details</td>
   </tr>
   <tr>
   <td class="tdfont">&emsp;Name</td>
   <td width="10"><b>:</b></td>
   <td align="left"><asp:TextBox ID="txtName" runat="server" CssClass="tbox"></asp:TextBox>&nbsp;
   <asp:RequiredFieldValidator ID="reqired1" runat="server" ControlToValidate="txtName" SetFocusOnError="true" ValidationGroup="de1" >*</asp:RequiredFieldValidator>
   </td>
   </tr>
   <tr>
   <td class="tdfont">&emsp;Phone Number</td>
   <td width="10"><b>:</b></td>
   <td align="left"><asp:TextBox ID="txtPhone" runat="server" CssClass="tbox" MaxLength="10"></asp:TextBox>   &nbsp;
   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPhone" SetFocusOnError="true" ValidationGroup="de1" >*</asp:RequiredFieldValidator>
   <asp:RegularExpressionValidator ID="regul1" runat="server" ControlToValidate="txtPhone" ValidationGroup="de1" ValidationExpression="\d{10}" ErrorMessage="10 digit number"></asp:RegularExpressionValidator>
   </td>
   </tr>
   <tr>
   <td class="tdfont">&emsp;Email</td>
   <td width="10"><b>:</b></td>
   <td align="left"><asp:TextBox ID="txtMail" runat="server" CssClass="tbox"></asp:TextBox>
   &nbsp;
   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMail" SetFocusOnError="true" ValidationGroup="de1" >*</asp:RequiredFieldValidator>
   </td>
   </tr>
   <tr style="height:10px;">
   <td colspan="3"></td>  
   </tr>
   <tr>
   <td colspan="3" align="center">
   <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="btnstyle" ValidationGroup="de1" OnClick="btnSend_Click" />
   </td>  
   </tr>
   <tr style="height:10px;">
   <td colspan="3"></td>  
   </tr>
   </table>
   </div>
   </center>
   <br /><br /><br /><br />  <%--<div style="border:1px dotted Gray; width:100%"></div>--%>
   <div class="topdivItin" style="float:left">
    <p style="padding-top:4px" >Related Packages </p></div>
    <br />  <br /> 
   <div class="indiv" style="width:99.5%; border:1px solid #0C67A5" >  
      <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal" >
      <ItemTemplate > 
   <span style="color:Red; font-weight:bold"><%#Eval("Package_Title")%></span><br />
      <%#Eval("Package_SubTitle")%><br />  
       <div class='box_img_left'>   
   <a href='HolidayDetails.aspx?packid=<%#Eval("itenarary_id") %>'>
  <img alt="Itenary" height="91" width="158" src='<%#Eval("Itinerary_Photoname", "Photos/{0}") %>' id="imng1" runat="server" /></a></div>    
      </ItemTemplate>
      <ItemStyle Width="180" />
      </asp:DataList>
      
      </div>
   
  <%-- <a href="#" class="linkcolor">Click here for the enquiry form</a>--%>
   </div>
   </div>
   </div>   
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



