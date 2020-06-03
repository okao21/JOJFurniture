<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JOJ_Furniture.Pages.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>JOJ Account Login</title>
    <link rel="stylesheet" href="../StyleSheets/MainStyle.css"/>
    <script src="../Scripts/MainFunctions.js"></script>
</head>
<body>

    <form id="form1" runat="server">

    <ul id="Header">
        <li class="Header"><a href="Home.aspx" class="HeaderListEntry">Home</a></li>
        <li class="Header"><a href="Login.aspx" class="HeaderListEntry">Login</a></li>
        <li class="Header"><a href="CreateAccount.aspx" class="HeaderListEntry">Create Account</a></li>
    </ul>

    <h1 id="intro">Please Login to your Account!</h1>






    <ul id="Footer">
        <li class="Header"><a href="Home.aspx" class="HeaderListEntry">Home</a></li>
        <li class="Header"><a href="Login.aspx" class="HeaderListEntry">Login</a></li>
        <li class="Header"><a href="CreateAccount.aspx" class="HeaderListEntry">Create Account</a></li>
    </ul>

        <br />
        <br />
        <br />
        Email Address:
        <asp:TextBox ID="EmailAddressTextBox" runat="server"></asp:TextBox>
        <br />
        Password:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Loginbtn" runat="server" Text="Login" /><br />
        Don&#39;t have account?<br />
        Click Here to create an account today!</form>

</body>
</html>
