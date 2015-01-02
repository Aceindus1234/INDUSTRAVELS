<%@ Page Title="" Language="C#" MasterPageFile="../AdminMainMasterPage.master" AutoEventWireup="true" CodeFile="Admin_CareerJobs.aspx.cs" Inherits="industravels_Admin_Admin_CareerJobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link href="../Css/Stylemodif.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript">
        function ConfirmationBox() {
            var result = confirm('Are you sure you want to selected record details ?');
            if (result) {

                return true;
            }
            else {
                return false;
            }
        }
  </script>
  <style type="text/css">
  .anch{float:right; font-weight:bold; padding-right:10px; color:#1b6daf}
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table border="0" width="1243" align="center"> 
<tr><td>&nbsp;</td></tr>
 <tr><td align="center"><font color="#1b6daf" size="4px" >Careers Jobs</font>
 <a href="Admin_PostCareersJob.aspx" class="anch">Post New Job</a>
 </td></tr>
  <tr><td ><font color="#1b6daf" size="2px" >Posted Jobs</font>  </td></tr>
    <tr><td align="center" width="100%">
    <asp:GridView ID="gvCareers" runat="server" AutoGenerateColumns="False"  Width="99%" 
        DataKeyNames="job_code" AllowPaging="true" PageSize="5" 
         onpageindexchanging="gvCareers_PageIndexChanging" 
            onrowdatabound="gvCareers_RowDataBound" >
         <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" Height="25px" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True"  ForeColor="White" Height="30px" Font-Size="14px" Font-Names="Arial"  CssClass="gridHeader"/> 
        <PagerStyle BackColor="#5D7B9D" ForeColor="White" HorizontalAlign="Center" Height="25px" Width="100%" CssClass="letterspace"/>
        <RowStyle  ForeColor="#333333" Height="30px"  HorizontalAlign="Center"/>
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" Height="25px" HorizontalAlign="Center"/>
        <PagerStyle BackColor="#5D7B9D" ForeColor="White" HorizontalAlign="Center" Height="25px" Width="100%" CssClass="letterspace"/>
            <Columns>
                  <asp:TemplateField HeaderText="Job Code" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="100px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                    <%# Eval("job_code")%> 
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Job Title" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="20px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                        <%# Eval("job_title")%> 
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Experience" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="210px"  HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                     <%#Eval("job_exp")%>
                   </ItemTemplate>
                </asp:TemplateField> 
                 <asp:TemplateField HeaderText="Location" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="210px"  HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                     <%#Eval("job_loc")%>
                   </ItemTemplate>
                </asp:TemplateField>                           
                 <asp:TemplateField HeaderText="Discription" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="100px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                  <ItemStyle Width="600" HorizontalAlign="Left"  />
                   <ItemTemplate >
                             <%# Eval("job_descr")%>
                   </ItemTemplate>
                </asp:TemplateField>
                 <%-- <asp:TemplateField HeaderText="Posted On" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="100px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                             <%# Eval("Posted_on","{0:dd/MM/yyyy}")%>
                   </ItemTemplate>
                </asp:TemplateField>--%>
                 
                 <asp:TemplateField HeaderText="View" ShowHeader="False" HeaderStyle-HorizontalAlign="Left" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                   <ItemTemplate>
                     <a href='Admin_PostCareersJob.aspx?index=<%# DataBinder.Eval(Container.DataItem, "job_code") %>&view=1'>                  
                      <img src="../images/buttons1/view.png" border="0" width="55" height="23" alt="" /></a>
                   </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit" ShowHeader="False" HeaderStyle-HorizontalAlign="Left" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                     <ItemTemplate>
                      <a href="Admin_PostCareersJob.aspx?index=<%# DataBinder.Eval(Container.DataItem, "job_code") %>">                      
                      <img src="../images/buttons1/Edit.png" border="0" width="53" height="23" alt="" /></a>
                     </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Delete" ShowHeader="False" HeaderStyle-HorizontalAlign="Left" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                     <ItemTemplate>
                       <asp:ImageButton ImageUrl="../images/buttons1/delete.png" ID="imgbtnDelete"  runat="server" Width="65px" Height="23px" AlternateText="delete"
                         CommandArgument='<%# Eval("job_code") %>' OnCommand="DeleteRecord" CausesValidation="false" Font-Size="12px"/>
                    </ItemTemplate>
               </asp:TemplateField>
               </Columns>
        </asp:GridView>
 </td></tr>
 <tr><td>&nbsp;</td></tr>
 <tr><td ><font color="#1b6daf" size="2px" >Applied Jobs</font>  </td></tr>
    <tr><td align="center" width="100%">
    <asp:GridView ID="grdApJobs" runat="server" AutoGenerateColumns="False"  Width="99%" 
        DataKeyNames="ap_jcode" AllowPaging="true" PageSize="5" 
         onpageindexchanging="grdApJobs_PageIndexChanging" 
            onrowdatabound="grdApJobs_RowDataBound" >
         <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" Height="25px" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True"  ForeColor="White" Height="30px" Font-Size="14px" Font-Names="Arial"  CssClass="gridHeader"/> 
        <PagerStyle BackColor="#5D7B9D" ForeColor="White" HorizontalAlign="Center" Height="25px" Width="100%" CssClass="letterspace"/>
        <RowStyle  ForeColor="#333333" Height="30px"  HorizontalAlign="Center"/>
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" Height="25px" HorizontalAlign="Center"/>
        <PagerStyle BackColor="#5D7B9D" ForeColor="White" HorizontalAlign="Center" Height="25px" Width="100%" CssClass="letterspace"/>
            <Columns>
                  <asp:TemplateField HeaderText="Job Code" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="100px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                    <%# Eval("ap_jcode")%> 
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Job Title" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="20px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                        <%# Eval("ap_name")%> 
                    </ItemTemplate>
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Experience" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="210px"  HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                     <%#Eval("ap_mail")%>
                   </ItemTemplate>
                </asp:TemplateField> 
                 <asp:TemplateField HeaderText="Location" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="210px"  HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                     <%#Eval("ap_ph_number")%>
                   </ItemTemplate>
                </asp:TemplateField>                           
                 <asp:TemplateField HeaderText="Discription" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="200px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                  
                   <ItemTemplate >
                   <asp:LinkButton ID="lnkbtnfilename" CommandArgument='<%# Eval("ap_rtitle")%>' OnCommand="lnkbtnfilename" ForeColor="maroon"
                    style="text-decoration:none" runat="server" 
                                  Text ='<%# DataBinder.Eval(Container.DataItem,"ap_rtitle")%>'    ></asp:LinkButton>
                            
                   </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Posted On" HeaderStyle-HorizontalAlign="Left" ControlStyle-Width="100px" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                    <ItemTemplate>
                          <%--   <%# Eval("ap_date", "{0:MM/dd/yyyy}")%>--%>
                          <%# DataBinder.Eval(Container.DataItem, "[ap_date]", "{0:MMM-dd-yyyy}")%>
                   </ItemTemplate>
                </asp:TemplateField>                 
                
                  <asp:TemplateField HeaderText="Delete" ShowHeader="False" HeaderStyle-HorizontalAlign="Left" ControlStyle-CssClass="userscontentmid" HeaderStyle-CssClass="headermid">
                     <ItemTemplate>
                       <asp:ImageButton ImageUrl="../images/buttons1/delete.png" ID="btnApplyDelete"  runat="server" Width="65px" Height="23px" AlternateText="delete"
                         CommandArgument='<%# Eval("ap_sno") %>' OnCommand="DeleteApplyRecord" CausesValidation="false" Font-Size="12px"/>
                    </ItemTemplate>
               </asp:TemplateField>
               </Columns>
        </asp:GridView>
 </td></tr>
 </table>
</asp:Content>

