using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Quiz.Api.Dtos;
using Quiz.Api.Entities;
using Quiz.Api.Helpers;
using Quiz.Api.Infra;
using System.Threading.Tasks;

namespace Quiz.Api.Controllers
{
    public class PlayersController : Controller
    {
        private readonly AppDbContext _dbContext;

        public PlayersController(AppDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        [Route("api/players"), HttpPost]
        public async Task<IActionResult> AddAsync([FromBody]PlayerDto data)
        {
            if (data == null)
                return BadRequest("Parâmetro não informado");

            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            string passwordHash = new MD5Encrypt().GetHash(data.Password);
            Player player = new Player(data.Name, data.UserName, passwordHash);

            await _dbContext.Players.AddAsync(player);
            await _dbContext.SaveChangesAsync();

            return Ok(new
            {
                player.Id,
                player.Name,
                player.UserName
            });
        }

        [Route("api/login"), HttpPost]
        public async Task<IActionResult> LoginAsync([FromBody]LoginDto data)
        {
            if (data == null)
                return BadRequest("Parâmetro não informado");

            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            string passwordHash = new MD5Encrypt().GetHash(data.Password);
            Player player = await _dbContext.Players.FirstOrDefaultAsync(p => p.UserName == data.UserName && p.Password == passwordHash);

            if (player is null)
                return NotFound();

            return Ok(new
            {
                player.Id,
                player.Name,
                player.UserName
            });
        }
    }
}