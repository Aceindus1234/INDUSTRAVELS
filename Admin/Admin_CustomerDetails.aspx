<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_CustomerDetails.aspx.cs" Inherits="Admin_CustomerDetails" 
MasterPageFile="../AdminMainMasterPage.master" Title=": : Customer Details : :"%>
<%--<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajx" %>--%>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">

  <link href="../Css/Stylemodif.css" rel="stylesheet" type="text/css" media="all" />
  <script type="text/javascript">
      function ConfirmationBox() {
          var result = confirm('Are you sure you want to delete customer record ?');
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
  <%--<asp:ScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ScriptManager>--%>
<%--
 <ajx:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" >
                </ajx:ToolkitScriptManager>--%>
    <table border="0">
     <%--<tr><td align="center" width="1243" colspan="3">&nbsp;</td></tr>--%>
    
    <tr><td align="center" width="1243" colspan="4">&nbsp;</td></tr>
    <tr><td align="center" width="1243" colspan="4"><font color="#1b6daf" size="4px" style="padding-left: 25px;">Customers Information</font></td></tr>
    <tr><td align="center" width="1243" colspan="4">&nbsp;</td></tr>
        <tr>
         <td  width="200px" align="left" style="padding-left:20px;">
          <asp:DropDownList ID="ddltraveltypes" runat="server" Width="100px" AutoPostBack="true" 
                 onselectedindexchanged="ddltraveltypes_SelectedIndexChanged">
            <asp:ListItem Value="0">-Select-</asp:ListItem>
            <asp:ListItem Value="1">Travels</asp:ListItem>
            <asp:ListItem Value="2">Packages</asp:ListItem>   
          </asp:DropDownList>
                </td>
            <td  width="180px" align="left">
                Search by Name / Email<strong>&nbsp;:&nbsp;</strong></td>
            <td width="350px" align="left" style="position:relative; left:0px; height:25px;">
                <asp:TextBox ID="SearchBox" runat="server" Width="350px" Font-Size="14px" Height="20px" />
                     <%--<ajx:TextBoxWatermarkExtender ID="seachwater" runat="server" TargetControlID="SearchBox" WatermarkText="Search by Email or Name letters" WatermarkCssClass="water1"></ajx:TextBoxWatermarkExtender>--%>    
                         </td>
          <td align="left">&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="btnsearch" Text="Search" runat="server" ImageUrl="~/images/buttons1/search.png" Width="57px" Height="23px"
                    onclick="btnsearch_Click" />&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="imgbtnReset" Text="Search" runat="server" ImageUrl="~/images/buttons1/reset.png" 
                    onclick="imgbtnReset_Click" Width="57px" Height="23px"/></td>
        </tr>
     </table>
<br /> 
 <table border="0" width="1243" align="center">
        <tr><td align="center" width="98%">
<asp:GridView ID="gvCustomer" runat="server" AutoGenerateColumns="False"  Width="98%" 
        DataKeyNames="Customer_Id,Enquiry_Id" AllowPaging="true" PageSize="10" 
         onpageindexchanging="gvCustomer_PageIndexChanging" 
                onrowdatabound="gvCustomer_RowDataBound" >
         <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" Height="25px" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True"  ForeColor="White" Height="30px" Font-Size="14px" Font-Names="Arial" CssClass="gridHeader"/> 
        <PagerStyle BackColor="#5D7B9D" ForeColor="White" HorizontalAlign="Center" Height="25px" Width="100%" CssClass="letterspace"/>
        <RowStyle  ForeColor="#333333" Height="30px"  HorizontalAlign="Center"/>
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" Height="25px" HorizontalAlign="Center"/>
        <PagerStyle BackColor="#5D7B9D" ForeColor="White" HorizontalAlign="Center" Height="25px" Width="100%" CssClass="letterspace"/>
            <Columns>
             <asp:TemplateField Visible="false" HeaderText="S.No" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="20px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                 <ItemTemplate>
                   <asp:Label ID="lblsr" runat="server" />
                       <%--<%#Container.DataItemIndex + 1%>--%>
                  </ItemTemplate>                  
                </asp:TemplateField>          
                <asp:TemplateField HeaderText="Customer Name" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="20px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                        <%# Eval("Customer_FName")%> <%# Eval("Customer_LName")%>                        
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Email" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="300px"  HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                     <%#Eval("Customer_Emailid") %>
                     <%--<asp:LinkButton ID="lnkEmail" CssClass="report" runat="server" PostBackUrl='<%# string.Format("MailTo.aspx?id="+ Eval("wid").ToString()) %>' Text='<%# Eval("w_email") %>'></asp:LinkButton>--%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mobile" HeaderStyle-HorizontalAlign="Left" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                     <ItemTemplate>
                        <%# Eval("Customer_Mobile")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Country" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="250px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                        <%# Eval("Customer_Country")%>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="City" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="250px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                             <%# Eval("Customer_City")%>
                   </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="159px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                  <ItemTemplate>
                          <%# Eval("Postdate","{0:d}")%>
                  </ItemTemplate>
                </asp:TemplateField>
                   <asp:TemplateField HeaderText="Enquiry Info" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="80px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                    <asp:HyperLink ID="lnkEnquiryInfo" runat="server" Text='<%# Eval("Enquiry_Id") %>' ></asp:HyperLink>     
                   <%-- <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("Enquiry_Id") %>' PostBackUrl='<%# CustomerEnquiry(Eval("Enquiry_Id"),(long.Parse(Eval("Travel_Typeid").ToString()))) %>'></asp:LinkButton>  --%>                   
                    </ItemTemplate>
                </asp:TemplateField>
               <%-- <asp:TemplateField HeaderText="View" ShowHeader="False" HeaderStyle-HorizontalAlign="Left"  ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                     <ItemTemplate>
                        <asp:ImageButton ImageUrl="~/images/buttons1/view.png" ID="imgbtnEmail"  runat="server" AlternateText="View" Width="55px" Height="23px"/>
                    </ItemTemplate>
                </asp:TemplateField>--%>
                 <asp:TemplateField HeaderText="Delete" ShowHeader="False" HeaderStyle-HorizontalAlign="Left"  ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                     <ItemTemplate>
                     <asp:ImageButton ImageUrl="~/images/buttons1/delete.png" ID="imgbtnDelete" Height="23px" Width="65px"  runat="server"  AlternateText="delete"  CommandArgument='<%# Eval("Enquiry_Id") %>' OnCommand="DeleteRecord" CausesValidation="false" Font-Size="12px"/>
                       <%--<asp:ImageButton ImageUrl="~/images/buttons1/delete.png" ID="imgbtnlists"  runat="server"  AlternateText="Delete" Width="65px" Height="23px"/>--%>
                    </ItemTemplate>
               </asp:TemplateField>
              </Columns>
        </asp:GridView>
        
 </td></tr></table>
</asp:Content>
