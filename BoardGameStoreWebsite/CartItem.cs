using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BoardGameStoreWebsite
{
    public class CartItem
    {
        public BoardGame Game { get; set; }
        public int Quantity { get; set; }
        public Double TotalPrice { get; set; } 


    }
}