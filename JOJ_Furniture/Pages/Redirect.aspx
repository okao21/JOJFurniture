<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Redirect.aspx.cs" Inherits="JOJ_Furniture.Pages.Redirect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>JOJ Furniture</title>
    <link rel="stylesheet" href="../StyleSheets/MainStyle.css"/>
    <script src="../Scripts/MainFunctions.js"></script>
</head>
<body>

    <ul id="Header">
        <li class="Header"><a href="Home.aspx" class="HeaderListEntry">Home</a></li>
        <li class="Header"><a href="Login.aspx" class="HeaderListEntry">Login</a></li>
        <li class="Header"><a href="CreateAccount.aspx" class="HeaderListEntry">Create Account</a></li>
    </ul>
    <ul id="Header2">
        <li class="Header2"><a href="Login.aspx" class="HeaderListEntry">Login</a></li>
    </ul>


    <h1 id="intro">You Are Not Logged In</h1>

    <p id="redirect">We're sorry, that page is not available until you are logged in.<br />
        Please Log in to your account, or create an account to continue.<br /> 
        Thanks! <br />
        <br />
        Click <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pages/Login.aspx">Here</asp:HyperLink> to Log in to your account.<br />
        <br />
        Don't have an account?<br />
        Click <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Pages/CreateAccount.aspx">Here</asp:HyperLink> to create an account today!
    </p>





    <ul id="Footer">
        <li class="Header"><a href="Home.aspx" class="HeaderListEntry">Home</a></li>
        <li class="Header"><a href="Login.aspx" class="HeaderListEntry">Login</a></li>
        <li class="Header"><a href="CreateAccount.aspx" class="HeaderListEntry">Create Account</a></li>
    </ul>
        <ul id="FooterRight">
        <li class="Header2"><a href="Login.aspx" class="HeaderListEntry">Login</a></li>
    </ul>


</body>
</html>
