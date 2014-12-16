<%@ Page Language="C#" AutoEventWireup="true" CodeFile="weight_convertion.aspx.cs" Inherits="industravels_weight_convertion" %>
<%@ Register Src="~/industravels/usercontrols/Indus_header.ascx" TagPrefix="TraH24" TagName="Head"  %>
<%@ Register Src="~/industravels/usercontrols/Indus_footer.ascx" TagPrefix="TraF24" TagName="Foot"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_left.ascx" TagPrefix="TraL24" TagName="Left"  %>
<%@ Register Src="~/industravels/usercontrols/Travel_Right.ascx" TagPrefix="TraR24" TagName="Right"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::Indus Travels::Visa-Types::</title>
<%--<link href="css/bootstrap.min.css" rel="stylesheet">
--%><link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/hstyle.css" rel="stylesheet" />
<link href="css/style12.css" type="text/css" rel="stylesheet" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery1-1.4.4.min(1).js"></script>
 <script type="text/javascript" src="js/jquery1-1.8.3(1).js"></script>

<style>
select
{
	border:1px solid gray;
	
}
input
{
	border:1px solid gray;
	height:20px;	
}

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapperclass">
    <table width="100%" >
    <tr>
    <td>
     <TraH24:Head ID="THead24" runat="server" />
    </td>
    </tr>
    <tr>
    <td>
    <div class="contain" style="margin-top:2px;">
    <table width="100%">
    <tr>
    <td>
     <TraL24:Left ID="TLeft24" runat="server" />  
    </td>
    <td valign="top" class="col">
   <div class="contain_center" >    
<h1 style="color:#5d5d5d; font-size:16px; font-family:Arial, Helvetica, sans-serif; width:905px; margin-bottom:8px;
text-align:justify; margin-left:15px; margin-top:5px;" >Weight Converter :</h1>

<h5 style="color:#5d5d5d; font-size:14px; font-family:Arial, Helvetica, sans-serif; width:905px; margin-bottom:8px;
text-align:justify; margin-left:15px; margin-top:5px;">About this Converter</h5>
            <p class="para">This online conversion calculator will convert among different units of weight or mass. For more specific calculations
             use avoirdupois unit conversions and  
             troy unit conversions.</p>
            <h5 style="color:#5d5d5d; font-size:14px; font-family:Arial, Helvetica, sans-serif; width:905px; margin-bottom:8px;
text-align:justify; margin-left:15px; margin-top:5px;">How to Convert Units of Acceleration</h5>
            <p class="para">Conversions are performed by using a conversion factor.&nbsp;By knowing the conversion factor, converting between
             units can become a simple multiplication problem:</p>
            <p class="para"><strong>S * C = E</strong></p>
            <p class="para">Where <strong>S</strong> is our starting value, <strong>C</strong> is our conversion factor, and <strong>E</strong>
             is our end converted result. </p>
            <p class="para">To simply convert from any unit into grams<sup></sup>, for example, from 5 kilograms, just <em>
            <strong>multiply by</strong></em> the conversion value in the right column in the table below.</p>
            <blockquote>
              <p class="para">5 kg * 1000 [ (g<sup></sup>) / (kg) ]&nbsp;= 5000 g<sup></sup></p>
            </blockquote>
            <p class="para">To convert from g<sup></sup> into units in the left column <em><strong>divide by</strong></em>
             the value in the right column or, multiply by the reciprocal, 1/x.</p>
            <blockquote>
              <p class="para"> 5000 g<sup></sup> / 1000 &nbsp;[ (g<sup></sup>) / (kg) ] = 5 kg</p>
            </blockquote>
            <p class="para">To convert among any units in the left column, say from A to B, you can multiply by the factor for A to 
            convert A into grams then divide by the factor for B to convert out of g<sup></sup>.&nbsp; Or, you can find the single factor 
            you need by dividing the A factor by the B factor.</p>
            <p class="para">For example, to convert from kilograms to pounds you would multiply by 1000&nbsp;then divide by 453.59237.
            &nbsp; Or, multiply by 1000/453.59237 = 2.204622. So, to convert directly from kg to lb, you multiply by 2.204622. </p>
           <br />
           <br />

<div style="width:800px;margin:0px auto;">
<div style="width:99.5%;border:1px solid #2D6AB4;border-top:none;border-bottom:none;text-align:center; height:24px;font-size:16px;
    padding:5px 0px 0px 0px;border-top-right-radius:5px; border-top-left-radius:5px;background-color:#2D6AB4;
    color:#FFFFFF; font-weight:bold;">
    <a href="#" style="color:#FFFFFF; text-decoration:none;" > Multiple Conversion Widgets</a></div>
    <script type="text/javascript" src="http://ww.theunitconverter.com/converter.php?l=en&t=1&c=1&a=FFFFFF&d=000000&b=2D6AB4&s=weight"></script>
    </div>
</div>
    </td>
    <td>
     <TraR24:Right ID="TRight24" runat="server" />
    </td>
    </tr>
    </table>
    </div>
    </td>
    </tr>
    <tr><td>
     <TraF24:Foot ID="TFoot24" runat="server" />
    </td></tr>
    </table>
    </div>    
    </form>
</body>
</html>

