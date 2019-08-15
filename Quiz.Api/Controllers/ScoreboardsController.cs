using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Quiz.Api.Dtos;
using Quiz.Api.Entities;
using Quiz.Api.Infra;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace Quiz.Api.Controllers
{
    public class ScoreboardsController : Controller
    {
        private readonly AppDbContext _dbContext;

        public ScoreboardsController(AppDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        [Route("api/scoreboards/player/{playerId}"), HttpGet]
        public async Task<IActionResult> GetByPlayerIdAsync([FromRoute]int playerId)
        {
            if (playerId == 0)
                return BadRequest("Informe um id de jogador");

            var scoreboards = await _dbContext.Scoreboards
                .Include(s => s.Player)
                .Where(s => s.PlayerId == playerId)
                .OrderByDescending(s => s.Points)
                .ToListAsync();

            if (!scoreboards.Any())
                return NotFound();

            return Ok(scoreboards.Select(p => new
            {
                p.PlayerId,
                scoreboards = new
                {
                    p.Points,
                    p.GeneratedDate
                }
            }));
        }

        [Route("api/scoreboards"), HttpGet]
        public async Task<IActionResult> Get()
        {
            var scoreboards = await _dbContext.Scoreboards
                .Include(p => p.Player)
                .Where(p => p.Points != 0)
                .OrderByDescending(p => p.Points)
                .ToListAsync();

            if (!scoreboards.Any())
                return NotFound();

            return Ok(scoreboards.Select(p => new
            {
                p.PlayerId,
                p.Player.UserName,
                scoreboard = new
                {
                    p.Points,
                    p.GeneratedDate
                }
            }));
        }

        [Route("api/scoreboards"), HttpPost]
        public async Task<IActionResult> Add([FromBody]ScoreboardDto data)
        {
            if (data == null)
                return BadRequest("Não foi informado o parâmetro");

            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            Scoreboard scoreboard = new Scoreboard(data.PlayerId, data.Points);

            try
            {
                await _dbContext.AddAsync(scoreboard);
                await _dbContext.SaveChangesAsync();

                return Ok(scoreboard);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}