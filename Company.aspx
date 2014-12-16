<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Company.aspx.cs" Inherits="industravels_new_Company" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH3" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF3" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL3" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR3" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Company-Overview::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%><link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
    <link href="css/Trhome.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH3:Head ID="THead3" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td>
     <TraL3:Left ID="TLeft3" runat="server" />  
    </td>
    <td valign="top" class="col">
    <div class="contain_center" >
    <center>
    <div class="comphead">
    Indus Travels is your Global Travel partner
    </div>
   
    <div class="comppara">
    <p>
Indus travels and tours is a premium travels and tours company, specialized in providing services such as air ticketing (domestic and international), offering exclusive travel packages and also cruise tours. Our primary motivating factor to start this organization was to alleviate all the travel related hassles of our endeared customers</p>
<p>
Having a core management team of travel experts, who have not only got extensive knowledge on travels and tours worldwide, but also have got the required experience and expertise to provide seamless travel solutions. We have got an extensive network of travel agencies, hence any customer who comes our way will be provided with the minutest detail of their travel plan. We along with our agencies and partners are IATA (International Air Transport Association) affiliated. </p>
<p >
Indus travels and tours initiated its operations in the year 2001. Since then, our team has worked hard to provide value based cost-effective travel services. Having a decade of experience in the global travels and tours domain, we understand in-depth as to how the travel industry functions, as so with such finesse, we assure you that your travel plan will be customized to suit your budget. Upon that, you will not only save money but also save time, as our travel consultants will custom design your travel plan in such a way that you can travel quite a few destinations in a less amount of time.</p>
<%--<p>
Two values which we abide by are customer centric focus coupled with process oriented approach. Our team as a whole has always been customer centric, thus wasting no time and fulfilling all our customer wants, thereby bridging the credibility gap between both us and our revered customers. We strongly believe that it is the customers who make or break an organization, and so with such a view, our team persists to make ends meet and see to that at any cost customers demands have been met in a timely manner. Secondly, it is the process orientation designed by our core management team, which has delivered us results that we have never even imagined of. </p>
   --%>
   <h3 class="h3">Why Us?</h3>
   <p>•  Book air tickets swiftly</p>
   <p>•  Detailed itineraries along with well-drafted travel documentation</p>
   <p>•  Bespoke travel plan designed by experienced and skilled travel consultants</p>
   <p>•  Exclusive and budget-friendly holiday packages </p>
   <p>•  Easy and flexible payment options</p>
   <p>•  Well thought-out travel packages for corporate, individuals and families</p>
   <p>•  Remarkable global cruise tours</p>
   <p>•  Round the clock customer service team</p>
   <%--<ul>
   <li>•	Book air tickets swiftly.
</li>
   <li>•	Detailed itineraries along with well-drafted travel documentation. 
</li>
   <li>•	Bespoke travel plan designed by experienced and skilled travel consultants.
</li>
   <li>•	Exclusive and budget-friendly holiday packages. 
</li>
   <li>•	Easy and flexible payment options. 
</li>
<li>•	Well thought-out travel packages for corporate, individuals and families.
</li>
<li>•	Remarkable global cruise tours.   
</li>
<li>•	Round the clock customer service team
</li>
   </ul>--%>   
   <h3 class="h3">
   Mission:
   </h3>   
   <p>To make sure that all our esteemed customers are highly satisfied by our services. With a stringent process driven approach, our team strives for providing value of the highest order to our customers. Customer retention is what we yearn for, and so we take methodical steps in order to ensure customer loyalty. Building a long-term trust is what we strive for consistently. 
</p>
<h3 class="h3">Vision:</h3>
<p>To be a progressive organization, adept in all the global travel policies and framework. We want to build a global brand image, laudable for exceptional performance in travel and tour services. To enchant all our customers time and again, who have believed in us and given us a chance to serve them prolifically.        
</p>   
   </div>
    
    
<%--<h1 style="color:#5d5d5d; font-size:16px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px;">Indus Travels is your Global Travel partner.</h1>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Indus travels and tours is a premium travels and tours company, specialized in providing services such as air ticketing (domestic and international), offering exclusive travel packages and also cruise tours. Our primary motivating factor to start this organization was to alleviate all the travel related hassles of our endeared customers.   
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
We provide our clients with the most competitive airfares from all the major airlines with departures from Europe, USA, Asia, Africa, Australia and South America.  Clients can use our database free of charge, 24 hours a day, 365 days a year to search for your flights. Our experienced staff is just a phone call away to help you with all you travel needs. 
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
We at Indus Travel also specialize in tailor made trips to Asia, Africa, Orient and the rest of the World. Each year we are inspired anew to explore the world's breathtaking diversity in the best way possible. And with our Classic Tours, Women's Adventures, Special Departures, and Family Adventures, we are offering more opportunities to do so than ever before. As a company, we often focus on our staff, worldwide guides, and partners as contributors to our success; all are so very important. 
</p>
<p style="color:#5d5d5d; font-size:12px; font-family:Arial, Helvetica, sans-serif; width:905px;
text-align:justify; margin-left:15px; margin-top:5px; line-height:20px;">
Credit for the highlights of the travel year, however, really rests with our guests - for your spirit of adventure, and the generous communication that helps us chart a course toward enriching travel experiences. Our dedication to continually improving our guests' experience is directly influenced by the comments you share with us through trip surveys, conversations, and written feedback Our expert staff brings you years of vast experience and you can be assured that we treat your vacation as our own. 
</p>--%>
</center>
</div>
    </td>
    <td>
     <TraR3:Right ID="TRight3" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF3:Foot ID="TFoot3" runat="server" />
    </td></tr>
    </table>
  
   
    </div>
    </form>
</body>
</html>
