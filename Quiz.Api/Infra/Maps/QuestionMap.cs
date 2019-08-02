using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Quiz.Api.Entities;

namespace Quiz.Api.Infra.Maps
{
    public class QuestionMap : IEntityTypeConfiguration<Question>
    {
        public void Configure(EntityTypeBuilder<Question> builder)
        {
            builder.ToTable("question");

            builder.HasKey(q => q.Id);

            builder.Property(q => q.DificultLevel)
                .HasColumnName("dificult_level");

            builder.HasMany(q => q.Answers);
        }
    }
}
