using System;
using Microsoft.EntityFrameworkCore;

namespace unx.Modells
{
    public class DetailedInfo
    {
        public int id { get; set; }
        public int horse_power { get; set; }
        public int engine_cc { get; set; }
        public string design { get; set; }
        public string color { get; set; }
        public DateTime manufactured { get; set; }
        public int modell { get; set; }
    }
}
