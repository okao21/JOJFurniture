<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="JOJ_Furniture.Pages.WebForm1" %>

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

    <h1 id="intro">Welcome to JOJ Furniture! We've got everything ready for you...</h1>

    <div class="grid-container">
        <!--<a href="Login.html">-->
        <div id="ImageContainer">
            <img alt="Main Splash" src="../Images/MainPageImage.jpg" />
        </div>
        <!--</a>-->
        <div id="News">
            <h3>News from JOJ:</h3>
            <p>
                Come celebrate as we open a new store location!
                Our brand new showroom is scheduled to open this summer in Burnaby.
                Stay tuned to this website for more information, and in the mean time, visit us at our
                current location, or order online! Happy Shopping!
            </p>
        </div>
        <div id="Locations">
            <img alt="Our Map" src="../Images/Map.JPG" />
        </div>
    </div>


    




    <ul id="Footer">
        <li class="Header"><a href="Home.aspx" class="HeaderListEntry">Home</a></li>
        <li class="Header"><a href="Login.aspx" class="HeaderListEntry">Login</a></li>
        <li class="Header"><a href="CreateAccount.aspx" class="HeaderListEntry">Create Account</a></li>
    </ul>


</body>
</html>
