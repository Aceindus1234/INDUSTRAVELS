<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HotelDetails.aspx.cs" Inherits="HotelDetails" %>

<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH16" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF16" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL16" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR16" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Hotels-View::</title>
 <link rel="stylesheet" href="http://www.tnetnoc.com/static/28.100.1/POS/HCL/cssAll1.css"/>
<link rel="stylesheet" href="http://www.tnetnoc.com/static/28.100.1/POS/HCL/cssAll2.css"/>
<link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/hotels.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script type="text/javascript" src="js/jquery1-1.8.3(1).js"></script>
 <style type="text/css">
 ul.pipedList li, dl.pipedList dt, dl.pipedList dd {    
    width: 100px;
}
 </style>
 <script type="text/javascript">
     function getting() {
         alert("For Conformation and Advices, Please Call Us !!!. \n \n USA : 703-574-3278 \n India : 040-66736226");
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
   <div class="titlediv"><span class="spans"> &emsp;  Hotel Overview : &emsp;</span>
   <asp:Label ID="lbl1" runat="server"></asp:Label>

   </div>
   <table width="100%">
   <tr>
   <td>
   <div id="htmltd" runat="server" style="width:100%; padding-left:5px;">
   
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


