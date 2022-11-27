using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BoardGameStoreWebsite
{
    public class Order
    {
        public String Name { get; set; }
        public String Address { get; set; }
        public String Email { get; set; }
        public String Phone { get; set; }
        public List<CartItem> Items { get; set; }
        public Double TotalPrice { get; set; }
        public String OutputItemsDetails
        {
            get { return getItems(); }
        }
        private String getItems()
        {
            String output = "";
            for(int i = 0; i < Items.Count; i++)
            {
                output += "Item " + (i + 1).ToString() +
                    ": <div class='recipient-items-game'>" +
                        Items[i].Game.Name +
                    "</div> * " +
                    "<div class='recipient-items-quantity'>" +
                        Items[i].Quantity +
                    "</div><br /> ";
            }
            return output;
        }
    }
   
}