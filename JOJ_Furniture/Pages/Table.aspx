<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Table.aspx.cs" Inherits="JOJ_Furniture.Pages.Table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>JOJ Furniture</title>
    <link rel="stylesheet" href="../StyleSheets/Table.css"/>
    <script src="../Scripts/MainFunctions.js"></script>
</head>
<body>


    <form id="form4" runat="server">
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

    <h1 id="intro">Here are some Tables for you!</h1>

    <div class="grid-container">

        <div id ="TableOne">
            <img alt="Kitchen Table Image" src="../Images/kitchenTable.jpg" />
            <%-- source: https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages.costco-static.com%2FImageDelivery%2FimageService%3FprofileId%3D12026540%26imageId%3D1291344-847__1%26recipeName%3D350&imgrefurl=https%3A%2F%2Fwww.costco.com%2Fdining-tables.html&tbnid=sM8Eu65gf6ZksM&vet=12ahUKEwjgyJjYyPvpAhVDlJ4KHaHiAbwQMyg3egUIARDCAQ..i&docid=HMy5MX5aE4_JKM&w=350&h=350&q=Tables&safe=active&ved=2ahUKEwjgyJjYyPvpAhVDlJ4KHaHiAbwQMyg3egUIARDCAQ  --%>
            <p><strong>Kitchen Table</strong></p>
            <p><i>A Kitchen table with class design</i></p>
            <p><i>that will make your every meal happy.</i></p>
            <p>Price: $300</p>
            <asp:DropDownList ID="DropDownListKT" runat="server">
                        <asp:ListItem Enabled ="true" Text="0" Value="None"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            <asp:Button ID="AddtoCarKTA" runat="server" Text="Add To Cart!" style="text-align:center" OnClick="addProductToCart"/>
                        
        </div>

        <div id ="TableTwo">
            <img alt="Coffee Table Image" src="../Images/coffeeTable.jpg" />
            <%-- source: https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.potterybarn.com%2Fpbimgs%2Fab%2Fimages%2Fdp%2Fwcm%2F202009%2F0495%2Fparkview-reclaimed-wood-coffee-table-c.jpg&imgrefurl=https%3A%2F%2Fwww.potterybarn.com%2Fproducts%2Fparkview-coffee-table%2F&tbnid=SxDdXXQcTtethM&vet=12ahUKEwiTxqnsyPvpAhWziJ4KHRQ4DYgQMygJegUIARCNAw..i&docid=0302euoO2XnXcM&w=558&h=501&q=coffee%20Tables&safe=active&ved=2ahUKEwiTxqnsyPvpAhWziJ4KHRQ4DYgQMygJegUIARCNAw --%>
            <p><strong>Coffee Table</strong></p>
            <p><i>A Modern - styled table for</i></p>
            <p><i>coffee and tea lovers.</i></p>
            <p>Price: $300</p>
            <asp:DropDownList ID="DropDownListCT" runat="server">
                        <asp:ListItem Enabled ="true" Text="0" Value="None"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            <asp:Button ID="AddtoCartCT" runat="server" Text="Add To Cart!" style="text-align:center" OnClick="addProductToCart"/>

        </div>

        <div id ="TableThree">
            <img alt="Computer Desk Image" src="../Images/computerDesk.jpg" />
            <%-- source: https://www.google.com/imgres?imgurl=https%3A%2F%2Frichmedia.ca-richimage.com%2FImageDelivery%2FimageService%3FprofileId%3D12026539%26id%3D2045687%26recipeId%3D500&imgrefurl=https%3A%2F%2Fwww.costco.ca%2Fgeneva-computer-desk.product.100416312.html&tbnid=RLPWWhcEy8xPIM&vet=12ahUKEwjo9JP3yPvpAhUSgZ4KHZ0UADcQMygPegUIARCqAw..i&docid=5SvkXJ5WYN_-_M&w=1200&h=1200&q=desk&safe=active&ved=2ahUKEwjo9JP3yPvpAhUSgZ4KHZ0UADcQMygPegUIARCqAw --%>
            <p><strong>Computer Desk</strong></p>
            <p><i>A computer desk with multiple storage</i></p>
            <p><i>and more than enough space.</i></p>
            <p>Price: $400</p>
            <asp:DropDownList ID="DropDownListCD" runat="server">
                        <asp:ListItem Enabled ="true" Text="0" Value="None"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            <asp:Button ID="AddtoCartCD" runat="server" Text="Add To Cart!" style="text-align:center" OnClick="addProductToCart"/>

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
    </form>
</body>
</html>
