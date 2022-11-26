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
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate></HeaderTemplate>
            <ItemTemplate>
                <h1><%#Eval("Game.Name") %></h1>
                <div class="cart-view">
                    <div class="check-box">
                        <asp:CheckBox runat="server" ID="gameCheckBox"></asp:CheckBox>
                    </div>
                    <div class="game-image">
                        <asp:Image ID="Image1" runat="server" ImageUrl='~/Resources/images/<%#Eval("Game.Name") %>.png' />
                    </div>
                    <div class="quantity">

                    </div>
                    <div class="price">

                    </div>
                </div>
            </ItemTemplate>
            <FooterTemplate></FooterTemplate>
        </asp:Repeater>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Board Game Points</asp:ListItem>
            <asp:ListItem>Online Transfer</asp:ListItem>
            <asp:ListItem>Credit/Debit Card</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="Button1" runat="server" Text="Button" />
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
</body>
</html>
