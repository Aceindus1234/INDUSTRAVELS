<%@ Page Title="" Language="C#" MasterPageFile="../AdminMainMasterPage.master" AutoEventWireup="true" CodeFile="Admin_PostSpecial_Offers.aspx.cs" Inherits="industravels_Admin_Admin_PostSpecial_Offers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<link rel="stylesheet" href="../css/jquery-ui.css" />
 <link href="../Css/Stylemodif.css" rel="stylesheet" type="text/css" media="all" />
 <script src="../js/commanfunction.js" type="text/jscript"></script>
   <script src="../js/jquery-1.8.2.js" type="text/javascript"></script>
<script src="../js/jquery-ui.js" type="text/javascript"></script>
 <style type="text/css">
 .tdwidth { width:35%; }
 .ddlbox{width:303px; height:26px;}
 .tbox{width:300px; padding-top:3px; font-size:12px;}
 .mtbox{Width:270px; Height:300px; border:1px solid Black; Font-Size:14px;}
 .datepic{}
 .ui-datepicker-next
 {
     background-image:url('../images/right.png') ;
      background-repeat: no-repeat;
 }
 .ui-datepicker-prev
 {
      background-image:url('../images/left.png') ;
       background-repeat: no-repeat;
 }
 
 </style>
  <script type="text/javascript" src="tinymce3.5/jscripts/tiny_mce/tiny_mce.js" ></script>
  <%-- <script src="../Scripts/jquery-1.3.2.min.js" type="text/javascript"></script>--%>
 
  <script type="text/javascript">

    tinyMCE.init({
        // General options
        mode: "textareas",
        theme: "advanced",
        plugins: "autolink,lists,spellchecker,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",

        // Theme options
        theme_advanced_buttons1: "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect",
        theme_advanced_buttons2: "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
        theme_advanced_buttons3: "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
        theme_advanced_buttons4: "insertlayer,moveforward,movebackward,absolute,|,styleprops,spellchecker,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,blockquote,pagebreak,|,insertfile,insertimage",
        theme_advanced_toolbar_location: "top",
        theme_advanced_toolbar_align: "left",
        theme_advanced_statusbar_location: "bottom",
        theme_advanced_resizing: true,
        //relative_urls: true,
        relative_urls : false,
         remove_script_host : false,
          document_base_url : "http://www.industravels.net/",

        // Skin options
        skin: "o2k7",
        skin_variant: "silver",       
        content_css: "css/example.css",

         template_external_list_url: "tinymce3.5/examples/lists/template_list.js",
         external_link_list_url: "tinymce3.5/examples/lists/link_list.js",
         external_image_list_url: "tinymce3.5/examples/lists/image_list.js",
         media_external_list_url: "tinymce3.5/examples/lists/media_list.js",
       
    });
    </script>
    
    <script type="text/javascript">
        $(document).ready(function () {
            numbersonly(document.getElementById("<%=txtDays.ClientID%>"));
            numbersonly(document.getElementById("<%=txtNights.ClientID%>"));
         
        });
      $(function () {
          var date = new Date();
          var currentMonth = date.getMonth();
          var currentDate = date.getDate();
          var currentYear = date.getFullYear();
          $(".datepic").datepicker({
              minDate: new Date(currentYear, currentMonth, currentDate)
             
          });
      });

//        function txtClear() {
//            document.getElementById("<%=txtPackName.ClientID%>").value = "";
        //            document.getElementById("<%=txtValid.ClientID%>").value = "";
//            document.getElementById("<%=txtDays.ClientID%>").value = "";
//            document.getElementById("<%=txtNights.ClientID%>").value = "";
//            document.getElementById("<%=txtStartLoc.ClientID%>").value = "";
//            document.getElementById("<%=txtEndLoc.ClientID%>").value = "";
//            document.getElementById("<%=txtItInform.ClientID%>").value = "";
//            document.getElementById("<%=txtTerms.ClientID%>").value = "";
//            document.getElementById("<%=ddlPackType.ClientID%>").selectedIndex = "0";
//           
//            return false;
//        }

