<%@ Page Title="" Language="C#" MasterPageFile="../AdminMainMasterPage.master" AutoEventWireup="true" CodeFile="Admin_PackageItinerary.aspx.cs" Inherits="Admin_PackageItinerary" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
<link href="../Css/Stylemodif.css" rel="stylesheet" type="text/css" media="all" />
    <%--<script type="text/javascript">
        function ConfirmationBox() {
            var result = confirm('Are you sure you want to delete Special Package itinerary details ?');
            if (result) {

                return true;
            }
            else {
                return false;
            }
        }
  </script>--%>
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="content1" runat="server">
    <ajx:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" >
                </ajx:ToolkitScriptManager>
    <table border="0">
    <tr><td width="1243" colspan="3" align="right" style="padding-right:10px;padding-top:10px;" >
    <asp:ImageButton ID="imgbtnBack" runat="server" ImageUrl="~/images/buttons1/Back.png" Width="57px" Height="23px" PostBackUrl="Admin_SpecialPackageDetails.aspx"/></td></tr>
    <tr><td align="left" width="300" style="padding-left:20px;">
       <asp:DropDownList ID="ddlPackageGroups" runat="server" width="150px" AutoPostBack="true"
            onselectedindexchanged="ddlPackageGroups_SelectedIndexChanged"></asp:DropDownList></td>
            <td align="center" width="703" colspan="1"><font color="#1b6daf" size="4px" style="padding-left: 25px;">Package Itinerary Details</font></td>
    <td align="center" width="240" style="padding-right:10px;">
        <%--<asp:LinkButton ID="lnkPostSpecialPackages" runat="server" onclick="lnkPostSpecialPackages_Click" Text="Post Special Packages"></asp:LinkButton>--%></td></tr>
    <tr><td align="center" width="1243" colspan="3" >&nbsp;</td></tr>
  
     </table>
<br /> 
 <table border="0" width="1243" align="center">
    <tr><td align="center" width="98%">
    <asp:GridView ID="gvSpecialPackages" runat="server" AutoGenerateColumns="False"  Width="98%" 
        DataKeyNames="PackageItenarary_Id,Package_Id" AllowPaging="true" PageSize="10" 
         onpageindexchanging="gvSpecialPackages_PageIndexChanging" >
         <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" Height="25px" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True"  ForeColor="White" Height="30px" Font-Size="14px" Font-Names="Arial"  CssClass="gridHeader"/> 
        <PagerStyle BackColor="#5D7B9D" ForeColor="White" HorizontalAlign="Center" Height="25px" Width="100%" CssClass="letterspace"/>
        <RowStyle  ForeColor="#333333" Height="30px"  HorizontalAlign="Center"/>
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" Height="25px" HorizontalAlign="Center"/>
        <PagerStyle BackColor="#5D7B9D" ForeColor="White" HorizontalAlign="Center" Height="25px" Width="100%" CssClass="letterspace"/>
            <Columns>          
                <asp:TemplateField HeaderText="Package Type" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="20px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                        <%# Eval("Itenerary_Type")%> 
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Package Title" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="210px"  HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                     <%#Eval("Package_Title")%>
                   </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Package SubTitle" HeaderStyle-HorizontalAlign="Left" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                     <ItemTemplate>
                        <%# Eval("Package_SubTitle")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Posted Date" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="100px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
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
               <%-- <asp:TemplateField HeaderText="Delete" ShowHeader="False" HeaderStyle-HorizontalAlign="Left" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                     <ItemTemplate>
                       <asp:ImageButton ImageUrl="~/images/buttons1/delete.png" ID="imgbtnDelete"  runat="server" Width="65px" Height="23px" AlternateText="delete"  CommandArgument='<%# Eval("Package_Id") %>' OnCommand="DeleteRecord" CausesValidation="false" Font-Size="12px"/>
                    </ItemTemplate>
               </asp:TemplateField>--%>
               </Columns>
        </asp:GridView>
 </td></tr>

 </table>
</asp:Content>

