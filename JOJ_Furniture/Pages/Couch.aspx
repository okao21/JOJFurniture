<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Couch.aspx.cs" Inherits="JOJ_Furniture.Pages.Couch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>JOJ Furniture</title>
    <link rel="stylesheet" href="../StyleSheets/Couch.css"/>
    <script src="../Scripts/MainFunctions.js"></script>
</head>
<body>
    

    <form id="form3" runat="server">
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


    <h1 id="intro">Here are some Couches for you!</h1>

        <div class="grid-container">

        <div id="CouchOne">
            <img alt="Green Couch Image" src="../Images/GreenSofa.jpg" />
            <%-- source: https://www.article.com/pla/1366/cirrus-grass-green-sofa?artcl_campignID=857230301&artcl_network=g&artcl_adgroupid=43579941316&artcl_keyword=&artcl_source=google&gclid=Cj0KCQjwrIf3BRD1ARIsAMuugNtR1wIA7XyFeeNdPM-HN61GCEAfZOMxtxeD3pdWeRyO9Z3hfmh0phoaAo1WEALw_wcB  --%>
            <p><strong>Green Sofa</strong></p>
            <p>Price: $550</p>
            <asp:DropDownList ID="DropDownListGreenCouch" runat="server">
                        <asp:ListItem Enabled ="true" Text="0" Value="None"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            <asp:Button ID="AddtoCartGreenCouch" runat="server" Text="Add To Cart!" style="text-align:center" OnClick="addProductToCart"/>
            
        </div>

        <div id="CouchTwo">
            <img alt="Gray Couch Image" src="../Images/GraySofa.jpg" />
            <%-- source:  https://www.article.com/pla/2453/soma-dawn-gray-right-sofa-bed --%>
            <p><strong>Gray Sofa</strong></p>
            <p>Price: $500</p>
            <asp:DropDownList ID="DropDownListGrayCouch" runat="server">
                        <asp:ListItem Enabled ="true" Text="0" Value="None"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            <asp:Button ID="AddtoCartGrayCouch" runat="server" Text="Add To Cart!" style="text-align:center" OnClick="addProductToCart"/>
                        
        </div>

        <div id="CouchThree">
            <img alt="Light Gray Couch Image" src="../Images/LightGraySofa.jpg" />
            <%-- source: https://www.article.com/pla/1066/nova-winter-gray-sofa?artcl_campignID=857230301&artcl_network=g&artcl_adgroupid=43579941316&artcl_keyword=&artcl_source=google&gclid=Cj0KCQjwrIf3BRD1ARIsAMuugNuS38ZFvF95c5uzoy_yUY_zIGZcGLx11n59I7ON6X_lOC1mGNzYN1waApiHEALw_wcB  --%>
            <p><strong>Light Gray Sofa</strong></p>
            <p>Price: $500</p>
            <asp:DropDownList ID="DropDownListLightCouch" runat="server">
                        <asp:ListItem Enabled ="true" Text="0" Value="None"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            <asp:Button ID="AddtoCartLightCouch" runat="server" Text="Add To Cart!" style="text-align:center" OnClick="addProductToCart"/>
                        
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
