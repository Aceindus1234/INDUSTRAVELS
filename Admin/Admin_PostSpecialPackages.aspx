<%@ Page Title="" Language="C#" MasterPageFile="../AdminMainMasterPage.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="Admin_PostSpecialPackages.aspx.cs" Inherits="Admin_PostSpecialPackages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Css/Stylemodif.css" rel="stylesheet" type="text/css" media="all" />
 <style type="text/css">
      .tdleftstyle
      {
          width:40%;
      } 
     .style3
     {
         height: 50px;
     }
 </style>
  <script type="text/javascript">
      function SetHiddenVariable() {
          var d = new Date();
          var year = d.getFullYear();
          var month = d.getMonth() + 1;
          var date = d.getDate();
          var hours = d.getHours();
          var minutes = d.getMinutes();
          var seconds = d.getSeconds();
          var tt = d.format("tt");
          var hid1 = month + "/" + date + "/" + year + " " + hours + ":" + minutes + ":" + seconds + " " + tt;
          document.getElementById("<%= inpHide.ClientID %>").value = hid1;
      }

      function validate() {

          if (document.getElementById("<%=ddlPackageCate.ClientID%>").value == "Select") {
              alert("Package Type Feild can not be blank");
              document.getElementById("<%=ddlPackageCate.ClientID%>").focus();
              return false;
          }
          if (document.getElementById("<%=ddlregion.ClientID%>").value == "") {
              alert("Package Region Feild can not be blank");
              document.getElementById("<%=ddlregion.ClientID%>").focus();
              return false;
          }
          if (document.getElementById("<%=txtPkgName.ClientID%>").value == "") {
              alert("Package Name Feild can not be blank");
              document.getElementById("<%=txtPkgName.ClientID%>").focus();
              return false;
          }

          var fld = document.getElementById("<%=txtPkgCost.ClientID%>");

          if (fld.value == "") {
              alert("You didn't enter a cost.");
              fld.value = "";
              fld.focus();
              return false;
          }
          else if (isNaN(fld.value)) {
              alert("The cost contains illegal characters.");
              fld.value = "";
              fld.focus();
              return false;
          }
          else if (!(fld.value.length == 8)) {
              alert("The cost is the wrong length. \nPlease enter 8 digit");
              fld.value = "";
              fld.focus();
              return false;
          }
          if (document.getElementById("<%=txtPkgDescription.ClientID%>").value == "") {
              alert("Package description feild can not be blank");
              document.getElementById("<%=txtPkgDescription.ClientID%>").focus();
              return false;
          }
          if (document.getElementById("<%=PackagePhoto.ClientID%>").value == "") {
              alert("Please upload photo");
              document.getElementById("<%=PackagePhoto.ClientID%>").focus();
              return false;
          }
          if (document.getElementById("<%=TxtPkgTitle.ClientID%>").value == "") {
              alert("Package Title Feild can not be blank");
              document.getElementById("<%=TxtPkgTitle.ClientID%>").focus();
              return false;
          }
          if (document.getElementById("<%=txtSubtilte.ClientID%>").value == "") {
              alert("Package SubTitle Feild can not be blank");
              document.getElementById("<%=txtSubtilte.ClientID%>").focus();
              return false;
          }
          if (document.getElementById("<%=txtDesc1.ClientID%>").value == "") {
              alert("Package itinerary description feild can not be blank");
              document.getElementById("<%=txtDesc1.ClientID%>").focus();
              return false;
          }
          if (document.getElementById("<%=txtDesc2.ClientID%>").value == "") {
              alert("Package itinerary description feild can not be blank");
              document.getElementById("<%=txtDesc2.ClientID%>").focus();
              return false;
          }
          if (document.getElementById("<%=txtInclusion.ClientID%>").value == "") {
              alert("Package itinerary description feild can not be blank");
              document.getElementById("<%=txtInclusion.ClientID%>").focus();
              return false;
          }
          if (document.getElementById("<%=UploadPhoto.ClientID%>").value == "") {
              alert("Please upload itinerary photos");
              document.getElementById("<%=UploadPhoto.ClientID%>").focus(); 
              return false;
          }

         
      }
      function isNumberKey(evt) {
          var charCode = (evt.which) ? evt.which : event.keyCode
          if (charCode != 46 && charCode > 31
            && (charCode < 48 || charCode > 57))
              return false;

          return true;
      }
     </script>
      <script type="text/javascript" src="tinymce3.5/jscripts/tiny_mce/tiny_mce.js" ></script>
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

        // Example content CSS (should be your site CSS)
        content_css: "css/example.css",

        // Drop lists for link/image/media/template dialogs
