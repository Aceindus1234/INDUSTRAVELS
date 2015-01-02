<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TermsConditions.aspx.cs" Inherits="industravels_TermsConditions" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH26" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF26" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL26" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR26" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Terms-Conditions::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%><link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script type="text/javascript" src="js/jquery1-1.8.3(1).js"></script>
 <style type="text/css">
 .hrl{border:1px solid #C1C4C5;}
 </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH26:Head ID="THead26" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td>
     <TraL26:Left ID="TLeft26" runat="server" />  
    </td>
    <td valign="top" class="col">
   <div class="contain_center" >
   <h4 style="padding:5px; color:Gray"> INDUS TRAVELS TERMS AND CONDITIONS: </h4>
                <hr class="hrl" /><br />
<span style="color:#09F; padding:5px 0px 0px 8px;"> Welcome to Indus travels and tours! </span>
<br /><p class="para">
We encourage you to read the terms and conditions carefully as it can only strengthen our relationship. Ultimately we want to maintain cordial relations with you. In this write-up Indus travels and tours is referred to as “we”, “our”, “ours” and “us”. The client that is you will be referred to as “you”, “yours”, “their” and “them”. 
</p><br />

<span style="color:#09F; padding-left:8px"> Website and Links</span><p class="para">
Indus travels and tours website will be updated on a continual basis to update all the travel related information to our esteemed customers. However, if by chance there is a technical flaw or misinformation provided upon which you have acted, then we will not be responsible.
</p><br />
<p class="para">
We provide links to third parties and vice versa, however we will see to that your information is not shared by any of the other parties excluding us. If you are interested to share your information to third parties and are also interested to get the links that may help you in your quest for more elaborate travel services, then with your consent, we can do the needful. You cannot use Indus travels and tours link for any of your purpose, until you get a consent from us. As Indus travels and tours have third-party links, it is upon you to act upon those links as any issue arising (from third-party links) thereof will not be our concern.
</p><br />

<span style="color:#09F; padding-left:8px"> Disclaimer </span><p class="para">
Our website’s aim is to provide travel related information. We may change the content and other important travels and tours related information as need be. In no case will we be held responsible for any damage arising to you from this website. We will also not be responsible if our website is temporary unavailable due to some technical reasons. However it is our utmost duty to keep the website running without any technical flaws whatsoever. 
</p><br />
<span style="color:#09F; padding-left:8px"> Indemnity </span><p class="para">
You agree to indemnify, and hold risk-free Indus travels and tours, its employees, agents, agencies, managers, directors, third-party service providers, suppliers to the service from and against all losses, damages, costs, expenses, any type of fees, resulting from any infringement of this agreement by you or any other person accessing this website.   
</p><br />

<span style="color:#09F; padding-left:8px"> Refund Policy </span><p class="para">
Based on the ticket you are holding (bus, rail, air), and then based upon the nomenclature, if certain criteria’s are met, then we do refund your money.
</p>
<br />
<span style="color:#09F; padding-left:8px"> Payment terms </span><p class="para">
Indus travels and tours accept payments through cash and cheque only. However in due course of time we will also accept credit cards.
</p><br />
<span style="color:#09F; padding-left:8px"> Modification </span><p class="para">
We might modify the terms and conditions agreement policy, if need be. The only reason to modify the terms and conditions agreement is to build a strong and harmonious relationship, ultimately resulting in a win-win situation.<br /><br />
Any disputes arising will be dealt with in Hyderabad jurisdiction.  
   </p>        
    </div>
    </td>
    <td>
     <TraR26:Right ID="TRight26" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF26:Foot ID="TFoot26" runat="server" />
    </td></tr>
    </table>
  
   
    </div>
    
    </form>
</body>
</html>


