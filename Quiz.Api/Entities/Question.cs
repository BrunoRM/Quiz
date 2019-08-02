using System.Collections.Generic;

namespace Quiz.Api.Entities
{
    public class Question
    {
        public int Id { get; private set; }
        public string Description { get; private set; }
        public int DificultLevel { get; private set; }
        public ICollection<Answer> Answers { get; private set; }
    }
}
