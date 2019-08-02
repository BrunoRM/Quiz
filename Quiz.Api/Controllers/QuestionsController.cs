using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Quiz.Api.Infra;
using System.Linq;
using System.Threading.Tasks;

namespace Quiz.Api.Controllers
{
    public class QuestionsController : Controller
    {
        private readonly AppDbContext _dbContext;

        public QuestionsController(AppDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        [Route("api/questions/level/{level}"), HttpGet]
        public async Task<IActionResult> GetPerguntas([FromRoute]int level)
        {
            if (level != 1 && level != 2 && level != 3)
                return BadRequest("Nível deve ser entre 1 e 3");

            var questions = await _dbContext.Questions
                .Include(q => q.Answers)
                .Where(q => q.DificultLevel == level).ToListAsync();

            return Ok(questions.Select(p => new
            {
                question = p.Description,
                p.DificultLevel,
                answers = p.Answers.Select(r => new
                {
                    r.Description,
                    r.IsCorrect
                })
            }));
        }
    }
}