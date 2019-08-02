namespace Quiz.Api.Entities
{
    public class Answer
    {
        public int QuestionId { get; private set; }
        public int Number { get; private set; }
        public string Description { get; private set; }
        public bool IsCorrect { get; private set; }
    }
}
