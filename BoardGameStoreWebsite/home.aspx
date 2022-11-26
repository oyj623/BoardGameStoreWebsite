<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="BoardGameStoreWebsite.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ong Yi Jun</title>
    <link href="Resources/grid-view.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form" runat="server">
        <header class="header">
            <ul class="header-list">
                <li>
                    <a href="home.aspx" class="logo"><img src="Resources/images/store-logo.png" width="50" height="50"/></a>
                </li>
                <li>
                    <a href="home.aspx" class="logo">OnlyBoardGames</a>
                </li>
                 <li>
                    
                </li>
            </ul>
        </header>
    
        <div class="content">
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate></HeaderTemplate>
                <ItemTemplate>
                    <div class="card">
                        <div class="game-image">
                            <img src="Resources/images/<%#Eval("Name") %>.png" alt="<%#Eval("Name") %> image"/>
                        </div>
                        <div class="game-details">
                            <div class="game-title">
                                <h4><%#Eval("Name") %></h4>
                            </div>
                            <div class="game-brief">
                                <p><%#Eval("Description") %></p>
                            </div>
                            <div class="price-details">
                                <div class="price">
                                    <p><b>Price:</b> <%#Eval("Price") %></p>
                                </div>
                                <div class="stock">
                                    <p><b>Stock:</b> <%#Eval("Stock") %></p>
                                </div>
                            </div>
                            <div class="add-to-cart-button">
                                <asp:Button ID="AddToCart" runat="server" Text="Add To Cart" OnClick="AddToCart_Click" CommandArgument='<%#Bind("Name")%>' CommandName='<%#Eval("Name")%>' />
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
                <FooterTemplate></FooterTemplate>
            </asp:Repeater>
        </div>
    
        <footer class="footer">

            <p class="copyright"></p>
        </footer>
    </form>
    <script src="https://kit.fontawesome.com/a4ee3fc773.js" crossorigin="anonymous"></script>
</body>
</html>
