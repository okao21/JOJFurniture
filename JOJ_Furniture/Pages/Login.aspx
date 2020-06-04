﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JOJ_Furniture.Pages.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>JOJ Account Login</title>
    <link rel="stylesheet" href="../StyleSheets/MainStyle.css"/>
    <link href="../StyleSheets/LoginPage.css" rel="stylesheet" />
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
        <div id="LoginBox" style="text-align:center">
        <img src="../Images/member.png" id="memberIcon"/>
        <br />
        Email Address:
        <asp:TextBox ID="emailAddressTextBox" runat="server"></asp:TextBox>
        <br />
        Password:
        <asp:TextBox ID="passwordTextbox" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Loginbtn" runat="server" Text="Login" /><br />
        <br />
        Don&#39;t have account?<br />
        Click <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pages/CreateAccount.aspx">Here</asp:HyperLink> to create an account today!
        
        </div>



    <ul id="Footer">
        <li class="Header"><a href="Home.aspx" class="HeaderListEntry">Home</a></li>
        <li class="Header"><a href="Login.aspx" class="HeaderListEntry">Login</a></li>
        <li class="Header"><a href="CreateAccount.aspx" class="HeaderListEntry">Create Account</a></li>
    </ul>

        </form>

</body>
</html>
