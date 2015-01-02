<%@ Page Title="" Language="C#" MasterPageFile="../AdminMainMasterPage.master" AutoEventWireup="true" CodeFile="Admin_SpecialOffers.aspx.cs" Inherits="industravels_Admin_Admin_SpecialOffers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Css/Stylemodif.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript">
        function ConfirmationBox() {
            var result = confirm('Are you sure you want to delete Special offer packages details ?');
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
    <table border="0" width="1243" align="center"> 
 <tr>
 <td align="right" style="padding-right:10px; padding-top:10px;"> 
  <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="../images/buttons1/Back.png" Width="57px" Height="23px" PostBackUrl="Admin_SpecialPackageDetails.aspx"/></td>
 </tr>
 <tr><td align="center"><font color="#1b6daf" size="4px" >Special Packages</font>
 <a href="Admin_PostSpecial_Offers.aspx" style="float:right; font-weight:bold; padding-right:10px; color:#1b6daf">Post Special Offers</a>
 </td></tr>
    <tr><td align="center" width="100%">
    <asp:GridView ID="gvSpecialPackages" runat="server" AutoGenerateColumns="False"  Width="99%" 
        DataKeyNames="pack_Id" AllowPaging="true" PageSize="10" 
         onpageindexchanging="gvSpecialPackages_PageIndexChanging" 
            onrowdatabound="gvSpecialPackages_RowDataBound" >
         <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" Height="25px" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True"  ForeColor="White" Height="30px" Font-Size="14px" Font-Names="Arial"  CssClass="gridHeader"/> 
        <PagerStyle BackColor="#5D7B9D" ForeColor="White" HorizontalAlign="Center" Height="25px" Width="100%" CssClass="letterspace"/>
        <RowStyle  ForeColor="#333333" Height="30px"  HorizontalAlign="Center"/>
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" Height="25px" HorizontalAlign="Center"/>
        <PagerStyle BackColor="#5D7B9D" ForeColor="White" HorizontalAlign="Center" Height="25px" Width="100%" CssClass="letterspace"/>
            <Columns>
                  <asp:TemplateField HeaderText="S.No." HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="100px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                    <%#Container.DataItemIndex + 1%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Package Type" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="20px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                        <%# Eval("Package_Type")%> 
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Package Name" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="210px"  HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                     <%#Eval("Package_Title")%>
                   </ItemTemplate>
                </asp:TemplateField> 
                 <asp:TemplateField HeaderText="Package Plan" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="210px"  HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                     <%#Eval("NoOfDays")%>Days /  <%#Eval("NoOfNights")%>Nights
                   </ItemTemplate>
                </asp:TemplateField>                           
                 <asp:TemplateField HeaderText="Package Photo" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="100px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                             <%# Eval("Photo_name")%>
                   </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Posted On" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="100px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                             <%# Eval("Posted_on","{0:dd/MM/yyyy}")%>
                   </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Expired On" HeaderStyle-HorizontalAlign="Left" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                     <ItemTemplate>
                        <%# Eval("Expired_On", "{0:dd/MM/yyyy}")%>
                    </ItemTemplate>
                </asp:TemplateField>    
                 <asp:TemplateField HeaderText="View" ShowHeader="False" HeaderStyle-HorizontalAlign="Left" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                   <ItemTemplate>
                     <a href='Admin_PostSpecial_Offers.aspx?index=<%# DataBinder.Eval(Container.DataItem, "pack_Id") %>&view=1'>
                      <img src="../images/buttons1/view.png" border="0" width="55" height="23" alt="" /></a>
                   </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit" ShowHeader="False" HeaderStyle-HorizontalAlign="Left" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                     <ItemTemplate>
                      <a href="Admin_PostSpecial_Offers.aspx?index=<%# DataBinder.Eval(Container.DataItem, "pack_Id") %>">
                      <img src="../images/buttons1/Edit.png" border="0" width="53" height="23" alt="" /></a>
                     </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Delete" ShowHeader="False" HeaderStyle-HorizontalAlign="Left" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                     <ItemTemplate>
                       <asp:ImageButton ImageUrl="../images/buttons1/delete.png" ID="imgbtnDelete"  runat="server" Width="65px" Height="23px" AlternateText="delete"
                         CommandArgument='<%# Eval("pack_Id") %>' OnCommand="DeleteRecord" CausesValidation="false" Font-Size="12px"/>
                    </ItemTemplate>
               </asp:TemplateField>
               </Columns>
        </asp:GridView>
 </td></tr>

 </table>
</asp:Content>

