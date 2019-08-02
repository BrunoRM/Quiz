using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Quiz.Api.Entities;

namespace Quiz.Api.Infra.Maps
{
    public class ScoreboardMap : IEntityTypeConfiguration<Scoreboard>
    {
        public void Configure(EntityTypeBuilder<Scoreboard> builder)
        {
            builder.ToTable("scoreboard");

            builder.HasKey(sb => sb.Id);

            builder.Property(sb => sb.PlayerId)
                .HasColumnName("player_id");

            builder.Property(sb => sb.GeneratedDate)
                .HasColumnName("generated_date");

            builder.HasOne(sb => sb.Player);
        }
    }
}
