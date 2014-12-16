<%@ Page Title="" Language="C#" MasterPageFile="../AdminMainMasterPage.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="Admin_ToPostPackages.aspx.cs" Inherits="Admin_Admin_ToPostPackages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Css/Stylemodif.css" rel="stylesheet" type="text/css" media="all" />  
    <style>
    .middletd{width:15px;}
    .firsttd{width:48%;}
    </style>      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
   <td style="background-image:url(images/middle_strip.png); background-position:center; background-repeat:repeat-Y;">
   <table width="100%">
   <tr><td colspan="3"></td></tr>
   <tr>
   <td colspan="3" align="center">
   <span style="color:#006699; font-size:20px">Post Package</span>   
   </td>
   </tr>
   <tr><td colspan="3"></td></tr>
   <tr>
   <td align="right" class="firsttd">Country</td>
   <td class="middletd" align="center"><b>:</b></td>
   <td align="left">
   <asp:DropDownList ID="ddlCountry" runat="server" Width="200">
   <asp:ListItem Text="Select Country" Value="Select Country"></asp:ListItem>
   <asp:ListItem Text="India" Value="India"></asp:ListItem>
   <asp:ListItem Text="USA" Value="USA"></asp:ListItem>
   </asp:DropDownList>   
   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlCountry" InitialValue="Select Country">*</asp:RequiredFieldValidator>
   </td>
   </tr>
    <tr>
   <td align="right" class="firsttd">Package Category</td>
   <td class="middletd" align="center"><b>:</b></td>
   <td align="left">
    <asp:DropDownList ID="ddlPackCate" runat="server" Width="200">
   <asp:ListItem Text="Select Package Type" Value="Select Package Type"></asp:ListItem>
   <asp:ListItem Text="Domestic" Value="Domestic"></asp:ListItem>
   <asp:ListItem Text="International" Value="International"></asp:ListItem>
   </asp:DropDownList>   
   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlPackCate" InitialValue="Select Package Type">*</asp:RequiredFieldValidator>
   </td>
   </tr>
    <tr id="packregion" runat="server">
   <td align="right" class="firsttd">Package Region</td>
   <td class="middletd" align="center"><b>:</b></td>
   <td align="left">
    <asp:DropDownList ID="ddlPackregion" runat="server" Width="200">
   <asp:ListItem Text="None" Value="None"></asp:ListItem>
   <asp:ListItem Text="East" Value="East"></asp:ListItem>
   <asp:ListItem Text="West" Value="West"></asp:ListItem>
   <asp:ListItem Text="North" Value="North"></asp:ListItem>
   <asp:ListItem Text="South" Value="South"></asp:ListItem>
   </asp:DropDownList>
   </td>
   </tr>
    <tr>
   <td align="right" class="firsttd">Location name</td>
   <td class="middletd" align="center"><b>:</b></td>
   <td align="left">
   <asp:TextBox ID="txtLocationName" runat="server" Width="200"></asp:TextBox>
   </td>
   </tr>
    <tr>
   <td align="right" class="firsttd"></td>
   <td class="middletd" align="center"><b>:</b></td>
   <td align="left"></td>
   </tr>
    <tr>
   <td align="right" class="firsttd"></td>
   <td class="middletd" align="center"><b>:</b></td>
   <td align="left"></td>
   </tr>
    <tr>
   <td align="right" class="firsttd"></td>
   <td class="middletd" align="center"><b>:</b></td>
   <td align="left"></td>
   </tr>
    <tr>
   <td align="right" class="firsttd"></td>
   <td class="middletd" align="center"><b>:</b></td>
   <td align="left"></td>
   </tr>
    <tr>
   <td align="right" class="firsttd"></td>
   <td class="middletd" align="center"><b>:</b></td>
   <td align="left"></td>
   </tr>
   <tr><td colspan="3"></td></tr>
    <tr>
   <td colspan="3" align="center">
   <asp:ImageButton ID="BtnPackageDetails" runat="server" Text="submit&contine" ImageUrl="~/images/buttons1/new_01_sumbit.png" ValidationGroup="PackageDetails"
    ImageAlign="Middle" Width="125px" Height="23px" ToolTip="submit&contine"/>
   </td>  
   </tr>
   </table>
   </td>
   </tr>
   </table>
</asp:Content>