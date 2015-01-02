<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PackageLocation.aspx.cs" Inherits="industravels_PackageLocation" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH16" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF16" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL16" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR16" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Search-Package-By-Location::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%><link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link href="css/package.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script type="text/javascript" src="js/jquery1-1.8.3(1).js"></script>
 <script type="text/javascript">
     $(document).ready(function () {
         fadeThem();
     });
     function fadeThem() {
         $(".fade").fadeOut(3000, function () {
             $(".fade").fadeIn(1000, fadeThem());
             // Apply the callback to the one with the shortest combined animation time
         });
     }
 </script>
 <style type="text/css">
 #DataList1 td{vertical-align:top;}
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
   <td align="left" class="tdstyle"><span style="color:#081E7B">Package Details of</span> <asp:Label ForeColor="Red" ID="lblPlace" runat="server"></asp:Label> </td>
   </tr>
   <tr><td><div class="dotteddiv"></div></td></tr>
   <tr>
   <td id="contentId" runat="server" style=" font-size:13px; text-align:justify; "> 

   <%--<div id="main-travelguide">
                                <div class='box_img_left'><img height='91px' width='158px' '="" src='http://riya.travel/CMS/MyFiles/USA_15.png'></div><p><p>The United States of America are divided into many states, each having a distinct feature from the others. A conglomerate of 49 states and over 200 cities, United States of America is the third largest country in the world and supposedly the most advanced and powerful country in the World in terms of economy, military and political power. Housing some of the most notorious cities in the World viz. New York City, Los Angeles, Chicago, Washington DC, San Francisco, Las Vegas and the list goes on. ‘Hollywood’, world’s number one movie making industry, saw its origin in the United States of America. All said and done, United States of America are here to make you ecstatic and engage you!</p>
<p><b>General Information</b></p>
<p><b>Capital :</b> Washington DC</p>
<p><b>Total Area :</b>&nbsp; Approx 9,826,675 sq kilometers (3,794,105 sq miles)</p>
<p><b>Time Zone :</b> Various. (GMT – 5 to -10); (GMT – 4 to -10) in summers.</p>
<p><b>ISD Code :</b> +1.</p>
<p><b>Official Language </b>: English</p>
<p><b>Currency :</b> United States Dollar (USD)</p>
<p><b>Religion :</b> Christianity is predominant. Major chunk is of Protestants and lesser chunk is of Roman Catholics.</p>
<p><b>Climate :</b>&nbsp;The United States, with its large size and geographic variety, includes most climate types. To the east, the climate ranges from humid continental in the north to humid subtropical in the south. The southern tip of Florida is tropical, as is Hawaii. The Great Plains west of the 100th meridian are semi-arid. The climate is arid in the Great Basin, desert in the Southwest, Mediterranean in coastal California, and oceanic in coastal Oregon and Washington and southern Alaska. Most of Alaska is polar and ice capped. Extreme weather is not uncommon—the states bordering the Gulf of Mexico are prone to hurricanes, and most of the world's tornadoes occur within the country, mainly in the Midwest's Tornado Alley.</p>
<p><b>Best Time to Travel :</b>East Coast can be best traveled to and enjoyed between June to September. West Coast can be traveled during the months of December to February.&nbsp;</p></p>
                                <!-- .tab_container -->
                            </div>--%>
<div class="topdiv"><p style="padding-top:5px">General Information</p></div>
<div class="indiv" >
      <asp:DataList ID="dtlist" runat="server">
      <ItemTemplate >
     <div class='box_img_left'><img alt="Package" height="91" class="fade" width="158" src='<%#Eval("Photoname", "Photos/{0}") %>' id="imng1" runat="server" /></div>
     <%#Eval("Description1") %>
      <%#Eval("Description2") %>
      </ItemTemplate>
      </asp:DataList>   
      </div>        
   </td>  
    </tr>
   <tr><td>
   <div class="dotteddiv"></div>
   </td></tr>    
   <tr>
   <td align="left" >
   <div class="topdiv"><p style="padding-top:5px">Itinerary Details </p></div>
    </td>
   </tr>
   <tr>
   <td>
    <%--<div style="border:1px dotted Gray; width:100%"></div>--%>
    <%--<div style="width:100%; padding-left:10px;">--%>
    <div class="indiv" >
      <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal" >
      <ItemTemplate > 
       <div class='box_img_left' style="vertical-align:top;" >   
   <a href='HolidayDetails.aspx?packid=<%#Eval("itenarary_id") %>'><%--<a href="#"> --%>
  <img alt="Itenary" height="91" width="158" src='<%#Eval("Itinerary_Photoname", "Photos/{0}") %>' id="imng1" runat="server" /></a></div><br />
  <div style="padding-left:5px;">
   <span style="color:Red; font-weight:bold;"><%#Eval("Package_Title")%></span><br />
      <%#Eval("Package_SubTitle")%>
       </div>
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


