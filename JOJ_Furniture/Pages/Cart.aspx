<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="JOJ_Furniture.Pages.WebForm10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>JOJ Furniture</title>
    <link rel="stylesheet" href="../StyleSheets/MainStyle.css"/>
    <link href="../StyleSheets/Cart.css" rel="stylesheet" />
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
        <li class="Header2"><a href="LogOut.aspx" class="HeaderListEntry">Log Out</a></li>
        <li class="Header2"><a href="Cart.aspx" class="HeaderListEntry">Cart</a></li>
    </ul>


    <h1 id="intro">Here is your shopping cart:</h1>
<div style="text-align: center;">
<asp:Label ID="placeOrderLbl" runat="server" Text="Place your Order" Font-Bold="true" Font-Size="XX-Large" Visible="false"></asp:Label>

        </div>
    <table class="center">
        <tr>
            <th>Product Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
        </tr>
        <tr>
            <td>Green Sofa</td>
            <td>$550</td>
            <td>
                <asp:Button ID="addButtonGS" runat="server" Text="+" OnClick="addProduct" />
                <asp:Label ID="GreenSofaQlbl" runat="server" Text=""></asp:Label>
                <asp:Button ID="removeButtonGS" runat="server" Text="-" OnClick="removeProduct" />
            </td>
            <td>
                <asp:Label ID="GreenCouchTotalLbl" runat="server" Text="$"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Gray Sofa</td>
            <td>$500</td>
            <td>
                <asp:Button ID="addButtonGrayS" runat="server" Text="+" OnClick="addProduct" />
                <asp:Label ID="GraySofaQlbl" runat="server" Text=""></asp:Label>
                <asp:Button ID="removeButtonGrayS" runat="server" Text="-" OnClick="removeProduct" />
            </td>
            <td>
                <asp:Label ID="GrayCouchTotalLbl" runat="server" Text="$"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Light Gray Sofa</td>
            <td>$500</td>
            <td>
                <asp:Button ID="addButtonLGrayS" runat="server" Text="+" OnClick="addProduct" />
                <asp:Label ID="LightGraySofaQlbl" runat="server" Text=""></asp:Label>
                <asp:Button ID="removeButtonLGrayS" runat="server" Text="-" OnClick="removeProduct" />
            </td>
            <td>
                <asp:Label ID="lightGrayCouchTotallbl" runat="server" Text="$"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Kitchen Table</td>
            <td>$300</td>
            <td>
                <asp:Button ID="addKT" runat="server" Text="+" OnClick="addProduct" />
                <asp:Label ID="KitchenTableQlbl" runat="server" Text=""></asp:Label>
                <asp:Button ID="removeKT" runat="server" Text="-" OnClick="removeProduct" />
            </td>
            <td>
                <asp:Label ID="KitchenTableTotalLbl" runat="server" Text="$"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Coffee Table</td>
            <td>$300</td>
            <td>
                <asp:Button ID="addCT" runat="server" Text="+" OnClick="addProduct" />
                <asp:Label ID="coffeeTableQlbl" runat="server" Text=""></asp:Label>
                <asp:Button ID="removeCT" runat="server" Text="-" OnClick="removeProduct" />
            </td>
            <td>
                <asp:Label ID="CoffeeTableTotallbl" runat="server" Text="$"></asp:Label>
            </td>
        </tr>

        <tr>
            <td>Computer Desk</td>
            <td>$400</td>
            <td>
                <asp:Button ID="addCD" runat="server" Text="+" OnClick="addProduct" />
                <asp:Label ID="computerDeskQlbl" runat="server" Text=""></asp:Label>
                <asp:Button ID="removeCD" runat="server" Text="-" OnClick="removeProduct" />
            </td>
            <td>
                <asp:Label ID="ComputerDeskTotallbl" runat="server" Text="$"></asp:Label>
            </td>
        </tr>

        <tr>
            <td colspan="4"></td>
        </tr>
        <tr>
            <td colspan="4">             
            </td>
        </tr>
        <tr>
            <td colspan="2"></td>
            <td colspan="2">
                <asp:Label ID="GrandTotalLbl" runat="server" Text="Cart Total: "></asp:Label>
                </td>
        </tr>
        <tr>
            <td colspan="2"></td>
            <td colspan="2">
                <asp:Label ID="AfterTaxTotalLbl" runat="server" Text="Total(+TAX): "></asp:Label>
                </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:Button ID="checkoutBtn" runat="server" Text="Proceed to Check Out" OnClick="goToCheckout" />
                <asp:Button ID="editBtn" runat="server" Text="Edit" OnClick="editOrder" Visible="false"/>
                <asp:Button ID="confirmBtn" runat="server" Text="Place your Order" Visible="false" OnClick="placeOrder" />
            </td>
        </tr>
    </table>


    




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
