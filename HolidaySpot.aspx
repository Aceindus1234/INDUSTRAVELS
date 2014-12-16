<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HolidaySpot.aspx.cs" Inherits="HolidaySpot" %>

<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH16" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF16" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL16" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR16" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Holiday-Locations::</title>

<link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css" rel="stylesheet" type="text/css" />
<link href="css/Holidays.css" rel="stylesheet" type="text/css" />

  <script type="text/javascript" src="js/popjquery.min.js"></script>
<script src="js/popjquery-ui.js" type="text/javascript"></script>
 <script type="text/javascript" src="js/commanfunction.js"></script>

 <script type="text/javascript">     
     function getting() {
         alert("For Conformation and Advices, Please Call Us !!!. \n \n USA : 703-574-3278 \n India : 040-66736226");
     }     
 </script>
  <script type="text/javascript">
      //[id*=btnModalPopup]
      $(document).ready(function () {      
          numbersonly("#txtPhone");
          emailformat("#txtMail");
          $("#btnSend").click(function () {
              return true;
          });
      });
      $(".anchors").live("click", function () {         
          document.getElementById("Label1").value = this.title;
          storetext("Label1", "HolidaySpot.aspx", "assinglbl");         
          $(".tablediv").dialog({
              title: "Please Enter Contact Details ",
              buttons: {
                  Close: function () {
                      $(this).dialog('X');
                  }
              },
              modal: true
          });
          return false;
      });
      function txtchanged(txt) {
          storetext(txt, "HolidaySpot.aspx", "assignstring");
          }

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
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td valign="top">
     <TraL16:Left ID="TLeft38" runat="server" />  
    </td>
    <td valign="top" class="col">
   <div class="contain_center" >
   <div class="titlediv">
   <span class="spanback">Holiday Packages Overview</span>  <asp:Label ID="lbl1" runat="server"></asp:Label>
   &emsp;
   Filter By Category: 
   <asp:DropDownList ID="ddltype" Width="200" runat="server" AutoPostBack="true" ValidationGroup="v1" OnSelectedIndexChanged="ddltype_changed">   
   </asp:DropDownList> 
   <%--<asp:RequiredFieldValidator ID="reqi1" runat="server" ControlToValidate="ddltype" InitialValue="Select" ValidationGroup="v1">*</asp:RequiredFieldValidator>--%>
     &emsp;
   Filter By Type: 
   <asp:DropDownList ID="ddlTheme" runat="server" AutoPostBack="true" ValidationGroup="v2" OnSelectedIndexChanged="ddlTheme_changed">   
   </asp:DropDownList>   &emsp;
    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlTheme" InitialValue="None" ValidationGroup="v2">*</asp:RequiredFieldValidator>--%>
    <asp:Button ID="btnrefresh" runat="server" Text="  Refresh  "  OnClick="btnrefresh_Click"  CssClass="btnrefresh" />
   </div>
   <hr class="hrclass" />
   <table width="100%">
   <tr>
   <td>
   <div id="htmltd" runat="server" class="htmldiv">
   <asp:DataList ID="dtHolidayList" runat="server" Width="100%" >   
   <ItemTemplate>
   <div class="shadow itemdiv" >
   <table width="100%">
   <tr>
   <td  width="280" height="120" align="center">
    <a href='<%#Eval("packageItenarary_id","HolidayDetails.aspx?packid={0}")%>'  >
   <img src="<%#Eval("Itinerary_Photoname","photos/{0}") %>" class="shadow"  width="220" height="100" alt=" package photo " />
  </a>
   </td>
   <td valign="top">
   <table width="100%" style="margin-top:5px;">
   <tr>
   <td>
   <table width="100%">
     <tr>
   <td colspan="3" class="linktd">
   <a href='<%#Eval("packageItenarary_id","HolidayDetails.aspx?packid={0}")%>' style="color:#1A95D8" > <%#Eval("Package_Title")%></a>
  </td>
   </tr>  
   <tr>
   <td width="150">Holiday Type</td>
   <td width="10">:</td>
   <td><%#Eval("Itenerary_Type").ToString().Replace("None","Holiday Package")%></td>
   </tr>
   <tr>
   <td>Time Duration</td>
   <td>:</td>
   <td><%#Eval("Package_SubTitle")%></td>
   </tr>
   <tr><td>Package Category</td>
   <td>:</td>
   <td><%#Eval("package_type")%></td>
   </tr>
    <tr>
   <td colspan="3" id="tdstring" runat="server">&nbsp;
