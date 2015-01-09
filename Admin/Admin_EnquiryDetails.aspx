<%@ Page Title="" Language="C#" MasterPageFile="../AdminMainMasterPage.master" AutoEventWireup="true" CodeFile="Admin_EnquiryDetails.aspx.cs" Inherits="industravels_Admin_Admin_EnquiryDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
  <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
  <script type="text/javascript">
      $(document).ready(function () {
          $("#ctl00_ContentPlaceHolder1_rdtype").on("change", function () {
              if ($("input[name$='ctl00$ContentPlaceHolder1$rdtype']:checked").val() == "Travels Enquiry") {
                  $("#tr2").hide();
                  $("#tr1").show();                  
              }
              else {
                  $("#tr2").show();
                  $("#tr1").hide();                  
              }
          });
      });
  </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table border="0"  width="1243">
     <%--<tr><td align="center" width="1243" colspan="3">&nbsp;</td></tr>--%>
    
    <tr><td  align="right"  style="padding-right:10px;padding-top:15px;">
    <asp:ImageButton ID="imgbtnBack" runat="server" ImageUrl="~/images/buttons1/Back.png" Width="57px" Height="23px" PostBackUrl="Admin_CustomerDetails.aspx"/></td></tr>
    <tr><td align="center"  ><font color="#1b6daf" size="4px" style="padding-left: 25px;">Enquiry Information</font></td></tr>
    <tr><td align="center"  >&nbsp;</td></tr>
    <tr>
    <td><div style="width:400px; border:1px solid gray;">
    <table width="100%">
    <tr>
     <td width="150"> Enquiry Type : </td><td align="left"  >&emsp;
   <asp:RadioButtonList ID="rdtype" runat="server" RepeatDirection="Horizontal" Width="300">
    <asp:ListItem Text=" Travels Enquiry" Selected="True" Value="Travels Enquiry"></asp:ListItem>
    <asp:ListItem Text=" Package Enquiry" Value="Package Enquiry"></asp:ListItem>
    </asp:RadioButtonList>
    </td>
    </tr>
    </table></div>
    </td>
   </tr>
 </table>
<br /> 
 <table border="0" width="1243" align="center">
        <tr id="tr1" ><td align="center" width="98%">
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
 </td></tr>
 <tr><td>&nbsp;</td></tr>
  <tr id="tr2" style="display:none" ><td align="center" width="98%">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  Width="98%" 
        DataKeyNames="Customer_Id,Enquiry_Id" AllowPaging="true" PageSize="10" 
         onpageindexchanging="gvCustomer_PageIndexChanging" 
                onrowdatabound="gvCustomer_RowDataBound" >
         <FooterStyle BackColor="#629799" ForeColor="White" Font-Bold="True" Height="25px" />
        <HeaderStyle BackColor="#629799" Font-Bold="True"  ForeColor="White" Height="30px" Font-Size="14px" Font-Names="Arial" CssClass="gridHeader"/> 
        <PagerStyle BackColor="#629799" ForeColor="White" HorizontalAlign="Center" Height="25px" Width="100%" CssClass="letterspace"/>
        <RowStyle  ForeColor="#333333" Height="30px"  HorizontalAlign="Center"/>
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" Height="25px" HorizontalAlign="Center"/>
        <PagerStyle BackColor="#629799" ForeColor="White" HorizontalAlign="Center" Height="25px" Width="100%" CssClass="letterspace"/>
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
 </td></tr>
 </table>
</asp:Content>

