using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BoardGameStoreWebsite
{
    public partial class home : System.Web.UI.Page
    {
        protected List<BoardGame> gameList;
        protected List<BoardGame> shoppingCart;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                shoppingCart = new List<BoardGame>();
                gameList = new List<BoardGame>();
                gameList.Add(new BoardGame("Carcassonne", "", 50.0, 5));
                gameList.Add(new BoardGame("Blood Bound", "", 60.0, 3));
                gameList.Add(new BoardGame("Avalon", "Avalon pits the forces of Good and Evil in a battle to control the future of civilization. Arthur represents the future of Britain, a promise of prosperity and honor, yet hidden among his brave warriors are Mordred's unscrupulous minions. These forces of evil are few in number but have knowledge of each other and remain hidden from all but one of Arthur's servants. Merlin alone knows the agents of evil, but he must speak of this only in riddles. If his true identity is discovered, all will be lost.", 25.0, 12));
                gameList.Add(new BoardGame("Werewolf", "", 20.0, 15));

                // Set the DataSource of the Repeater. 
                Repeater1.DataSource = gameList;
                Repeater1.DataBind();
            }
            
        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;

            //shoppingCart.Add(gameList[0]);
            Response.Write(button.CommandName.ToString());
            Response.Write(button.CommandArgument.ToString());
        }
    }
}