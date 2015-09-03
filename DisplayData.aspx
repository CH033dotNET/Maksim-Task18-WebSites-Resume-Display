<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayData.aspx.cs" Inherits="DisplayData" Debug="true" %>
<%@ Import Namespace = "HelpConnection" %>
<%@ Assembly Name = "HelpConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DisplayData</title>
    <script runat="server">         
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="height: 322px">
    <asp:Label ID="LbTitle" runat="server" Text="Label" ><h2>Display Data</h2></asp:Label>
   <%--<asp:ListBox ID="ListofData" runat="server" Visible="true" BackColor="#CCFFFF" 
            Height="171px" Width="207px"></asp:ListBox> --%>
        <br/>
        <asp:GridView ID="GVdataTable" runat="server">
        </asp:GridView>
        <br/>
   <asp:Button ID="BtShowData" runat="server" Text="Show Table" 
            OnClick="GetOnDisplayData" Height="30px" Width="91px" />
<asp:Button ID="Button1" runat="server" Text="Clear Table" Height="30px" 
            onclick="Button1_Click" />
    </div>
    <br/>
        <asp:imagebutton runat="server" OnClick="BackToResume" 
        ImageUrl="http://www.bonfedhaiti.gouv.ht/New%20folder/back_256.png" Height="26px" Width="51px" style="margin-left: 67px"></asp:imagebutton>
        <br/>
   </form>
</body>
</html>

