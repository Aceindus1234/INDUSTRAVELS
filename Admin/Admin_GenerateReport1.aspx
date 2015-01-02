<%@ Page Title="" Language="C#" MasterPageFile="~/industravels/AdminMainMasterPage.master" AutoEventWireup="true" CodeFile="Admin_GenerateReport1.aspx.cs" Inherits="industravels_Admin_Admin_GenerateReport1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script language="javascript" type="text/javascript">
    function printDiv(divID) {
        //Get the HTML of div
        var divElements = document.getElementById("div1").innerHTML;       
        //Get the HTML of whole page
        var oldPage = document.body.innerHTML;
        //Reset the page's HTML with div's HTML only
        document.body.innerHTML =
              "<html><head><title></title></head><body>" +
              divElements + "</body>";
        //Print Page
        window.print();
        //Restore orignal HTML       
        document.body.innerHTML = oldPage;
    }
    </script>
<style type="text/css">
.sp{font-size:13px; font-weight:bold}
.divs{border:1px solid black; width:625px; }
.indiv{border:1px solid black}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
<tr><td>&nbsp;</td></tr>
<tr>
<td align="center"><h3>Generate Invoice</h3> </td>
</tr>
<tr>
<td align="center" id="prtab" runat="server"  >
<div id="div1">
<div class="divs" >
<table width="620" >
<tr>
<td colspan="2">
<img src="../images/header.jpg" alt="travels image" width="620" height="80" />
</td>
</tr>
<tr>
<td valign="top" align="left" width="350">
<span class="sp">INDUS TRAVELS & TOURS</span><br />
# 1323 Behind Saradhi Studio's, <br />
Yella Reddy guda, Ameerpet,
Hyderabad-500073, India, <br />
Voice # +91-406-613-6226 Ext.224<br />
Fax # +91-406-613-6446
</td>
<td valign="bottom" align="right">
<span class="sp">Invoice</span>
<table border="1" style="text-align:center">
<tr>
<td><b>Date</b></td>
<td><b>Invoice #</b></td>
</tr>
<tr>
<td>08-08-2014
<%--<%#Eval("Date")%>--%>
</td>
<td>
ITAT/14-15/1114
</td>
</tr>
</table>
</td>
</tr>
<tr> <td colspan="2"></td></tr>
<tr>
<td valign="bottom" align="left">
<div class="indiv">
<b>Bill To</b>
<hr />
<%--<%#Eval("Name")%>--%>
Mr. Surya<br />Hyderabad
<%--<%#Eval("Area")%>--%>
</div>
<%--<table border="1" width="250">
<tr>
<td><b>Bill To</b></td>
</tr>
<tr>
<td>
Mr. Surya<br />Hyderabad
</td>
</tr>
</table>--%>
</td>
<td valign="top" align="center">
<div class="indiv">
Airline Name<br /><%--<%#Eval("airlinename")%>--%><%--<%#Eval("con_num")%>--%>
<b>JET AIRWAYS / 9W 646</b><br />
Confirmation Number<br />
<b>ZMCSSB</b>
</div>
<%--<table  style="text-align:center">
<tr>
<td><b>Airline Name</b></td><td width="10">:</td>
<td>JET AIRWAYS / 9W 646</td>
</tr>
<tr>
<td><b>Confirmation Number</b></td><td >:</td>
<td>ZMCSSB</td>
</tr>
</table>--%>
</td>
</tr>
<tr>
<td colspan="2"></td>
</tr>
<tr>
<td colspan="2">
<table border="1" width="100%">
<tr>
<td ></td>
<td align="center"><b>Agent Phone</b></td>
<td align="center" colspan="2"><b>Departure Date</b></td>
<td></td>
</tr>
<tr>
<td ></td>
<td align="center">040-66736226</td>
<td colspan="2" align="center"><%--<%#Eval("Dept_date")%>--%> 28/08/2014</td>
<td></td>
</tr>
<tr>
<td ><b>Passenger Name</b></td>
<td ><b>Issue Date</b></td>
<td ><b>No. of People</b></td>
<td ><b>Fare Per Person</b></td>
<td><b>Amount</b></td>
</tr>
<tr  style="height:200px; vertical-align:top;">
<td >
<%--<%#Eval("name")%>--%>
Mr. Surya<br />
(Hyderabad-IAD-Hyderabad)
</td>
<td ><%--<%#Eval("date")%>--%>
08-08-2014
</td>
<td align="center">1 <%--<%#Eval("no_pass")%>--%></td>
<td align="right"><%--<%#Eval("fare")%>--%>1,06,572.00</td>
<td align="right">
<%--<%#Eval("no_pass")%> * <%#Eval("fare")%>--%>
1,06,572.00</td>
</tr>
<tr>
<td colspan="2">Thank you for your business</td>
<td colspan="2">Total</td>
<td align="right">INR <%--<%#Eval("no_pass")%> * <%#Eval("fare")%>--%>
1,06,572.00</td>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="2" align="right">
Accounts Administrator
</td>
</tr>
<tr>
<td colspan="2" align="right" valign="top" height="40">
K.Vijayalakshmi
</td>
</tr>
<tr><td colspan="2"><hr/></td></tr>
<tr>
<td colspan="2" align="left">
<span class="sp">Terms & conditions</span><br />
*&nbsp; You have purchased non refundable ticket. &emsp;* Please inspect your tickets immidiatly.<br />
*&nbsp; Fee and penalityies apply for any changes.&emsp;* Please arrive at airport 3 hours.<br />
*&nbsp;Please have passport and necessary visas before flights departure time.<br />
*&nbsp;Reconfirm all flishts 72 hours before departure.<br />
*&nbsp;We strongly recommend trip insurence.
</td>
</tr>
<tr><td colspan="2"><hr/></td></tr>
<tr>
<td colspan="2" align="center">
<span class="sp">Travels, Tours, cruises, Custom Designed Vacations</span>
</td>
</tr>
<tr>
<td align="left">
1033 Sterling Road, STE.204, Herndon-VA-20170 USA.<br />
Voice :703-571-3278 <br /> Fax: 703-842-8746 
</td>
<td align="left">
Plot #1323, Behind Saradhi Studios, Ameerpet,<br />
Yellareddyguda, Hyderabad-Telangana-500073.<br />
Voice : + 91-406-673-6225<br />
Fax : +91-406-673-6446
</td>
</tr>
<tr><td colspan="2"><hr/></td></tr>
<tr>
<td colspan="2" align="center">
president@industravels.com  &emsp;  http://www.industravels.com
</td>
</tr>
</table>
</div>
</div>
</td>
</tr>
<tr>
<td align="center"> <input type="button" value="Print" id="prbtn"   onclick="javascript:printDiv('printablediv')" />
&emsp;<%--<asp:Button ID="btnExport" runat="server" Text="Pdf Print" OnClick="btnExport_Click" />--%>
</td>
</tr>
</table>
</asp:Content>

