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
                gameList.Add(new BoardGame("Carcassonne", "Carcassonne is a tile-placement game in which the players draw and place a tile with a piece of southern French landscape on it. The tile might feature a city, a road, a cloister, grassland or some combination thereof, and it must be placed adjacent to tiles that have already been played, in such a way that cities are connected to cities, roads to roads, etcetera. Having placed a tile, the player can then decide to place one of their meeples on one of the areas on it: on the city as a knight, on the road as a robber, on a cloister as a monk, or on the grass as a farmer. When that area is complete, that meeple scores points for its owner.", 50.0, 5));
                gameList.Add(new BoardGame("Blood Bound", "Blood Bound, a deduction game played in 15-30 minutes, players assume the roles of members of two clans – the brutal, animalistic warriors of the Clan of the Beast and the graceful, deadly members of the Clan of the Rose – and (with an odd number of players) the human inquisition. Disguised by a secret identity, they try to kidnap the Elder of the opposing clan or give their lives for the benefit of their own Elder. Malicious attacks, aimed indiscretions, and assistance from others will slowly uncover the truth: Who fights for whom? And who is the Elder?", 60.0, 3));
                gameList.Add(new BoardGame("Avalon", "Avalon pits the forces of Good and Evil in a battle to control the future of civilization. Arthur represents the future of Britain, a promise of prosperity and honor, yet hidden among his brave warriors are Mordred's unscrupulous minions. These forces of evil are few in number but have knowledge of each other and remain hidden from all but one of Arthur's servants. Merlin alone knows the agents of evil, but he must speak of this only in riddles. If his true identity is discovered, all will be lost.", 25.0, 12));
                gameList.Add(new BoardGame("Werewolf", "Werewolves of Miller's Hollow is a game that takes place in a small village which is haunted by werewolves. Each player is secretly assigned a role - Werewolf, Ordinary Townsfolk, or special character such as The Sheriff, The Hunter, the Witch, the Little Girl, The Fortune Teller and so on... There is also a Moderator player who controls the flow of the game. The game alternates between night and day phases. At night, the Werewolves secretly choose a Villager to kill. During the day, the Villager who was killed is revealed and is out of the game. The remaining Villagers (normal and special villagers alike) then deliberate and vote on a player they suspect is a Werewolf, helped (or hindered) by the clues the special characters add to the general deliberation. The chosen player is 'lynched', reveals his/her role and is out of the game. Werewolf is a social game that requires no equipment to play, and can accommodate almost any large group of players", 20.0, 15));
                gameList.Add(new BoardGame("Citadels", "Citadels, players take on new roles each round to represent characters they hire in order to help them acquire gold and erect buildings. The game ends at the close of a round in which a player erects their eighth building. Players then tally their points, and the player with the highest score wins.", 50.0, 7));

                // Set the DataSource of the Repeater. 
                Repeater1.DataSource = gameList;
                Repeater1.DataBind();
            } 
            else
            {
                shoppingCart = (List<BoardGame>)Session["cart"];
            }
            
        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            if (Session["cart"] != null)
            {
                shoppingCart = (List<BoardGame>)Session["cart"];
            } 
            else
            {
                shoppingCart = new List<BoardGame>();
            }
            gameList = new List<BoardGame>();
            gameList.Add(new BoardGame("Carcassonne", "Carcassonne is a tile-placement game in which the players draw and place a tile with a piece of southern French landscape on it. The tile might feature a city, a road, a cloister, grassland or some combination thereof, and it must be placed adjacent to tiles that have already been played, in such a way that cities are connected to cities, roads to roads, etcetera. Having placed a tile, the player can then decide to place one of their meeples on one of the areas on it: on the city as a knight, on the road as a robber, on a cloister as a monk, or on the grass as a farmer. When that area is complete, that meeple scores points for its owner.", 50.0, 5));
            gameList.Add(new BoardGame("Blood Bound", "Blood Bound, a deduction game played in 15-30 minutes, players assume the roles of members of two clans – the brutal, animalistic warriors of the Clan of the Beast and the graceful, deadly members of the Clan of the Rose – and (with an odd number of players) the human inquisition. Disguised by a secret identity, they try to kidnap the Elder of the opposing clan or give their lives for the benefit of their own Elder. Malicious attacks, aimed indiscretions, and assistance from others will slowly uncover the truth: Who fights for whom? And who is the Elder?", 60.0, 3));
            gameList.Add(new BoardGame("Avalon", "Avalon pits the forces of Good and Evil in a battle to control the future of civilization. Arthur represents the future of Britain, a promise of prosperity and honor, yet hidden among his brave warriors are Mordred's unscrupulous minions. These forces of evil are few in number but have knowledge of each other and remain hidden from all but one of Arthur's servants. Merlin alone knows the agents of evil, but he must speak of this only in riddles. If his true identity is discovered, all will be lost.", 25.0, 12));
            gameList.Add(new BoardGame("Werewolf", "Werewolves of Miller's Hollow is a game that takes place in a small village which is haunted by werewolves. Each player is secretly assigned a role - Werewolf, Ordinary Townsfolk, or special character such as The Sheriff, The Hunter, the Witch, the Little Girl, The Fortune Teller and so on... There is also a Moderator player who controls the flow of the game. The game alternates between night and day phases. At night, the Werewolves secretly choose a Villager to kill. During the day, the Villager who was killed is revealed and is out of the game. The remaining Villagers (normal and special villagers alike) then deliberate and vote on a player they suspect is a Werewolf, helped (or hindered) by the clues the special characters add to the general deliberation. The chosen player is 'lynched', reveals his/her role and is out of the game. Werewolf is a social game that requires no equipment to play, and can accommodate almost any large group of players", 20.0, 15));
            gameList.Add(new BoardGame("Citadels", "Citadels, players take on new roles each round to represent characters they hire in order to help them acquire gold and erect buildings. The game ends at the close of a round in which a player erects their eighth building. Players then tally their points, and the player with the highest score wins.", 50.0, 7));

            Button button = (Button)sender;
            foreach (BoardGame game in gameList)
            {
                if (game.Name == button.CommandArgument.ToString())
                {
                    shoppingCart.Add(game);
                }
            }
            Session["cart"] = shoppingCart;
            Label addCartSuccessLabel;
            
            foreach (RepeaterItem item in Repeater1.Items)
            {
                addCartSuccessLabel = item.FindControl("AddCartSuccessLabel") as Label;

                // change to only the added item
                if (gameList[item.ItemIndex].Name == button.CommandArgument.ToString())
                {
                    addCartSuccessLabel.Attributes.Add("style", "display: flex;");
                    button.Attributes.Add("style", "display: none");
                }
            }


        }
    }
}