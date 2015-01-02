<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchTours.aspx.cs" Inherits="SearchTours" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH16" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF16" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL16" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR16" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Search-Package-Tours::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">--%>
 <link type="text/css" rel="stylesheet" href="http://www.makemytrip.com/sites/default/files/advagg_css/css__olub2ySmhZoT4feJ5IrSjGCuSpKp66l2pYntXb7Brbs__U3rzB0PE9fTtdp2ArLnPx9o3m2tIHqLClw5fAmK6_YU__8DX2yiqEh3sEqnzCJz7zK3zmkWOMFg5uFXGLUI7C-zY.css" media="all"/>
<link rel="stylesheet" type="text/css" href="https://css.mmtcdn.com/holidays/css/Holidays3.0/holidays-common.css?d=08072014"/>
<link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script type="text/javascript" src="js/jquery1-1.8.3(1).js"></script>
 <style type="text/css">
.package_imgwrapper{width:275px;}
ul.theme_list{margin:23px 0 0 0px; width:250px; font-size:85%}
.listing_section .left_part{width:750px;}
.package_details_listing{width:450px;}
.listing_section .right_part{width:145px}
.duration_details{width:190px}
ul.aminities_list li{width:68px;margin:0px 6px 6px 0px}
ul.theme_list li{width:80px; margin:0 0px 5px 0;}
.secondary_button_top,.drop-menu,.modify_tabs,.left_package_text,.hld_view_image,.hld_view_detail{display:none;}
hr{margin:14px 0px 0px 0px; width:90%; padding:0px 0px 0px 0px; }
.banner{height:245px;}
.pkg_durationList li{margin-bottom:0px;}
.pkg_durationList{font-size:9pt;}
.listing_innersection h2{font-size:150%; line-height:5px;}
#filter_data{display:none;}
.block-inner h3{display:none;}
 </style>
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


