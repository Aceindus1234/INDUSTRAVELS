<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchToursDetails.aspx.cs" Inherits="SearchToursDetails" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH16" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF16" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL16" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR16" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Package-Details-View::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">--%>
 <link type="text/css" rel="stylesheet" href="http://www.makemytrip.com/sites/default/files/advagg_css/css__olub2ySmhZoT4feJ5IrSjGCuSpKp66l2pYntXb7Brbs__U3rzB0PE9fTtdp2ArLnPx9o3m2tIHqLClw5fAmK6_YU__8DX2yiqEh3sEqnzCJz7zK3zmkWOMFg5uFXGLUI7C-zY.css" media="all"/>
<link rel="stylesheet" type="text/css" href="https://css.mmtcdn.com/holidays/css/Holidays3.0/holidays-common.css?d=08072014"/>
<script src="https://book.goindigo.in/scripts/lib/jquery-1.9.1.js" type="text/javascript"></script>
<link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script type="text/javascript" src="js/jquery1-1.8.3(1).js"></script>

 <%--<style>
 .package_imgwrapper
{
width:275px;
}
ul{margin:5px 0 0 0px; width:250px; font-size:85%}

.listing_section .left_part{width:750px;}
.package_details_listing{width:450px;}
.listing_section .right_part{width:145px}
.duration_details{width:190px}
ul.aminities_list li{width:70px;margin:0px 6px 6px 0px}
ul.theme_list li{width:80px; margin:0 0px 5px 0;}
.secondary_button_top,.drop-menu, .modify_tabs,.left_package_text,.hld_view_image,.hld_view_detail{display:none;}
hr{margin:14px 0px 0px 0px; width:90%; padding:0px 0px 0px 0px; }
.banner{height:245px;}
.pkg_durationList li{margin-bottom:0px;}
.pkg_durationList{font-size:9pt;}
.listing_innersection h2{font-size:150%; line-height:5px;}
 </style>--%>
 <script type="text/javascript">
     function getting() {
         alert("For More Information, Please Call Us !!!. \n \n USA : 703-574-3278 \n India : 040-66736226");
     }     
 </script>
 <style type="text/css">
     #downloads_section{display:none;}
     #inclusion_section{width:850px;}
     #packageItinerary_section{width:850px;}
     .inner_itineraryDaywise{width:840px;}
     .secondary_button{display:none;}
     .inner_itineraryDaywise {
    width: 850px;
}
p{text-align:justify;}
.itineraryDaywise{border:0px;}
.daywise_topbar{width:900px}
.containDetail > ul{width:460px}
.inner_itineraryDaywise .left_block {
    width: 100px;
    border: 1px solid #E3E3E3;
    margin-right: 10px;
    background: none repeat scroll 0% 0% #FAFAFA;
}
.left_block {width:100px;}
.right_block{width:750px;}
.right_block .third_part {
    width: 585px;
}
.inner_itineraryDaywise {
    width: 900px;
}
h3{color:#2CAAD4;}
h4{color:#014B68;}
.daywise_topbar .day_info {
    padding: 10px 14px;
}
.day_info {
    font-size: 140%;
    color: #FFF;
    background: none repeat scroll 0% 0% rgba(24, 82, 110, 1);
    padding: 5px;
}
.containIco a{width:130px;}
hr{margin:14px 0px 0px 0px; width:90%; padding:0px 0px 0px 0px; }
.banner{height:245px;}
#inclusion_section {
    width: 900px;
}
.star_icon,.family_icon_small,.top_packagelist,.package_right{display:none}
 
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
   <td >
   <%--<div style="height:622px; width:930px; overflow-y:scroll;">--%>
   <div id="htmltd" runat="server" style="width:930px; padding-left:5px;">
   
   </div> <%--</div> --%>
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


