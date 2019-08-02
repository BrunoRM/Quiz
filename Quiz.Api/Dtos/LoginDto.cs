using System.ComponentModel.DataAnnotations;

namespace Quiz.Api.Dtos
{
    public class LoginDto
    {
        [Required(ErrorMessage = "Informe o Usuário")]
        public string UserName { get; set; }

        [Required(ErrorMessage = "Informe a Senha")]
        public string Password { get; set; }
    }
}
