using System.Collections.Generic;

namespace Quiz.Api.Entities
{
    public class Player
    {
        public Player(string name, string userName, string password)
        {
            Name = name;
            UserName = userName;
            Password = password;
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public ICollection<Scoreboard> Scoreboards { get; set; }
    }
}
