<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="JOJ_Furniture.Pages.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>JOJ Create Account</title>
    <link rel="stylesheet" href="../StyleSheets/MainStyle.css"/>
    <link href ="../StyleSheets/CreateAccount.css" rel ="stylesheet" />
    <script src="../Scripts/MainFunctions.js"></script>
</head>
<body>

    <form id ="form2" runat="server">

    <ul id="Header">
        <li class="Header"><a href="Home.aspx" class="HeaderListEntry">Home</a></li>
        <li class="Header"><a href="Login.aspx" class="HeaderListEntry">Login</a></li>
        <li class="Header"><a href="CreateAccount.aspx" class="HeaderListEntry">Create Account</a></li>
    </ul>
    <ul id="Header2">
        <li class="Header2"><a href="Login.aspx" class="HeaderListEntry">Login</a></li>
    </ul>

    <h1 id="intro">Please Create Your Account Here!</h1>
        <div id="RegistrationBox">
            <div class="grid-container">
                <p class="column1">First Name:</p>
                <div class="column2">
                    <asp:TextBox ID="UserFirstName" runat="server" style="text-align:left"></asp:TextBox>
                </div>
                <p class="column3">Last Name:</p>
                <div class="column4">
                    <asp:TextBox ID="UserLastName" runat="server" style="text-align:left"></asp:TextBox>
                </div>
                <p class="column1">E-mail:</p>
                <div class ="column2">
                    <asp:TextBox ID="userEmailAddress" runat="server"></asp:TextBox>
                </div>
                <p class="column1">Password:</p>
                <div class="column2">
                    <asp:TextBox ID="userPassword" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <p class="column1">Confirm Password:</p>
                <div class="column2">
                    <asp:TextBox ID="UserConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <p class="column1">Address:</p>
                <div class="column2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Enabled ="true" Text="Select Province" Value="None"></asp:ListItem>
                        <asp:ListItem Text="Alberta" Value="Alberta"></asp:ListItem>
                        <asp:ListItem Text="British Columbia" Value="British Columbia"></asp:ListItem>
                        <asp:ListItem Text="Manitoba" Value="Manitoba"></asp:ListItem>
                        <asp:ListItem Text="New Brunswick" Value="New Brunswich"></asp:ListItem>
                        <asp:ListItem Text="Newfoundland and Labrador" Value="Newfoundland and Labrador"></asp:ListItem>
                        <asp:ListItem Text="Northwest Territories" Value="Northwest Territories"></asp:ListItem>
                        <asp:ListItem Text="Nova Scotia" Value="Nova Scotia"></asp:ListItem>
                        <asp:ListItem Text="Nunavut" Value="Nunavut"></asp:ListItem>
                        <asp:ListItem Text="Ontario" Value="Ontario"></asp:ListItem>
                        <asp:ListItem Text="Prince Edward Island" Value="Prince Edward Island"></asp:ListItem>
                        <asp:ListItem Text="Quebec" Value="Quebec"></asp:ListItem>
                        <asp:ListItem Text="Saskatchewan" Value="Saskatchewan"></asp:ListItem>
                        <asp:ListItem Text="Yukon" Value="Yukon"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="column3">
                    <asp:TextBox ID="UserAddress" runat="server" placeholder="Enter Address"></asp:TextBox>
                </div>
                <div class="column4">
                    <asp:TextBox ID="UserPostalCode" runat="server" placeholder="Enter Postal Code" MaxLength="6"></asp:TextBox>
                </div>
                <p class="column1">Phone Number:</p>
                <div class="column2">
                    <asp:TextBox ID="UserPhoneNumber" runat="server" MaxLength="10"></asp:TextBox>
                </div>
            </div>

        <asp:CheckBox ID="AgreeToPolicy" runat="server" />
        Agree to Privacy Policy*
        <br />
        <asp:CheckBox ID="Notification" runat="server" />
        Receive notifications via email
        <br />
        <br />
        <asp:Button ID="CreateAccount" runat="server" Text="Create Account!" style="text-align:center" OnClick="btnCreateAccount"/><br />
        <br />

        <asp:Label ID ="lblError" runat="server" Text=""></asp:Label>
        
        </div>





    <ul id="Footer">
        <li class="Header"><a href="Home.aspx" class="HeaderListEntry">Home</a></li>
        <li class="Header"><a href="Login.aspx" class="HeaderListEntry">Login</a></li>
        <li class="Header"><a href="CreateAccount.aspx" class="HeaderListEntry">Create Account</a></li>
    </ul>
    <ul id="FooterRight">
        <li class="Header2"><a href="Login.aspx" class="HeaderListEntry">Login</a></li>
    </ul>

    </form>

</body>
</html>