//        template_external_list_url: "js/template_list.js",
//        external_link_list_url: "js/link_list.js",
//        external_image_list_url: "js/image_list.js",
//        media_external_list_url: "js/media_list.js",


         template_external_list_url: "tinymce3.5/examples/lists/template_list.js",
         external_link_list_url: "tinymce3.5/examples/lists/link_list.js",
         external_image_list_url: "tinymce3.5/examples/lists/image_list.js",
         media_external_list_url: "tinymce3.5/examples/lists/media_list.js",

        // Replace values for the template plugin
//        template_replace_values: {
//            username: "Some User",
//            staffid: "991234"
//        }
    });
</script>
 <script src="../Scripts/jquery-1.3.2.min.js" type="text/javascript"></script>
<script type = "text/javascript">
        function ShowAvailability() {
            $.ajax({
                type: "POST",
                url: "Admin_PostSpecialPackages.aspx/CheckPackName",
                data: '{PackName: "' + $("#<%=txtPkgName.ClientID%>")[0].value + '" }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    //alert(response.toString());
                    if (response.d != "error") {
                        if (confirm('Package name is already used. Do you want edit this !!!')) {
                            window.location = 'Admin_PostSpecialPackages.aspx?packname=' + $("#<%=txtPkgName.ClientID%>")[0].value;
                        }
                        else {
                            $("#<%=txtPkgName.ClientID%>").val('');

                        }
                    }
                },
                failure: function (response) {
                    alert(response);

                }
            });
        }

        function ShowItenaryAvailability() {
            $.ajax({
                type: "POST",
                url: "Admin_PostSpecialPackages.aspx/CheckItenaryTitle",
                data: "{ 'ItenaryTitle': '" + $("#<%=TxtPkgTitle.ClientID%>")[0].value + "' ," +
                          "'subtitle': '" + $("#<%=txtSubtilte.ClientID%>")[0].value + "'}", 
//                data: '{ItenaryTitle: "' + $("#<%=TxtPkgTitle.ClientID%>")[0].value + '" }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    //alert(response.toString());
                    if (response.d != "error") {
                        alert('Itenary package time duration  already used. Try another time duration or you can change this by editing !!!');
                        $("#<%=txtSubtilte.ClientID%>").val('');
                    }
                },
                failure: function (response) {
                    alert(response);
                }
            });
        }
        
        function emptybox() {

            var txt = $("#<%=TxtPkgTitle.ClientID%>");
            if (txt.val() == "") {
                alert('please enter itinerary package title ');
                 txt.focus();
            }
        }
    </script>

  <%--<script src="../Scripts/jquery-1.3.2.js" type="text/javascript"></script>
        <script src="../Scripts/jquery.MultiFile.js" type="text/javascript"></script>--%>
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <input id="inpHide" type="hidden" runat="server" /> 
   
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="middle">
    <table width="1286" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td style="background-image:url(images/middle_strip.png); background-position:center; background-repeat:repeat-Y;">
        <table width="1286">
             <tr><td>&nbsp;</td></tr> 
        <tr><td width="100%" align="center">        
    <table width="1243px" bgcolor="#F8F8F8">
   
      <tr align="right"> 
          <td width="1243" align="right" style="padding-right:10px;padding-top:10px;">
              <asp:ImageButton ID="imgbtnBack" runat="server" ImageUrl="images/buttons1/Back.png" Width="57px" Height="23px" PostBackUrl="Admin_SpecialPackageDetails.aspx"/>
      </td></tr>
        <asp:Panel ID="PnlPackageDetails" runat="server" DefaultButton="BtnPackageDetails">
    <tr >
    <td valign="middle" colspan="2" bgcolor="#F8F8F8 " runat="server" align="center" style="padding-top:5px;padding-right:10%;">
      <asp:Label ID="Label2" runat="server" Text="Package Details" ForeColor="#006699" Font-Size="20px"></asp:Label>
     </td></tr>
