using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BoardGameStoreWebsite
{
    
    public partial class shopping_cart : System.Web.UI.Page
    {
        protected List<CartItem> shoppingCart = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            shoppingCart = new List<CartItem>();
            if (!IsPostBack)
            {
                List<BoardGame> boardGames = (List<BoardGame>) Session["cart"];
                if (boardGames != null)
                {
                    foreach (BoardGame game in boardGames)
                    {
                        shoppingCart.Add(new CartItem()
                        {
                            Game = game,
                            Quantity = 1,
                            TotalPrice = game.Price
                        });
                    }
                }
                Repeater1.DataSource = shoppingCart;
                Repeater1.DataBind();
            }
        }
        protected void getCheckedRow(object sender, EventArgs e)
        {
            string value = "";
            foreach (RepeaterItem item in Repeater1.Items)
            {
                CheckBox chk = item.FindControl("gameCheckBox") as CheckBox;
                if (chk.Checked)
                {
                    value += chk.Text + ",";

                }
            }
        }

        
    }
}