using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace unx.Modells
{
    public class Manufacturer
    {
        
        public int id { get; set; }
        public string name { get; set; }
        public string place { get; set; }
        public DateTime established_at { get; set; }
    }
}
