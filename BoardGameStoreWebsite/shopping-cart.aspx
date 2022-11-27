<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shopping-cart.aspx.cs" Inherits="BoardGameStoreWebsite.shopping_cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ong Yi Jun</title>
    <link href="Resources/shopping-cart.css" rel="stylesheet" type="text/css" />
    <link href="Resources/header.css" rel="stylesheet" type="text/css" />
    <link href="Resources/footer.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <header class="header">
        <ul class="header-list">
            <li>
                <a href="home.aspx" class="logo"><img src="Resources/images/store-logo.png" width="50" height="50"/></a>
            </li>
            <li>
                <a href="home.aspx" class="logo">OnlyBoardGames</a>
            </li>
            <li>
                <a href="shopping-cart.aspx"><i class="fa-solid fa-cart-shopping"></i></a>
            </li>

        </ul>
    </header>
    <form id="form1" runat="server">
        <div class="wallet">
            <i class="fa-solid fa-wallet"></i> Board Game Wallet: <asp:Label ID="Wallet" runat="server" Text="Label"></asp:Label>
        </div>
        <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate></HeaderTemplate>
            <ItemTemplate>
                <!-- Display each item from data source -->
                <div class="cart-view">
                    <div class="check-box">
                        <asp:CheckBox runat="server" ID="gameCheckBox"></asp:CheckBox>
                    </div>
                    <div class="game-name">
                        <%#Eval("Game.Name") %>
                    </div>
                    <div class="game-image">
                        <img src="Resources/images/<%#Eval("Game.Name") %>.png" alt="<%#Eval("Game.Name") %> image"/>
                    </div>
                    <div class="quantity">
                        Quantity: 
                        <asp:TextBox ID="Quantity" runat="server" Text="1"></asp:TextBox>
                        <asp:Label ID="NotEnoughStock" CssClass="not-enough-stock" runat="server" Text="Not enough stock !!"></asp:Label>
                    </div>
                    <div class="stock">
                        Stock: <%#Eval("Game.Stock") %>
                    </div>
                    <div class="price">
                        RM<%#Eval("Game.Price") %>.00
                    </div>
                </div>
            </ItemTemplate>
            <FooterTemplate></FooterTemplate>
        </asp:Repeater>
        <div class="payment-details">
            <div class="personal-details">
                <table>
                    <tr>
                        <td>Name: </td>
                        <td>
                            <asp:TextBox ID="RecipientName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Address: </td>
                        <td>
                            <asp:TextBox ID="RecipientAddress" runat="server" Rows="3"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Phone: </td>
                        <td>
                            <asp:TextBox ID="RecipientPhone" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Email: </td>
                        <td>
                            <asp:TextBox ID="RecipientEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="payment">
                <h4>Select payment method: </h4>
                <asp:RadioButtonList ID="PaymentMethod" runat="server">
                    <asp:ListItem Text="Board Game Wallet">Board Game Wallet</asp:ListItem>
                    <asp:ListItem Text="Online Transfer">Online Transfer</asp:ListItem>
                    <asp:ListItem Text="Cards">Credit/Debit Card</asp:ListItem>
                </asp:RadioButtonList>
                <asp:Button ID="Pay" runat="server" Text="Pay" CssClass="pay-button" OnClick="Pay_Click" />
                <asp:Label ID="BalanceInsufficient" runat="server" CssClass="balance-insufficient" Text="Balance Insufficient !!"></asp:Label>
                <asp:Label ID="FunctionNotAvailable" runat="server" CssClass="function-unavailable" Text="Function not available yet..."></asp:Label>
            </div>
        </div>
    </form>
    <footer class="footer">
        <div class="footer-details">
            <p class="address">
                Xiamen University Malaysia,<br />
                Jalan Sunsuria,<br />
                Bandar Sunsuria,<br />
                43900 Sepang,<br />
                Selangor,<br />
                Malaysia
            </p>
            <p class="contact">
                <i class="fa-regular fa-envelope"></i>   <a href="mailto:swe2002109@xmu.edu.my">swe2002109@xmu.edu.my</a><br /><br />
                <i class="fa-brands fa-linkedin"></i>   <a href="https://linkedin.com/in/o-yj-8a2a97255">linkedin.com/in/o-yj-8a2a97255</a><br /><br />
                <i class="fa-brands fa-github"></i>   <a href="https://github.com/oyj623">oyj623</a>
            </p>

        </div>
        <p class="copyright">© SWE2002109 | Ong Yi Jun</p>
    </footer>
    <script src="https://kit.fontawesome.com/a4ee3fc773.js" crossorigin="anonymous"></script>
    <script>
            function validateForm() {

            }
    </script>
</body>
</html>