<tr>
<td style="padding-left: 15px;font-size:16px; color:Green; background-color:rgba(221, 221, 221, 1)" colspan="2">
    <span style="padding-left:100px"> <asp:Label ID="ltrlEdit" runat="server" Text="Label"></asp:Label></span>    
 </td>
</tr>
    
     <tr id="Tr7" runat="server">
    <td id="Td5"  colspan="2" bgcolor="#F8F8F8 " runat="server" >
     &nbsp;
     </td>
    </tr>
     <tr>
        <td width="40%" style="padding-right:20px; height:30px;" align="right" >
            Country : </td>
            <td align="left">
             <asp:DropDownList ID="ddlCountry" runat="server" Width="190px" 
                    BorderWidth="1px" BorderColor="Black" Font-Size="14px">
                    <asp:ListItem Text="Select">Select</asp:ListItem>
                     <asp:ListItem Text="India">India</asp:ListItem>
                      <asp:ListItem Text="USA">USA</asp:ListItem>
            </asp:DropDownList><asp:RequiredFieldValidator ID="rfvCountry" runat="server" ErrorMessage="Please select country" ControlToValidate="ddlCountry" 
            ValidationGroup="PackageDetails" InitialValue="Select" ForeColor="Red"></asp:RequiredFieldValidator>
          </td>
    </tr>
     <tr>
        <td width="40%" style="padding-right:20px; height:30px;" align="right" >
            Package Category : </td>
            <td align="left">
             <asp:DropDownList ID="ddlPackageCate" runat="server" Width="190px" 
                    BorderWidth="1px" BorderColor="Black" Font-Size="14px" 
                    onselectedindexchanged="ddlPackageCate_SelectedIndexChanged" AutoPostBack="true" > 
            </asp:DropDownList>
           <asp:RequiredFieldValidator ID="rfvddlPackageCate" runat="server" ErrorMessage="Please enter type for package" ControlToValidate="ddlPackageCate"
            ValidationGroup="PackageDetails" InitialValue="Select" ForeColor="Red"></asp:RequiredFieldValidator>
          </td>
    </tr>
     <tr id="tdRegion" runat="server" visible="false">
        <td width="40%" style="padding-right:20px; height:30px;" align="right" >
            Package region : </td>
            <td align="left">
            <asp:DropDownList ID="ddlregion" runat="server" Width="190px" BorderWidth="1px" BorderColor="Black" Font-Size="14px" >
            </asp:DropDownList>
           <asp:RequiredFieldValidator ID="rfvddlregion" runat="server" ErrorMessage="Please enter region for package" ControlToValidate="ddlregion" ValidationGroup="PackageDetails"
            InitialValue="Select" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>    
    <tr>
   <td style="padding-right:20px; height:30px;" align="right" >
         Package Location Name : </td>
    <td align="left">
           <asp:TextBox ID="txtPkgName" runat="server" Width="190px" BorderWidth="1px" BorderColor="Black" Font-Size="14px" onchange="ShowAvailability();"  ></asp:TextBox> <span style="color:#f8f8f8" id="mesg"></span>
           <asp:RequiredFieldValidator ID="rfvtxtPkgName" runat="server" ErrorMessage="Please enter name for package" ControlToValidate="txtPkgName" ValidationGroup="PackageDetails" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
   </tr>
    
      <tr>
   <td style="padding-right:20px; height:30px;" align="right" >
         Basic Information :
          <br />
         <span style="font-size:9pt"> (If any modification required, please select text and update with HTML on the menu)</span>
          </td>
    <td align="left">
           <asp:TextBox ID="txtPkgDescription" TextMode="MultiLine" runat="server" Width="270px" Height="300px" BorderWidth="1px" BorderColor="Black" Font-Size="14px" ></asp:TextBox>
           <asp:RequiredFieldValidator ID="rfvtxtPkgDescription" runat="server" ErrorMessage="Please enter description for package" ControlToValidate="txtPkgDescription" ValidationGroup="PackageDetails" 
           ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
   </tr>
      <tr>
   <td style="padding-right:20px; height:30px;" align="right" >
        Genaral Information : 
         <br />
       <span style="font-size:9pt"> (If any modification required, please select text and update with HTML on the menu)</span>
        </td>
    <td align="left">
           <asp:TextBox ID="txtPkgDescription1" TextMode="MultiLine" runat="server" Width="270px" Height="300px" BorderWidth="1px" BorderColor="Black" Font-Size="14px" ></asp:TextBox>
           <asp:RequiredFieldValidator ID="rfvtxtPkgDescription1" runat="server" ErrorMessage="Please enter description for package" ControlToValidate="txtPkgDescription1" 
           ValidationGroup="PackageDetails" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
   </tr>
     <tr>
 <td style="padding-right:20px;" align="right" class="tddimentions">
   Photo   :
 </td>
 <td align="left" class="tddimentions">  
     <asp:FileUpload ID="PackagePhoto" runat="server" CssClass="txtdimensions" />
     <asp:RequiredFieldValidator ID="rfvPackagePhoto" runat="server" ErrorMessage="Please browse to upload package photo" ControlToValidate="PackagePhoto" ValidationGroup="PackageDetails" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp;&nbsp;&nbsp;
     <asp:Label ID="lblPackagePhoto" runat="server" Visible="false" ></asp:Label>     
 </td>
 </tr>
 <tr>
     <td style="padding-right:20px;" align="right" class="tddimentions">&nbsp;</td>
 <td align="left" class="tddimentions">
      <asp:Label ID="Label1" Font-Size="10" CssClass="txtdimensions" ForeColor="#067789" Text="Upload Photos using these extension('png', 'gif', 'jpg', 'jpeg') and dimensions in between 600(w) * 400(h) only" runat="server"></asp:Label>
 </td>
 </tr>
   <tr><td colspan="2" align="center" style="padding:10px 0 15px 20px;" class="style3">
    <asp:ImageButton ID="BtnPackageDetails" runat="server" Text="submit&contine" ImageUrl="~/images/buttons1/new_01_sumbit.png" ValidationGroup="PackageDetails"
    ImageAlign="Middle" onclick="BtnPackageDetails_Click" Width="125px" Height="23px" ToolTip="submit&contine"/>&nbsp;&nbsp;
    <asp:ImageButton ID="imgEditContinue" runat="server" Text="Save&Contine" ToolTip="Save&Contine" ImageUrl="~/images/buttons1/SaveContinue.png"
    ImageAlign="Middle"
    onclick="UpdateContinue_Click" Width="125px" Height="23px" Visible="false"/>&nbsp;&nbsp;
     <asp:ImageButton ID="ImageButton4" runat="server" Text="Cancel" ImageUrl="~/images/buttons1/cancel.png" ToolTip="Cancel"
    ImageAlign="Middle"
    onclick="BtnCancel_Click" Width="57px" Height="23px"/></td>
    </tr>
    <tr>
        <td colspan="2" align="center" height="30px">
            <asp:ValidationSummary ID="ValidationSummary2" ValidationGroup="PackageDetails" runat="server" ShowMessageBox="true" ShowSummary="false" />
        </td>
    </tr>
      </asp:Panel>
    </table>   
   
