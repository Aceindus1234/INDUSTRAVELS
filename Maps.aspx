<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Maps.aspx.cs" Inherits="industravels_new_Maps" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH7" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF7" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL7" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR7" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::World-Map::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%><link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH7:Head ID="THead7" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td>
     <TraL7:Left ID="TLeft7" runat="server" />  
    </td>
    <td valign="top" class="col">
    <div class="contain_center"  >
    <center>
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" style="padding-left:5px;" width="910" height="615" id="FlashID3" title="map">
    <param name="movie" value="images/worldmap.swf" />
    <param name="quality" value="high" />
    <param name="wmode" value="opaque" />
    <param name="swfversion" value="8.0.35.0" />
    <!-- This param tag prompts users with Flash Player 6.0 r65 and higher to download the latest version of Flash Player. Delete it if you don’t want users to see the prompt. -->
    <param name="expressinstall" value="Scripts/expressInstall.swf" />
    <!-- Next object tag is for non-IE browsers. So hide it from IE using IECC. -->
    <!--[if !IE]>-->
    <object type="application/x-shockwave-flash" data="images/worldmap.swf" width="910" height="615" style="margin-top:0px; margin-left:0px;">
      <!--<![endif]-->
      <param name="quality" value="high" />
      <param name="wmode" value="opaque" />
      <param name="swfversion" value="8.0.35.0" />
      <param name="expressinstall" value="Scripts/expressInstall.swf" />
      <!-- The browser displays the following alternative content for users with Flash Player 6.0 and older. -->
      <div>
        <h4>Content on this page requires a newer version of Adobe Flash Player.</h4>
        <p><a href="http://www.adobe.com/go/getflashplayer"><img alt="Indus Image" src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" width="112" height="33" /></a></p>
      </div>
      <!--[if !IE]>-->
    </object>
    <!--<![endif]-->
  </object>
  </center>
</div>
    </td>
    <td>
     <TraR7:Right ID="TRight7" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF7:Foot ID="TFoot7" runat="server" />
    </td></tr>
    </table>
  
   
    </div>
    
    </form>
</body>
</html>

