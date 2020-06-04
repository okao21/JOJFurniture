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

    <h1 id="intro">Please Create Your Account Here!</h1>
        <div id="RegistrationBox">
        <br />
        First Name :
        <asp:TextBox ID="UserFirstName" runat="server" style="text-align:left"></asp:TextBox>
        Last Name :
        <asp:TextBox ID="UserLastName" runat="server" style="text-align:right"></asp:TextBox>
        <br />
            <br />
        E-mail :
        <asp:TextBox ID="UserEmail" runat="server"></asp:TextBox>
        <br />
            <br />
        Password :
        <asp:TextBox ID="UserPassword" runat="server"></asp:TextBox>
        <br />
            <br />
        Confirm Password :
        <asp:TextBox ID="UserConfirmPassword" runat="server"></asp:TextBox>
            <br />
        <br />
                    Address :
        <asp:DropDownList ID="Province" runat="server">
            <asp:ListItem Enabled ="true" Text="Select Province" Value="1"></asp:ListItem>
            <asp:ListItem Text="Alberta" Value="1"></asp:ListItem>
            <asp:ListItem Text="British Columbia" Value="2"></asp:ListItem>
            <asp:ListItem Text="Monitoba" Value="3"></asp:ListItem>
            <asp:ListItem Text="New Brunswick" Value="4"></asp:ListItem>
            <asp:ListItem Text="Newfoundland and Labrador" Value="5"></asp:ListItem>
            <asp:ListItem Text="Northwest Territories" Value="6"></asp:ListItem>
            <asp:ListItem Text="Nova Scotia" Value="7"></asp:ListItem>
            <asp:ListItem Text="Nunavut" Value="8"></asp:ListItem>
            <asp:ListItem Text="Ontario" Value="9"></asp:ListItem>
            <asp:ListItem Text="Pricne Edward Island" Value="10"></asp:ListItem>
            <asp:ListItem Text="Quebac" Value="11"></asp:ListItem>
            <asp:ListItem Text="Saskachewan" Value="12"></asp:ListItem>
            <asp:ListItem Text="Yukon" Value="13"></asp:ListItem>
        </asp:DropDownList>
            <br />
        <asp:TextBox ID="UserAddress" runat="server" Text="Enter Address"></asp:TextBox>
        
        <asp:TextBox ID="PostalCode" runat="server" Text="Enter Postal Code"></asp:TextBox>
            <br />
            <br />
        Phone Number :
        <asp:TextBox ID="UserPhoneNumber" runat="server"></asp:TextBox>
        <br />
            <br />
        <asp:CheckBox ID="AgreeToPolicy" runat="server" />
        Agree to Policy*
        <br />
        <asp:CheckBox ID="Notification" runat="server" />
        Receive notifications via eamil
        <br />
        <br />
        <asp:Button ID="CreateAccount" runat="server" Text="Create Account!" style="text-align:center"/><br />
        <br />
        
        </div>





    <ul id="Footer">
        <li class="Header"><a href="Home.aspx" class="HeaderListEntry">Home</a></li>
        <li class="Header"><a href="Login.aspx" class="HeaderListEntry">Login</a></li>
        <li class="Header"><a href="CreateAccount.aspx" class="HeaderListEntry">Create Account</a></li>
    </ul>

    </form>

</body>
</html>
