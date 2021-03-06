﻿using System;

namespace Quiz.Api.Entities
{
    public class Scoreboard
    {
        public Scoreboard(int playerId, int points)
        {
            PlayerId = playerId;
            Points = points;
            GeneratedDate = DateTime.Now;
        }

        public int Id { get; private set; }
        public int PlayerId { get; private set; }
        public int Points { get; private set; }
        public DateTime GeneratedDate { get; private set; }
        public Player Player { get; set; }
    }
}
