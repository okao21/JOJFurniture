<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="JOJ_Furniture.Pages.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>JOJ Furniture</title>
    <link rel="stylesheet" href="../StyleSheets/Products.css"/>
    <script src="../Scripts/MainFunctions.js"></script>
</head>
<body>

    <ul id="Header">
        <li class="Header"><a href="Home.aspx" class="HeaderListEntry">Home</a></li>
        <li class="Header"><a href="Login.aspx" class="HeaderListEntry">Login</a></li>
        <li class="Header"><a href="CreateAccount.aspx" class="HeaderListEntry">Create Account</a></li>
        <li class="Header"><a href="Products.aspx" class="HeaderListEntry">Products</a></li>
    </ul>
    <ul id="Header2">
        <li class="Header2"><a href="LogOut.aspx" class="HeaderListEntry">Log Out</a></li>
        <li class="Header2"><a href="Cart.aspx" class="HeaderListEntry">Cart</a></li>
    </ul>

    <h1 id="intro">What are you looking for today?</h1>

    <div class ="grid-container">

        <div id="CouchContainer">
            <p><strong>Looking for Couches?</strong></p>
            <p><strong>Shop Now -></strong></p>
            <a href="Couch.aspx">
            <img alt="Couch Image" src="../Images/Couch.jpg" />
            </a>
        </div>

        <div id="TableContainer">
            <p><strong>Looking for Tables?</strong></p>
            <p><strong>Shop Now -></strong></p>
            <a href="Table.aspx">
            <img alt="Table Image" src="../Images/Table.jpg" />
            </a>
        </div>

        <div id="ChairContainer">
            <p><strong>Looking for Chairs?</strong></p>
            <p><strong>Shop Now -></strong></p>
            <a href="Chair.aspx">
            <img alt="Chair Image" src="../Images/Chair.jpg" />
            </a>
        </div>

    </div>
    <ul id="Footer">
        <li class="Header"><a href="Home.aspx" class="HeaderListEntry">Home</a></li>
        <li class="Header"><a href="Login.aspx" class="HeaderListEntry">Login</a></li>
        <li class="Header"><a href="CreateAccount.aspx" class="HeaderListEntry">Create Account</a></li>
        <li class="Header"><a href="Products.aspx" class="HeaderListEntry">Products</a></li>
    </ul>
    <ul id="FooterRight">
        <li class="Header2"><a href="Home.aspx" class="HeaderListEntry">Log Out</a></li>
        <li class="Header2"><a href="Cart.aspx" class="HeaderListEntry">Cart</a></li>
    </ul>


</body>
</html>