</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table border="0" width="1243" align="center"> 
 <tr>
 <td align="right" style="padding-right:10px; padding-top:10px;"> 
  <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../images/buttons1/Back.png" Width="57px" Height="23px" PostBackUrl="Admin_SpecialOffers.aspx"/></td>
 </tr>
 <tr><td align="center"><font color="#1b6daf" size="4px" >Post Special Offers</font>
 </td></tr>
 <tr><td>&nbsp;</td></tr>
    <tr><td align="center" width="100%">
    <table width="100%">
    <tr>
    <td align="right" class="tdwidth">
    Package Name    
    </td>
    <td width="10" align="center"><b>:</b></td>
    <td align="left">
    <asp:TextBox ID="txtPackName" runat="server" CssClass="tbox" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="required1" runat="server" ValidationGroup="offer" ControlToValidate="txtPackName" ForeColor="Red">*</asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td align="right">
    Package Type
    </td>
    <td width="10" align="center"><b>:</b></td>
    <td align="left">
    <asp:DropDownList ID="ddlPackType" runat="server" CssClass="ddlbox"></asp:DropDownList>    
    </td>
    </tr>
     <tr>
    <td align="right">
    Offer Valid Untill 
    </td>
    <td width="10" align="center"><b>:</b></td>
    <td align="left">
    <asp:TextBox ID="txtValid" runat="server" CssClass="tbox datepic"></asp:TextBox>    
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="offer" ControlToValidate="txtValid" ForeColor="Red">*</asp:RequiredFieldValidator>
    </td>
    </tr>
     <tr>
    <td align="right">Duration</td>
    <td width="10" align="center"><b>:</b></td>
    <td align="left">
    <asp:TextBox ID="txtDays" MaxLength="2" runat="server" width="100"></asp:TextBox>Days&emsp;<asp:TextBox ID="txtNights" MaxLength="2" runat="server" width="100"></asp:TextBox>Nights
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="offer" ControlToValidate="txtDays" ForeColor="Red">*</asp:RequiredFieldValidator>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="offer" ControlToValidate="txtNights" ForeColor="Red">*</asp:RequiredFieldValidator>
    </td>
    </tr>
     <tr>
    <td align="right">Starting From</td>
    <td width="10" align="center"><b>:</b></td>
    <td align="left">
     <asp:TextBox ID="txtStartLoc" runat="server" CssClass="tbox"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="offer" ControlToValidate="txtStartLoc" ForeColor="Red">*</asp:RequiredFieldValidator>
    </td>
    </tr>
     <tr>
    <td align="right">Finishing At</td>
    <td width="10" align="center"><b>:</b></td>
    <td align="left">
     <asp:TextBox ID="txtEndLoc" runat="server" CssClass="tbox"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="offer" ControlToValidate="txtEndLoc" ForeColor="Red">*</asp:RequiredFieldValidator>
    </td>
    </tr>
     <tr>
   <td  align="right" > Itinerary Information 
        <br />
        <span style="font-size:9pt"> (If any modification required, please select text and update with HTML on the menu)</span>
         </td>
         <td width="10" align="center"><b>:</b></td>
    <td align="left">
           <asp:TextBox ID="txtItInform" TextMode="MultiLine" runat="server" CssClass="mtbox" ></asp:TextBox>
           <asp:RequiredFieldValidator ID="rfvDesc1" runat="server" ValidationGroup="offer" ControlToValidate="txtItInform"  ForeColor="Red">*</asp:RequiredFieldValidator>
    </td>
   </tr>
     <tr>
   <td  align="right" > Terms And Conditions 
        <br />
        <span style="font-size:9pt"> (If any modification required, please select text and update with HTML on the menu)</span>
         </td>
         <td width="10" align="center"><b>:</b></td>
    <td align="left">
           <asp:TextBox ID="txtTerms" TextMode="MultiLine" runat="server" CssClass="mtbox" ></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="offer" ControlToValidate="txtTerms"  ForeColor="Red">*</asp:RequiredFieldValidator>
    </td>
   </tr>    
     <tr id="uploadtr" runat="server">
    <td align="right">Upload Special Offer Image</td>
    <td width="10" align="center"><b>:</b></td>
    <td align="left">
    <asp:FileUpload ID="upload1" runat="server" Width="300" />
     <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="offer" ControlToValidate="upload1"  ForeColor="Red">*</asp:RequiredFieldValidator>--%>
     <span style="font-size:8pt;"> image size should be 850(w) and 250(h)</span>
    </td>
    </tr>
    <tr>
    <td colspan="3">&nbsp;</td>   
    </tr>
     <tr>
    <td align="center" colspan="3">
      <asp:ImageButton ID="BtnSubmit" runat="server" Text="Submit" ImageUrl="../images/buttons1/submit.png" ImageAlign="Middle" onclick="BtnSubmit_Click" Width="57px" Height="23px" 
       ValidationGroup="offer"/>&nbsp;&nbsp;
        <asp:ImageButton ID="imgEditSave" runat="server" Text="Save" ImageUrl="../images/buttons1/save.png" ImageAlign="Middle" onclick="BtnSave_Click" Width="57px" Height="23px"
         ValidationGroup="offer" Visible="false"/>
        &nbsp;&nbsp; <asp:ImageButton ID="imgbtnReset" runat="server" Text="Cancel" ImageUrl="../images/buttons1/reset.png" ImageAlign="Middle" 
         OnClick="imgbtnReset_Click" Width="57px" Height="23px"/><%-- OnClientClick="return txtClear();" --%>
    </td>
    </tr>
    </table>
 </td></tr>

 </table>
</asp:Content>

