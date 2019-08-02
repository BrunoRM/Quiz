using System.ComponentModel.DataAnnotations;

namespace Quiz.Api.Dtos
{
    public class PlayerDto
    {
        [Required(ErrorMessage = "Informe o nome")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Informe o usuario")]
        public string UserName { get; set; }

        [Required(ErrorMessage = "Informe a senha")]
        public string Password { get; set; }
    }
}
