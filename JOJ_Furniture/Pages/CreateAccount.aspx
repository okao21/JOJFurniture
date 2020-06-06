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
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </div>
                <p class="column1">Password:</p>
                <div class="column2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </div>
                <p class="column1">Confirm Password:</p>
                <div class="column2">
                    <asp:TextBox ID="UserConfirmPassword" runat="server"></asp:TextBox>
                </div>
                <p class="column1">Address:</p>
                <div class="column2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Enabled ="true" Text="Select Province" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Alberta" Value="1"></asp:ListItem>
                        <asp:ListItem Text="British Columbia" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Manitoba" Value="3"></asp:ListItem>
                        <asp:ListItem Text="New Brunswick" Value="4"></asp:ListItem>
                        <asp:ListItem Text="Newfoundland and Labrador" Value="5"></asp:ListItem>
                        <asp:ListItem Text="Northwest Territories" Value="6"></asp:ListItem>
                        <asp:ListItem Text="Nova Scotia" Value="7"></asp:ListItem>
                        <asp:ListItem Text="Nunavut" Value="8"></asp:ListItem>
                        <asp:ListItem Text="Ontario" Value="9"></asp:ListItem>
                        <asp:ListItem Text="Prince Edward Island" Value="10"></asp:ListItem>
                        <asp:ListItem Text="Quebec" Value="11"></asp:ListItem>
                        <asp:ListItem Text="Saskatchewan" Value="12"></asp:ListItem>
                        <asp:ListItem Text="Yukon" Value="13"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="column3">
                    <asp:TextBox ID="UserAddress" runat="server" placeholder="Enter Address"></asp:TextBox>
                </div>
                <div class="column4">
                    <asp:TextBox ID="PostalCode" runat="server" placeholder="Enter Postal Code"></asp:TextBox>
                </div>
                <p class="column1">Phone Number:</p>
                <div class="column2">
                    <asp:TextBox ID="UserPhoneNumber" runat="server"></asp:TextBox>
                </div>
            </div>

        <asp:CheckBox ID="AgreeToPolicy" runat="server" />
        Agree to Policy*
        <br />
        <asp:CheckBox ID="Notification" runat="server" />
        Receive notifications via email
        <br />
        <br />
        <!--    I commented this button out for the demonstartion only, and it can be put back in and used after that.
            The button below is a placeholder that lets us navigate to our products page.-->
        <!--<asp:Button ID="CreateAccount" runat="server" Text="Create Account!" style="text-align:center"/><br />-->
            <a href="Products.aspx" class="button">Create Account!</a>
        <br />
        
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
