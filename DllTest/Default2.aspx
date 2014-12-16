<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Indusgroup Class Libraries</title>
    <style type="text/css">
    .TopTD{background-color:Silver; color:Red; font-size:14pt; height:50px; }
    .TopTD1{background-color:Silver; color:Red; font-size:11pt; height:20px; }
    .MiddleTD{width:10px;background-color:Silver;}
    .MiddleTD2{width:70%; }    
    .MiddleTD4{width:24%;} 
    .BottomTD{height:10px; background-color:Silver; color:Red; font-size:9pt;}
    .trcolor{background-color:Silver;}
    .Scrolltd{height:510px; width:700px; overflow-y:scroll}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%">
    <tr>
    <td colspan="5"  align="center" class="TopTD">Indus Library</td>    
    </tr>
     <tr>
    <td colspan="5" align="center" class="TopTD1">
    <a href="Default.aspx">Create Documents</a>&emsp;
    <a href="Default2.aspx">Open Documents</a>&emsp;
     <a href="Default3.aspx">Download DLL</a>
    </td>    
    </tr>     
    <tr>
    <td class="MiddleTD">&nbsp;</td>     
    <td colspan="3">
    Open Documents <hr />
    </td>
    <td class="MiddleTD">&nbsp;</td>     
    </tr>
    <tr>
    <td class="MiddleTD">&nbsp;</td> 
    <td valign="top">
   <asp:GridView ID="GridView1" Width="250" runat="server" AutoGenerateColumns="false" EmptyDataText ="No files uploaded">
    <Columns>
        <asp:BoundField DataField="Text" ItemStyle-Width="150" HeaderText="File Name" />
         <asp:TemplateField >
         <ItemStyle Width="50px" />
            <ItemTemplate>
                <asp:LinkButton ID="lnkView" Text="Open" CommandArgument='<%# Eval("Value") %>' runat="server" 
                OnClick="ViewFile" />
             </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lnkDownload" Text="Download" CommandArgument='<%# Eval("Value") %>' runat="server"
                 OnClick="DownloadFile"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
       
    </Columns>
</asp:GridView>
    </td>
    <td class="MiddleTD">&nbsp;</td> 
    <td align="center" valign="top">
    <div class="Scrolltd"  >
    <div id="div1" runat="server"></div>
    <asp:GridView ID="Grid1" runat="server" Width="100%" GridLines="Both"></asp:GridView>
    </div>
    </td>    
    <td class="MiddleTD">&nbsp;</td> 
    </tr>    
   
    <tr>
    <td colspan="5" class="BottomTD" align="center" >&copy All Rights Reserved For Indusgroup</td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>

