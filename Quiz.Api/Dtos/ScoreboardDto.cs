using System.ComponentModel.DataAnnotations;

namespace Quiz.Api.Dtos
{
    public class ScoreboardDto
    {
        [Required(ErrorMessage = "Informe o id do Jogador")]
        public int PlayerId { get; set; }

        [Required(ErrorMessage = "Informe a pontuação do Jogador")]
        public double Points { get; set; }
    }
}
