<%@ Page Title="" Language="C#" MasterPageFile="../AdminMainMasterPage.master"
 AutoEventWireup="true" CodeFile="Admin_GenerateReport.aspx.cs" Inherits="industravels_Admin_Admin_GenerateReport"  %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><h3>Report View</h3>
      
<asp:ScriptManager ID="scr1" runat="server" >

</asp:ScriptManager>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
            Font-Size="8pt"
            WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="620px" 
            Height="1015px" style="margin-right: 0px"  >
        </rsweb:ReportViewer>
      <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Itravels9ConnectionString %>" 
        SelectCommand="SELECT * FROM [Countries] WHERE ([Country_Id] = @Country_Id)">
        <SelectParameters>
            <asp:Parameter DefaultValue="2" Name="Country_Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>--%>
    </center>
</asp:Content>

