<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Indusgroup Class Libraries</title>
    <style type="text/css">
    .TopTD{background-color:Silver; color:Red; font-size:14pt; height:50px; }
    .TopTD1{background-color:Silver; color:Red; font-size:11pt; height:20px; }
    .MiddleTD1, .MiddleTD3, .MiddleTD5{width:10px;background-color:Silver;}
    .MiddleTD2{width:70%; }    
    .MiddleTD4{width:24%;} 
    .BottomTD{height:10px; background-color:Silver; color:Red; font-size:9pt;}
    .trcolor{background-color:Silver;}
    .Scrolltd{height:250px; width:700px; overflow-y:scroll}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%">
    <tr>
    <td colspan="5" align="center" class="TopTD">Indus Library</td>    
    </tr>
     <tr>
    <td colspan="5" align="center" class="TopTD1">
    <a href="Default.aspx">Create Documents</a>&emsp;
    <a href="Default2.aspx">Open Documents</a>&emsp;
    <a href="Default3.aspx">Download DLL</a>
    </td>    
    </tr>     
    <tr>
  <td class="MiddleTD1">&nbsp;</td>
    <td class="MiddleTD2" colspan="3">
    Create Documents 
    </td>
    <td class="MiddleTD5">&nbsp;</td> 
    </tr>
    <tr>
    <td class="MiddleTD1">&nbsp;</td>
    <td class="MiddleTD2">
    <div class="Scrolltd">
    <asp:GridView ID="Grid1" runat="server" Width="100%" GridLines="Both"></asp:GridView>
    </div>
    </td>
    <td class="MiddleTD3">&nbsp;</td>
    <td class="MiddleTD4" valign="top">Export table as following format.<hr />
    Enter Filename &nbsp: &nbsp; <asp:TextBox ID="txt1" runat="server" Width="200"></asp:TextBox> 
    <asp:RadioButtonList ID="rdlist" runat="server" RepeatColumns="1" RepeatDirection="Vertical" 
     OnSelectedIndexChanged="rdlist_selectChange" AutoPostBack="true">
    <asp:ListItem Text="Export To Pdf"  Value="1"></asp:ListItem>
    <asp:ListItem Text="Export To Word"  Value="2"></asp:ListItem>
    <asp:ListItem Text="Export To Excel"  Value="3"></asp:ListItem>
    
    </asp:RadioButtonList>
    </td>    
    <td class="MiddleTD5">&nbsp;</td>
    </tr>
    <tr>
    <td colspan="5" class="BottomTD">&nbsp;</td>
    </tr>
    <tr>
    <td class="MiddleTD1">&nbsp;</td>
    <td class="MiddleTD2" colspan="3">
    Enter/Copy Text Here 
    </td>
    <td class="MiddleTD5">&nbsp;</td> 
    </tr>
    <tr>
    <td class="MiddleTD1">&nbsp;</td>
    <td class="MiddleTD2" id="OpenTD" runat="server">
    <%--<asp:GridView ID="GridView1" runat="server" Width="100%" GridLines="Both" Visible="false"></asp:GridView>--%>
    <asp:TextBox ID="ExportText" runat="server" Width="100%" TextMode="MultiLine" Height="250" ></asp:TextBox> 
    </td>
    <td class="MiddleTD3">&nbsp;</td>
    <td class="MiddleTD4" valign="top">Create Documents.<hr />
    Enter Filename &nbsp: &nbsp; <asp:TextBox ID="txt2" runat="server" Width="200"></asp:TextBox> 
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="1" RepeatDirection="Vertical"
     AutoPostBack="true" OnSelectedIndexChanged="RadioButtonList1_Changed" >     
    <asp:ListItem Text="Export To Pdf"  Value="1"></asp:ListItem>
    <asp:ListItem Text="Export To Word"  Value="2"></asp:ListItem>
    <%--<asp:ListItem Text="Export To Excel"  Value="3"></asp:ListItem>--%>    
    </asp:RadioButtonList>
    </td>    
    <td class="MiddleTD5">&nbsp;</td>
    </tr>
    <tr>
    <td colspan="5" class="BottomTD" align="center" >&copy All Rights Reserved For Indusgroup</td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>