</td></tr>
 </table>
  </td>
        </tr>
       </table>
       </td>
   </tr>
<%--  <tr><td>&nbsp;</td></tr>--%>
  </table>

 <asp:Panel ID="pnlItineraryDetails" runat="server" Visible="false" DefaultButton="BtnSubmit">
 <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="middle">
    <table width="1286" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td style="background-image:url(images/middle_strip.png); background-position:center; background-repeat:repeat-Y;">
        <table width="1286">
             <%--<tr><td>&nbsp;</td></tr> --%>
        <tr><td width="100%" align="center">
         
    <table width="1243px" bgcolor="#F8F8F8">
    <tr runat="server">
    <td  valign="middle" colspan="2" bgcolor="#F8F8F8 " runat="server" align="center" style="padding-top:5px;padding-right:10%;">
      <asp:Label ID="lblTitle" runat="server" Text="Package Itinerary Details" ForeColor="#006699" Font-Size="20px"></asp:Label>
     </td>
    </tr>
     <tr>
    <td   colspan="2" bgcolor="#F8F8F8 " runat="server" >
     &nbsp;
     </td>
    </tr>
    <tr id="radiobtnstr" runat="server" visible="false">
    <td width="40%" style="padding-right:20px; height:30px;" align="right">
    Add New Itinerary On Selected Package? :  
    </td>
    <td align="left">
    <asp:RadioButtonList ID="rdlistnew"  runat="server" RepeatColumns="2" Width="120" RepeatDirection="Horizontal" OnSelectedIndexChanged="rdlistnew_Click" AutoPostBack="true" >
    <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
    <asp:ListItem Text="No" Value="0" Selected="True"></asp:ListItem>
    </asp:RadioButtonList>
    </td>
    </tr>
    <tr id="trtitles" runat="server" >
    <td width="40%" style="padding-right:20px; height:30px;" align="right">Update By Itenarary Titles : </td>
    <td align="left">
         <asp:DropDownList ID="ddlItenarary" runat="server" Width="192" OnSelectedIndexChanged="ddlItenarary_Changed" AutoPostBack="true"></asp:DropDownList>
    </td>
    </tr>
   <tr>
   <td width="40%" style="padding-right:20px; height:30px;" align="right" >
         Package Title : </td>
    <td align="left">
           <asp:TextBox ID="TxtPkgTitle" runat="server" Width="190px" BorderWidth="1px" BorderColor="Black" Font-Size="14px" ></asp:TextBox>
           <asp:RequiredFieldValidator ID="rfvPkgTitle" runat="server" ValidationGroup="ItineraryDetails" ControlToValidate="TxtPkgTitle"
            ErrorMessage="Please enter itinerary Packagetitle" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
   </tr>
    <tr>
   <td style="padding-right:20px; height:30px;" align="right" >
         Time Duration : </td>
    <td align="left">
           <asp:TextBox ID="txtSubtilte" runat="server" Width="190px" BorderWidth="1px" BorderColor="Black" onfocus="emptybox();" Font-Size="14px" onchange="ShowItenaryAvailability();"  ></asp:TextBox>
           <asp:RequiredFieldValidator ID="rfvSubtitle" runat="server" ValidationGroup="ItineraryDetails" ControlToValidate="txtSubtilte" 
           ErrorMessage="Please enter time duration like nights/days" ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
   </tr>
    <tr>
   <td style="padding-right:20px; height:30px;" align="right" >
         Package Cost : </td>
    <td align="left">
           <asp:TextBox ID="txtPkgCost" runat="server" Width="190px" MaxLength="8" BorderWidth="1px" onkeypress="return isNumberKey(event)" BorderColor="Black" Font-Size="14px" ></asp:TextBox>
           <asp:RequiredFieldValidator ID="rfvtxtPkgCost" runat="server" ErrorMessage="Please enter cost for package" ControlToValidate="txtPkgCost" ValidationGroup="ItineraryDetails"
            ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
   </tr>
    <tr>
   <td style="padding-right:20px; height:30px;" align="right" >
         Holiday Type (optional) : </td>
    <td align="left">
        <asp:DropDownList ID="ddlHolidayType" runat="server" Width="192">       
        </asp:DropDownList>
    </td>
   </tr>
    <tr>
   <td style="padding-right:20px; " align="right" >
        Itinerary Overview :
        <br />
        <span style="font-size:9pt"> (If any modification required, please select text and update with HTML on the menu)</span>
         </td>
    <td align="left">
           <asp:TextBox ID="txtDesc1" TextMode="MultiLine" runat="server" Width="270px" Height="300px" BorderWidth="1px" BorderColor="Black" Font-Size="14px" ></asp:TextBox>
           <asp:RequiredFieldValidator ID="rfvDesc1" runat="server" ValidationGroup="ItineraryDetails" ControlToValidate="txtDesc1" ErrorMessage="Please enter itinerary overview"
            ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
   </tr>
      <tr>
   <td style="padding-right:20px; " align="right" >
      Package Itinerary : 
       <br />
        <span style="font-size:9pt"> (If any modification required, please select text and update with HTML on the menu)</span>
        </td>
    <td align="left">
           <asp:TextBox ID="txtDesc2" TextMode="MultiLine" runat="server" Width="270px" Height="300px" BorderWidth="1px" BorderColor="Black" Font-Size="14px" ></asp:TextBox>
           <asp:RequiredFieldValidator ID="rfvItineraryDesc" runat="server" ValidationGroup="ItineraryDetails" ControlToValidate="txtDesc2" ErrorMessage="Enter package itinerary "
            ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
   </tr>
    <tr>
   <td style="padding-right:20px; " align="right" >
      Inclusions & Exclusions :
       <br />
        <span style="font-size:9pt"> (If any modification required, please select text and update with HTML on the menu)</span>
       </td>
    <td align="left">
           <asp:TextBox ID="txtInclusion" TextMode="MultiLine" runat="server" Width="270px" Height="300px" BorderWidth="1px" BorderColor="Black" Font-Size="14px" ></asp:TextBox>
           <asp:RequiredFieldValidator ID="rfvItineraryincl" runat="server" ValidationGroup="ItineraryDetails" ControlToValidate="txtInclusion" ErrorMessage="Enter itinerary inclusions & exclusions" 
           ForeColor="Red"></asp:RequiredFieldValidator>
    </td>
   </tr>
  <tr>
 <td style="padding-right:20px;" align="right" class="tddimentions">
   Photo   : <%--Use Multiple images here--%>
 </td>
 <td align="left" class="tddimentions">  
     <asp:FileUpload ID="UploadPhoto" runat="server" Class="multi" />
     <asp:RequiredFieldValidator ID="rfvItineraryPhoto" runat="server" ControlToValidate="UploadPhoto" ErrorMessage="Please upload Itinerary Photos" ValidationGroup="ItineraryDetails" 
     ForeColor="Red"></asp:RequiredFieldValidator><%--&nbsp;&nbsp;&nbsp;<asp:Button 
         ID="btnupload" runat="server" Text="Upload" Width="100px" Height="23px" 
         Font-Size="14px" onclick="btnupload_Click"/>--%>
         <asp:Label ID="lblItiPhotoName" runat="server" Visible="false"></asp:Label>
 </td>
 </tr>
 <tr>
     <td style="padding-right:20px;" align="right" class="tddimentions">&nbsp;</td>
 <td align="left" class="tddimentions">
      <asp:Label ID="lblextension" Font-Size="10" CssClass="txtdimensions" ForeColor="#067789" Text="Upload Photos using these extension('png', 'gif', 'jpg', 'jpeg') and dimensions in between 600(w) * 400(h) only" runat="server"></asp:Label>
 </td>
 </tr>
    <tr><td colspan="2" align="center" style="padding:10px 0 15px 20px;">
    <asp:ImageButton ID="BtnSubmit" runat="server" Text="Submit" ImageUrl="~/images/buttons1/submit.png" 
    ImageAlign="Middle"
    onclick="BtnSubmit_Click" Width="57px" Height="23px"  ValidationGroup="ItineraryDetails"/>&nbsp;&nbsp; <asp:ImageButton ID="imgEditSave" runat="server" Text="Save" ImageUrl="~/images/buttons1/save.png" 
    ImageAlign="Middle"
    onclick="BtnSave_Click" Width="57px" Height="23px" Visible="false"/>&nbsp;&nbsp; <asp:ImageButton ID="imgbtnCancel" runat="server" Text="Cancel" ImageUrl="~/images/buttons1/cancel.png" 
    ImageAlign="Middle"
    onclick="BtnCancel_Click" Width="57px" Height="23px"/></td>
    </tr>
    <tr>
        <td colspan="2" align="center" height="30px">
            <asp:ValidationSummary ID="ValidationSummary" ValidationGroup="ItineraryDetails" runat="server" ShowMessageBox="true" ShowSummary="false" />
        </td>
    </tr>
   </table>    
</td></tr>
 </table>
  </td>
        </tr>
       </table>
       </td>
       </tr>
      <tr><td>&nbsp;</td></tr>
       </table>
       </asp:Panel>
        
</asp:Content>


