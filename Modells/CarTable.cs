using Microsoft.EntityFrameworkCore;
using System;

namespace unx.Modells
{
    [Keyless]
    public class detailed_info_view
    {
        public int horse_power { get; set; }
        public int engine_cc { get; set; }
        public string design { get; set; }
        public string color { get; set; }
        public DateTime manufactured { get; set; }
        public string modell { get; set; }
        public string manufacturer { get; set; }
        public string place { get; set; }
        public DateTime established_at { get; set; }
    }
}
