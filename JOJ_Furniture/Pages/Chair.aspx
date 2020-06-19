<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chair.aspx.cs" Inherits="JOJ_Furniture.Pages.Chair" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>JOJ Furniture</title>
    <link rel="stylesheet" href="../StyleSheets/Chair.css"/>
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


    <h1 id="intro">Here are some Chairs for you!</h1>

        <div class="grid-container">

        <div id="ChairOne">
            <img alt="Modern Chair Image" src="../Images/ModernChair.jpg" />
            <%-- source:  https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.westelm.ca%2Fsite%2FWE%2FProduct%2520Images%2Fmodern-petal-upholstered-dining-chair-h4007-hero-z.jpg%3Fresizeid%3D69%26resizeh%3D450%26resizew%3D450&imgrefurl=https%3A%2F%2Fwww.westelm.ca%2Fmodern-petal-upholstered-dining-chair-h4007&tbnid=P3T67YHVUDsVdM&vet=12ahUKEwjZobi2oozqAhVYhJ4KHW4gBZYQMygWegUIARC0Aw..i&docid=d8ByUGdRcgYRxM&w=450&h=450&q=chairs&safe=active&ved=2ahUKEwjZobi2oozqAhVYhJ4KHW4gBZYQMygWegUIARC0Aw --%>
            <p><strong>Modern Chair</strong></p>
            <p><i>The classic type of chair.</i></p>
            <p><i>Fits best if you are looking for nit image.</i></p>
            <p>Price: $150</p>
            <asp:DropDownList ID="DropDownListModernChair" runat="server">
                        <asp:ListItem Enabled ="true" Text="0" Value="None"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            <asp:Button ID="AddtoCartModernChair" runat="server" Text="Add To Cart!" style="text-align:center" OnClick="addProductToCart"/>
            
        </div>

        <div id="ChairTwo">
            <img alt="Dark Gray Chair Image" src="../Images/DarkGrayChair.jpg" />
            <%-- source: https://www.article.com/pla/1856/nord-meteorite-gray-chair?artcl_campignID=856688149&artcl_network=g&artcl_adgroupid=45183886004&artcl_keyword=&artcl_source=google&gclid=Cj0KCQjwoaz3BRDnARIsAF1RfLdPfQaTnwbMSRJ2ehNZSm2F_O6Tk7ExtqsYlisqYPn9qI5kfBMWcJYaAg-7EALw_wcB --%>
            <p><strong>Dark Gray Chair</strong></p>
            <p><i>Very comfortable chair with</i></p>
            <p><i>Ergonomic Desgin for human body.</i></p>
            <p>Price: $150</p>
            <asp:DropDownList ID="DropDownListDarkGrayChair" runat="server">
                        <asp:ListItem Enabled ="true" Text="0" Value="None"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            <asp:Button ID="AddtoCartDarkGrayChair" runat="server" Text="Add To Cart!" style="text-align:center" OnClick="addProductToCart"/>
                        
        </div>

        <div id="ChairThree">
            <img alt="Gray Chair Image" src="../Images/GrayChair.jpg" />
            <%-- source: https://www.article.com/pla/1855/nord-galaxy-gray-chair?artcl_campignID=853505417&artcl_network=g&artcl_adgroupid=51816040228&artcl_keyword=&artcl_source=google&gclid=Cj0KCQjwoaz3BRDnARIsAF1RfLeFN7eTpBPbqIsJQ77sJxv2PqksR6YBCaw3yksDIw1ROT3OMB-JeDQaAjvqEALw_wcB  --%>
            <p><strong>Gray Chair</strong></p>
            <p><i>A chair with light gray color</i></p>
            <p><i>that will bring bightness to your house.</i></p>
            <p>Price: $150</p>
            <asp:DropDownList ID="DropDownListGrayChair" runat="server">
                        <asp:ListItem Enabled ="true" Text="0" Value="None"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
             </asp:DropDownList>
            <asp:Button ID="AddtoCartGrayChair" runat="server" Text="Add To Cart!" style="text-align:center" OnClick="addProductToCart"/>
                        
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