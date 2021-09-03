using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using unx.Database;
using unx.Modells;

namespace unx.Controllers
{
    [Route("api/cars")]
    [ApiController]
    public class CarTableApi : Controller
    {
        private readonly CarContext _context;

        public CarTableApi(CarContext context)
        {
            _context = context;
        }

        [HttpGet]
        public IActionResult Get()
        {
            return  Ok(_context.carTables.ToList());
        }

        [HttpGet("{filter}")]
        public IActionResult GetByFilter(string filter)
        {
            var res = _context.carTables.ToList();
            return Ok(new { res, filter});
        }
    }
}
