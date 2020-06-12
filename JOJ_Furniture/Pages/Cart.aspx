<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="JOJ_Furniture.Pages.WebForm1" %>

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
        <li class="Header2"><a href="Home.aspx" class="HeaderListEntry">Log Out</a></li>
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
            <td>Couch</td>
            <td>$500</td>
            <td>
                <asp:DropDownList ID="CouchQuantityddl" OnSelectedIndexChanged="Quantity_Change" AutoPostBack="true" runat="server">
                    
                    <asp:ListItem Selected="True">0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="CouchTotalLbl" runat="server" Text="$"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Chair</td>
            <td>$200</td>
            <td>
                <asp:DropDownList ID="ChairQuantityddl" OnSelectedIndexChanged="Quantity_Change" AutoPostBack="true" runat="server">
                    
                    <asp:ListItem Selected="True">0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="ChairTotalLbl" runat="server" Text="$"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Table</td>
            <td>$100</td>
            <td>
                <asp:DropDownList ID="TableQuantityddl" OnSelectedIndexChanged="Quantity_Change" AutoPostBack="true" runat="server">
                    
                    <asp:ListItem Selected="True">0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="TableTotalLbl" runat="server" Text="$"></asp:Label>
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
