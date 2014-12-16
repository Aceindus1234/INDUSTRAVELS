<%@ Page Title="" Language="C#" MasterPageFile="../AdminMainMasterPage.master" AutoEventWireup="true" CodeFile="Admin_CustomerPackageDetails.aspx.cs" Inherits="Admin_Admin_CustomerPackageDetails" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    
  <link href="../Css/Stylemodif.css" rel="stylesheet" type="text/css" media="all" />
  <script type="text/javascript">
      function ConfirmationBox() {
          var result = confirm('Are you sure you want to delete customer Package details ?');
          if (result) {

              return true;
          }
          else {
              return false;
          }
      }
  </script>
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="content1" runat="server">
    <ajx:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" >
                </ajx:ToolkitScriptManager>
    <table border="0">
     <%--<tr><td align="center" width="1243" colspan="3">&nbsp;</td></tr>--%>
    
    <tr><td width="1243" colspan="3" align="right" style="padding-right:10px;padding-top:15px;"><asp:ImageButton ID="imgbtnBack" runat="server" ImageUrl="~/images/buttons1/Back.png" Width="57px" Height="23px" PostBackUrl="Admin_CustomerDetails.aspx"/></td></tr>
    <tr><td align="center" width="1243" colspan="3"><font color="#1b6daf" size="4px" style="padding-left: 25px;">Customer Package Information</font></td></tr>
    <tr><td align="center" width="1243" colspan="3">&nbsp;</td></tr>
 </table>
<br /> 
 <table border="0" width="1243" align="center">
        <tr><td align="center" width="98%">
<asp:GridView ID="gvPackages" runat="server" AutoGenerateColumns="False"  Width="98%" 
        DataKeyNames="Package_ItineraryId" AllowPaging="true" PageSize="10" 
         onpageindexchanging="gvPackages_PageIndexChanging" 
                onrowdatabound="gvPackages_RowDataBound" >
         <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" Height="25px" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True"  ForeColor="White" Height="30px" Font-Size="14px" Font-Names="Arial" CssClass="gridHeader"/> 
        <PagerStyle BackColor="#5D7B9D" ForeColor="White" HorizontalAlign="Center" Height="25px" Width="100%" CssClass="letterspace"/>
        <RowStyle  ForeColor="#333333" Height="30px"  HorizontalAlign="Center"/>
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" Height="25px" HorizontalAlign="Center"/>
        <PagerStyle BackColor="#5D7B9D" ForeColor="White" HorizontalAlign="Center" Height="25px" Width="100%" CssClass="letterspace"/>
            <Columns>
          
                <asp:TemplateField HeaderText="Package Type" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="20px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                        <%# Eval("Package_Type")%> 
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Travel Destination" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="100px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                             <%# Eval("Travel_Destination")%>
                   </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Hotel Type" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="210px"  HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                     <%#Eval("Hotel_Type") %>
                   </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="NumOfNights" HeaderStyle-HorizontalAlign="Left" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                     <ItemTemplate>
                        <%# Eval("NumOfNights")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="NumOfPassengers" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="30px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                        <%# Eval("NumOfPassengers")%>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Meal Plan" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="100px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                    <%# Eval("Meal_Plan")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <%-- <asp:TemplateField HeaderText="Meal Destination" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="100px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                    <%# Eval("Meal_Place") %>
                    </ItemTemplate>
                </asp:TemplateField>--%>
              <%--  <asp:TemplateField HeaderText="View" ShowHeader="False" HeaderStyle-HorizontalAlign="Left" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                     <ItemTemplate>                      
                       <asp:ImageButton ImageUrl="~/images/buttons1/view.png" ID="imgbtnEmail"  runat="server" AlternateText="View" Width="55px" Height="23px"/>
                    </ItemTemplate>
                </asp:TemplateField>--%>
                 <asp:TemplateField HeaderText="Delete" ShowHeader="False" HeaderStyle-HorizontalAlign="Left" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                     <ItemTemplate>
                       <asp:ImageButton ImageUrl="~/images/buttons1/delete.png" ID="imgbtnDelete"  runat="server" Width="65px" Height="23px" AlternateText="delete"  CommandArgument='<%# Eval("Package_ItineraryId") %>' OnCommand="DeleteRecord" CausesValidation="false" Font-Size="12px"/>
                    </ItemTemplate>
               </asp:TemplateField>
              </Columns>
        </asp:GridView>
 </td></tr></table>
</asp:Content>
