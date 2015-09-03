<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResumeData.aspx.cs" Inherits="ResumeData" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Resume</title>
    <script runat="server"> 
      
    </script>
</head>
<body>
    <form id="form1" runat="server" >
      <%-- Download display--%>
    <div  runat ="server" align="center"><h2>Resume Data</h2>
        <asp:ImageButton ID="ImgBt" runat="server"  src="http://i43.tinypic.com/2zyah49.jpg" Height="79px" Width="85px" OnClick="ImgBt_Click" />
        <asp:FileUpload ID="FileUpData" runat="server" /><br/>
<asp:Label ID="LbHint" runat="server" Text="Label" ForeColor ="Salmon">click on flavor to upload</asp:Label>
        </div> <br/>

        <%--User personal data--%>
   <div runat ="server" align="left">  
     <li><asp:RadioButton ID="RdBtOver" runat="server" align ="left" Checked="false" GroupName="Group"/>I am 18<br/> </li>
          <li><asp:RadioButton ID="RdUnder" runat="server" align ="left" Checked="true" GroupName ="Group"/>I am below 18
       <asp:Label ID="LigalPass" runat="server" Text=" Iligal Age!!!" ForeColor="Red" Visible ="false"></asp:Label></li>
       <br/>
       <asp:TextBox ID="Nametxt" runat="server"></asp:TextBox>
       <asp:Label ID="Label1" runat="server" Text="FirstName"></asp:Label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                  ErrorMessage="You must enter your name" ControlToValidate="Nametxt" ForeColor="Red"></asp:RequiredFieldValidator>
       <br/>
        <asp:TextBox ID="LastNametxt" runat="server"></asp:TextBox>
       <asp:Label ID="Label2" runat="server" Text="LastName"></asp:Label>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastNametxt" ErrorMessage="You must enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
        <br/>
<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
            <asp:ListItem Text="Select City" Value="0"></asp:ListItem>
                <asp:ListItem Text="Kiev" Value="1"></asp:ListItem>
                <asp:ListItem Text="Lviv" Value="2"></asp:ListItem>
            <asp:ListItem Text="Chernovcu" Value="2"></asp:ListItem>
            <asp:ListItem Text="Kharkiv" Value="2"></asp:ListItem>
    </asp:DropDownList>
<br/>
        <h4 style =" color:green" > Press Save to send your perssonal info in data</h4>
       <!--<input type ="submit" value ="Sub" runat="server"  onclick ="Button1_Click" />   -->
       <asp:Button runat="server" Text="Save" OnClick="Button1_Click" />
           </div> 

    <%--   Quethion support --%>
    <div>
        <br/><br/><br/>
    <asp:LinkButton ID="LinkBt" runat="server" Font-Size="Larger" OnClick="LinkBt_Click" >Help questions</asp:LinkButton>
    </div>
    </form>
</body>
</html>
