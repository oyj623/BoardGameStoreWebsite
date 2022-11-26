using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BoardGameStoreWebsite
{
    public class BoardGame
    {
        public String Name { get; set; }
        public String Description { get; set; }
        public Double Price { get; set; }
        public int Stock { get; set; }
        
        public BoardGame()
        {
            this.Name = "Untitled";
            this.Description = "no description";
            this.Price = 0.0;
            this.Stock = 0;
        }

        public BoardGame(string name, string description, double price, int stock)
        {
            this.Name = name;
            this.Description = description;
            this.Price = price;
            this.Stock = stock;
        }

        public override String ToString()
        {
            return this.Name;
        }

   }
}