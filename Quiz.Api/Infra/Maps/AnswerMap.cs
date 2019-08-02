using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Quiz.Api.Entities;

namespace Quiz.Api.Infra.Maps
{
    public class AnswerMap : IEntityTypeConfiguration<Answer>
    {
        public void Configure(EntityTypeBuilder<Answer> builder)
        {
            builder.ToTable("answer");

            builder.HasKey(a => new { a.QuestionId, a.Number });

            builder.Property(a => a.QuestionId)
                .HasColumnName("question_id");

            builder.Property(a => a.IsCorrect)
                .HasColumnName("is_correct");
        }
    }
}
