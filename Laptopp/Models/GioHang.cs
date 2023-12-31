﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Laptopp.Models
{
    public class GioHang
    {
        DataClasses2DataContext db = new DataClasses2DataContext();

        public string GameID { get; set; }
        public string Game_Name { get; set; }
        public string sAnhBia { get; set; }
        public double Price { get; set; }
        public int Quantity { get; set; }
        public double dThanhTien
        {
            get { return Quantity * Price; }
        }

       
        public GioHang(string ml)
        {
            GameID = ml;

            Game s = db.Games.Single(n => n.Game_ID == GameID);
            Game_Name = s.Game_Name;
            sAnhBia = s.AnhBia;
            Price = double.Parse(s.Price.ToString());
            Quantity = 1;
        }
    }
}