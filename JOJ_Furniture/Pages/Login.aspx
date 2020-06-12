<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JOJ_Furniture.Pages.WebForm2" %>

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
    <ul id="Header2">
        <li class="Header2"><a href="CreateAccount.aspx" class="HeaderListEntry">Create Account</a></li>
    </ul>

    <h1 id="intro">Please Login to your Account!</h1>
        <div id="LoginBox" style="text-align:center">
        <img src="../Images/member.png" id="memberIcon"/>
                <div class ="errorMessages">
                    <asp:Label ID ="errorMessages" runat="server" Text=""></asp:Label>
                </div>
                <div class="grid-container">
                <p id="email">Email Address:</p>
                <div id ="emailInput">
                    <asp:TextBox ID="emailAddressTextBox" runat="server"></asp:TextBox>
                </div>
                <p id ="password">Password:</p>
                <div id="passwordInput">
                    <asp:TextBox ID="passwordTextbox" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                
            </div>

        <br />
        <br />
        <asp:Button ID="Loginbtn" runat="server" Text="Login" OnClick="userLogin"/><br />
        <br />
        Don&#39;t have account?<br />
        Click <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pages/CreateAccount.aspx">Here</asp:HyperLink> to create an account today!
        </div>



    <ul id="Footer">
        <li class="Header"><a href="Home.aspx" class="HeaderListEntry">Home</a></li>
        <li class="Header"><a href="Login.aspx" class="HeaderListEntry">Login</a></li>
        <li class="Header"><a href="CreateAccount.aspx" class="HeaderListEntry">Create Account</a></li>
    </ul>
    <ul id="FooterRight">
        <li class="Header2"><a href="CreateAccount.aspx" class="HeaderListEntry">Create Account</a></li>
    </ul>

        </form>

</body>
</html>