<%--<%#ValidateString(Eval("Description1"))%> --%>
  <%-- <%#Eval("Description1")%>--%></td>
   </tr>
 
   </table>
   </td>
   <td width="150px" align="center">
   <div style="padding-top:5px;">
 <%-- &#2352; <%#Eval("rate")%><span style="color:Red">-NA-</span><br />Per Person<br /><br />--%>
 <a href='<%#Eval("packageItenarary_id","HolidayDetails.aspx?packid={0}")%>' class="tab">View Details</a>
  <br />
 <%-- <br />
   <a onclick="getting();" class="tab1" style="cursor:pointer">Book</a>--%>
  </div>
   </td>
   </tr>
 <tr>   
   <td colspan="2" >
   For booking or further detailed information, please  <a href="#" class="anchors" title='<%#Eval("Package_Title")%>' style="color:Blue">Click Here.</a> Our travel experts will contact you very shortly.  
  <%-- Need Detail Information From Our Travel Experts ...--%>   
   </td>
   </tr>
   </table>
   </td>
   </tr>   
   </table>
   </div>
   <br />
   </ItemTemplate>
   </asp:DataList>
   </div>   
   </td>
   </tr>
   <tr><td class="navigationtd">
    <div class="prediv">
     <asp:LinkButton ID="Prev" runat="server" AlternateText="btnPrevious"  OnClick="Prev_Click" CssClass="roundlink" Text="<<" ToolTip="Previous"  /></div>
     <div class="nextdiv">
    <asp:LinkButton ID="Next" runat="server" AlternateText="btnNext"  OnClick="Next_Click" Text=">>" CssClass="roundlink" ToolTip="Next" /></div>
   </td></tr>
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
    <div class="tablediv" style="width:502px; display:none" >
   <table width="500" class="tblstyle">
   <tr>
   <td colspan="3" align="center" class="tbltitle">Please Enter Basic Details</td>
   </tr>
   <tr>
   <td class="tdfont">&emsp;Name</td>
   <td width="10"><b>:</b></td>
   <td align="left"><asp:TextBox ID="txtName" runat="server" CssClass="tbox" onchange="txtchanged('txtName')"></asp:TextBox>
   &nbsp;
   <asp:RequiredFieldValidator ID="reqired1" runat="server" ControlToValidate="txtName" SetFocusOnError="true" ValidationGroup="de1" >*</asp:RequiredFieldValidator>
   </td>
   </tr>
   <tr>
   <td class="tdfont">&emsp;Phone Number</td>
   <td width="10"><b>:</b></td>
   <td align="left"><asp:TextBox ID="txtPhone" runat="server" CssClass="tbox" MaxLength="10"  onchange="txtchanged('txtPhone')"></asp:TextBox>
   &nbsp;
   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPhone" SetFocusOnError="true" ValidationGroup="de1" >*</asp:RequiredFieldValidator>
   <asp:RegularExpressionValidator ID="regul1" runat="server" ControlToValidate="txtPhone" ValidationGroup="de1" ValidationExpression="\d{10}" ErrorMessage="10 digit number"></asp:RegularExpressionValidator>
   </td>
   </tr>
   <tr>
   <td class="tdfont">&emsp;Email</td>
   <td width="10"><b>:</b></td>
   <td align="left"><asp:TextBox ID="txtMail" runat="server" CssClass="tbox"   onchange="txtchanged('txtMail')"></asp:TextBox>
   &nbsp;
   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMail" SetFocusOnError="true" ValidationGroup="de1" >*</asp:RequiredFieldValidator>
   </td>
   </tr>
   <tr style="height:10px;">
   <td colspan="3"></td>  
   </tr>
   <tr>
   <td colspan="3" align="center">
   <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="btnstyle" ValidationGroup="de1" UseSubmitBehavior="false"  OnClick="btnSend_Click" /> 
   </td>  
   </tr>
   <tr style="height:10px;">
   <td colspan="3"></td>  
   </tr>
   </table>
  <asp:Label ID="Label1" runat="server" Text="" ForeColor="White"  />          
   </div>
    </div>   
    </form>
</body>
</html>


