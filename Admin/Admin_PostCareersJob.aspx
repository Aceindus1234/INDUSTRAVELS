<%@ Page Title="" Language="C#" MasterPageFile="../AdminMainMasterPage.master" AutoEventWireup="true" CodeFile="Admin_PostCareersJob.aspx.cs" Inherits="industravels_Admin_Admin_PostCareersJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
 .tdwidth { width:35%; }
 .ddlbox{width:303px; height:26px;}
 .tbox{width:300px; padding-top:3px; font-size:12px;}
 .mtbox{Width:300px; Height:300px; border:1px solid Black; Font-Size:14px;}
 
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table border="0" width="1243" align="center" style="background-color:#f8f8f8"> 
 <tr>

 <td align="right" style="padding-right:10px; padding-top:10px;"> 
  <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../images/buttons1/Back.png" Width="57px" Height="23px" PostBackUrl="Admin_CareerJobs.aspx"/></td>
 </tr>
 <tr><td align="center"><font color="#1b6daf" size="4px" >Post Careers Job</font>
 </td></tr>
 <tr><td>&nbsp;</td></tr>
 <tr><td align="center" width="100%">

    <table width="100%" >
    <tr>
    <td align="right" class="tdwidth">
    Job Title
    </td>
    <td width="10" align="center"><b>:</b></td>
    <td align="left">
    <asp:TextBox ID="txtjtitle" runat="server" CssClass="tbox" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="required1" runat="server" ValidationGroup="offer" ControlToValidate="txtjtitle" ForeColor="Red">*</asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td align="right">
    Location
    </td>
    <td width="10" align="center"><b>:</b></td>
    <td align="left">
   <asp:TextBox ID="txtjLoc" runat="server" CssClass="tbox" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="offer" ControlToValidate="txtjLoc" ForeColor="Red">*</asp:RequiredFieldValidator>
    </td>
    </tr>
     <tr>
    <td align="right">
   Experinece
    </td>
    <td width="10" align="center"><b>:</b></td>
    <td align="left">
    <%--<asp:TextBox ID="txtExp1" runat="server" CssClass="tbox datepic"></asp:TextBox>--%>   
    <asp:DropDownList ID="ddlExp1" runat="server" Width="100"></asp:DropDownList> 
     <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="offer" ControlToValidate="txtExp1" ForeColor="Red">*</asp:RequiredFieldValidator>--%>
     &nbsp;-&nbsp;
      <asp:DropDownList ID="ddlExp2" runat="server" Width="100"></asp:DropDownList> Years
     <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="offer" ControlToValidate="txtExp2" ForeColor="Red">*</asp:RequiredFieldValidator>--%>
    </td>
    </tr>
     <tr>
   <td  align="right" > Job Description
       
         </td>
         <td width="10" align="center"><b>:</b></td>
    <td align="left">
           <asp:TextBox ID="txtdescr" TextMode="MultiLine" runat="server" CssClass="mtbox" Width="600" ></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="offer" ControlToValidate="txtdescr"  ForeColor="Red">*</asp:RequiredFieldValidator>
    </td>
   </tr>    
    
    <tr>
    <td colspan="3">&nbsp;</td>   
    </tr>
     <tr>
    <td align="center" colspan="3">
      <asp:ImageButton ID="BtnSubmit" runat="server" Text="Submit" ImageUrl="../images/buttons1/submit.png" ImageAlign="Middle" OnClick="BtnSubmit_Click" Width="57px" Height="23px" 
       ValidationGroup="offer"/>&nbsp;&nbsp;
        <asp:ImageButton ID="imgEditSave" runat="server" Text="Save" ImageUrl="../images/buttons1/save.png" ImageAlign="Middle" OnClick="BtnSave_Click" Width="57px" Height="23px"
         ValidationGroup="offer" Visible="false"/>
        &nbsp;&nbsp; <asp:ImageButton ID="imgbtnReset" runat="server" Text="Cancel" ImageUrl="../images/buttons1/reset.png" ImageAlign="Middle" 
         OnClick="imgbtnReset_Click" Width="57px" Height="23px"/><%-- OnClientClick="return txtClear();" --%>
    </td>
    </tr>
    </table>
 </td></tr>
 </table>
</asp:Content>

