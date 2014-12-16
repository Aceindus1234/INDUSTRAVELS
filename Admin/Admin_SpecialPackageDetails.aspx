<%@ Page Title="" Language="C#" MasterPageFile="../AdminMainMasterPage.master" AutoEventWireup="true" CodeFile="Admin_SpecialPackageDetails.aspx.cs" Inherits="Admin_Admin_PackageDetails"  ValidateRequest="false"%>
<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Css/Stylemodif.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript">
        function ConfirmationBox() {
            var result = confirm('Are you sure you want to delete Special Packages details ?');
            if (result) {

                return true;
            }
            else {
                return false;
            }
        }
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<ajx:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" >
                </ajx:ToolkitScriptManager>--%>
    <table border="0">
    <tr>
    <td width="400">&nbsp;</td>
     <td align="left" width="603" colspan="1"><font color="#1b6daf" size="4px" style="padding-left: 150px;">Special Packages</font></td>
    <td width="240"  align="right" style="padding-right:10px; padding-top:10px;" >
    <asp:ImageButton ID="imgbtnBack" runat="server" ImageUrl="~/images/buttons1/Back.png" Width="57px" Height="23px" PostBackUrl="Admin_CustomerDetails.aspx"/>
    </td></tr>
    <tr><td colspan="3">&nbsp;</td></tr>
    <tr><td align="left" width="300" style="padding-left:20px;">Select Package Type :
       <asp:DropDownList ID="ddlPackageGroups" runat="server" width="150px" AutoPostBack="true"
            onselectedindexchanged="ddlPackageGroups_SelectedIndexChanged"></asp:DropDownList></td>
            <td align="center" width="850"  >
            <table width="100%">
            <tr>
            <td align="right" width="200">Search By Package Name &nbsp; :</td>
            <td align="left" width="280">
            <asp:TextBox ID="txtpacksearch" ValidationGroup="search" Height="18" runat="server" Width="250" Font-Size="11"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="requi1" ValidationGroup="search" ControlToValidate="txtpacksearch">*</asp:RequiredFieldValidator></td>
            <td align="left" width="65"><asp:ImageButton ID="btnsearch" Text=" Search " runat="server" ImageUrl="~/images/buttons1/search.png" ValidationGroup="search" Width="57px" Height="23px"  onclick="btnsearch_Click" /></td>
            <td width="150">&emsp;
             <a href="Admin_PostSpecialPackages.aspx">Post Packages</a>
        <%--<asp:LinkButton ID="lnkPostSpecialPackages" runat="server" onclick="lnkPostSpecialPackages_Click" Text="Post Packages"></asp:LinkButton>--%>
            </td>
            </tr>
            </table>
            </td>
    <td align="center" width="100" style="padding-right:10px;">
     <a href="Admin_SpecialOffers.aspx">Special Offers</a>  
        </td></tr>
    <tr><td align="center" width="1243" colspan="3" >&nbsp;</td></tr>  
     </table> 
    
 <table border="0" width="1243" align="center"> 
    <tr><td align="center" width="98%">
    <asp:GridView ID="gvSpecialPackages" runat="server" AutoGenerateColumns="False"  Width="99%" 
        DataKeyNames="Package_Id" AllowPaging="true" PageSize="10" 
         onpageindexchanging="gvSpecialPackages_PageIndexChanging" 
            onrowdatabound="gvSpecialPackages_RowDataBound" >
         <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" Height="25px" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True"  ForeColor="White" Height="30px" Font-Size="14px" Font-Names="Arial"  CssClass="gridHeader"/> 
        <PagerStyle BackColor="#5D7B9D" ForeColor="White" HorizontalAlign="Center" Height="25px" Width="100%" CssClass="letterspace"/>
        <RowStyle  ForeColor="#333333" Height="30px"  HorizontalAlign="Center"/>
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" Height="25px" HorizontalAlign="Center"/>
        <PagerStyle BackColor="#5D7B9D" ForeColor="White" HorizontalAlign="Center" Height="25px" Width="100%" CssClass="letterspace"/>
            <Columns>
                  <asp:TemplateField HeaderText="Package Id" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="100px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                   <a href='Admin_PackageItinerary.aspx?Packageid=<%# DataBinder.Eval(Container.DataItem, "Package_Id") %>'> <%#Container.DataItemIndex + 1%></a> 
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Package Type" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="20px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                        <%# Eval("Package_Type")%> 
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Package Name" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="210px"  HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                     <%#Eval("Package_Name")%>
                   </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Package Cost" HeaderStyle-HorizontalAlign="Left" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                     <ItemTemplate>
                        <%# Eval("cost")%>
                    </ItemTemplate>
                </asp:TemplateField>               
                 <asp:TemplateField HeaderText="Package Photo" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="100px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                             <%# Eval("Photoname")%>
                   </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Posted On" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="100px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                             <%# Eval("Postdate")%>
                   </ItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="View" ShowHeader="False" HeaderStyle-HorizontalAlign="Left" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                   <ItemTemplate>
                     <a href='Admin_PostSpecialPackages.aspx?index=<%# DataBinder.Eval(Container.DataItem, "Package_Id") %>&view=1'>
                      <img src="../images/buttons1/view.png" border="0" width="55" height="23" alt="" /></a>
                   </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit" ShowHeader="False" HeaderStyle-HorizontalAlign="Left" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                     <ItemTemplate>
                      <a href="Admin_PostSpecialPackages.aspx?index=<%# DataBinder.Eval(Container.DataItem, "Package_Id") %>">
                      <img src="../images/buttons1/Edit.png" border="0" width="53" height="23" alt="" /></a>
                     </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Delete" ShowHeader="False" HeaderStyle-HorizontalAlign="Left" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                     <ItemTemplate>
                       <asp:ImageButton ImageUrl="~/images/buttons1/delete.png" ID="imgbtnDelete"  runat="server" Width="65px" Height="23px" AlternateText="delete"
                         CommandArgument='<%# Eval("Package_Id") %>' OnCommand="DeleteRecord" CausesValidation="false" Font-Size="12px"/>
                    </ItemTemplate>
               </asp:TemplateField>
               </Columns>
        </asp:GridView>
 </td></tr>

 </table>
</asp:Content>

