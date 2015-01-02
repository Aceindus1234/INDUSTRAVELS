<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="industravels_Admin_Default2" %>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center><h3>Report View</h3>      
<asp:ScriptManager ID="scr1" runat="server" >
</asp:ScriptManager>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
            Font-Size="8pt"
            WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="620px" 
            Height="1114px" style="margin-right: 0px" InteractiveDeviceInfos="(Collection)"  >
        <LocalReport ReportPath="Report.rdlc">
       <%-- <LocalReport ReportPath="Report.rdlc">--%>
          <DataSources>
                <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSet1" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Itravels9ConnectionString %>" 
        SelectCommand="SELECT * FROM [Countries] WHERE ([Country_Id] = @Country_Id)">
        <SelectParameters>
            <asp:Parameter DefaultValue="2" Name="Country_Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </center>
    </div>
    </form>
</body>
</html>
