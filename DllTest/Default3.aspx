<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

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
    .Scrolltd{height:500px; width:100%; overflow-y:scroll}
    .link1{background-image:url('DLL/dll.png'); height:50px;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%">
    <tr>
    <td colspan="3" align="center" class="TopTD">Indus Library</td>    
    </tr>
     <tr>
    <td colspan="3" align="center" class="TopTD1">
    <a href="Default.aspx">Create Documents</a>&emsp;
    <a href="Default2.aspx">Open Documents</a>&emsp;
     <a href="Default3.aspx">Download DLL</a>
    </td>    
    </tr>     
    <tr>
    <td class="MiddleTD">&nbsp;</td>     
    <td >
    Download DLL <hr />
    </td>
    <td class="MiddleTD">&nbsp;</td>     
    </tr>
    <tr>
    <td class="MiddleTD">&nbsp;</td> 
    <td valign="top" >   
      <div class="Scrolltd" >
    <asp:DataList ID="dtlist" runat="server" Width="100%" RepeatDirection="Horizontal" RepeatColumns="6">
    <ItemTemplate>
    <a href='<%# Eval("Value","DLL/{0}") %>'>
    <img src="DLL/dll.png" width="100" height="50" alt="dllImage" /><br />
    <%# Eval("Value") %>
    </a>&emsp;
    <br />
   <%--  <asp:LinkButton ID="lnkDownload" Text='<%# Eval("Value") %>' CommandArgument='<%# Eval("Value") %>'  
      runat="server"  OnClick="DownloadFile"></asp:LinkButton>&emsp;|&emsp;--%>
    </ItemTemplate>
    </asp:DataList>
    </div>
    </td>
    <td class="MiddleTD">&nbsp;</td> 
    </tr>       
    <tr>
    <td colspan="3" class="BottomTD" align="center" >&copy All Rights Reserved For Indusgroup</td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
