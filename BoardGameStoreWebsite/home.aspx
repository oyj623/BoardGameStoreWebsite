<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="BoardGameStoreWebsite.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ong Yi Jun</title>
    <link href="Resources/home-page.css" rel="stylesheet" type="text/css" />
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
                <a href="shopping-cart.aspx" class="cart-link">Your cart &rarr;<i class="fa-solid fa-cart-shopping"></i></a>
            </li>
        </ul>
    </header>

    <form id="form" runat="server">
        <div class="current-shipment">
            <asp:Repeater ID="Deliveries" runat="server">
                <HeaderTemplate>
                    <div class="delivery-title">In delivery<i class="fa-solid fa-truck" style="padding: 0em 1em;"></i>:</div>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="order-recipient-details">
                        <div class="order-recipient-user-details">
                            <div class="recipient-name">
                                Recipient Name: <%#Eval("Name") %>
                            </div>
                            <div class="recipient-address">
                                Address: <%#Eval("Address") %>
                            </div>
                            <div class="recipient-email">
                                Email: <%#Eval("Email") %>
                            </div>
                            <div class="recipient-phone">
                                Phone: <%#Eval("Phone") %>
                            </div>
                        </div>
                        <div class="order-recipient-items-details">
                            <div class="recipient-items">
                                <%#Eval("OutputItemsDetails") %>
                            </div>
                            <div class="recipient-total-price">
                                Total price: RM<%#Eval("TotalPrice") %>.00
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate></FooterTemplate>
            </asp:Repeater>
        </div>
        <div class="content">
            <div class="wallet">
                <i class="fa-solid fa-wallet"></i> Board Game Wallet: <asp:Label ID="Wallet" runat="server" Text="Label"></asp:Label>
            </div>
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <div class="card">
                        <div class="game-image">
                            <img src="Resources/images/<%#Eval("Name") %>.png" alt="<%#Eval("Name") %> image"/>
                        </div>
                        <div class="game-details">
                            <div class="title-and-button">
                                <div class="game-title">
                                    <h4><%#Eval("Name") %></h4>
                                </div>
                                <div class="add-to-cart-button">
                                    <asp:Button ID="AddToCart" runat="server" Text="Add To Cart" OnClick="AddToCart_Click" CssClass="to-cart-button" CommandArgument='<%#Bind("Name")%>' CommandName='<%#Eval("Name")%>' />
                                </div>
                                <asp:Label ID="AddCartSuccessLabel" CssClass="add-to-cart-success" runat="server" Text="Add to cart successful"></asp:Label>
                            </div>
                            <div class="game-brief">
                                <p><%#Eval("Description") %></p>
                            </div>
                            <div class="price-details">
                                <div class="price">
                                    <p><b>Price:</b> RM<%#Eval("Price") %>.00</p>
                                </div>
                                <div class="stock">
                                    <p><b>Stock:</b> <%#Eval("Stock") %></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate></FooterTemplate>
            </asp:Repeater>
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
    
</body>
</html>
