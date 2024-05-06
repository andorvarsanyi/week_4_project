USE whatever;

SELECT player_name, team_initials, SUM(Goals) AS total_goals
FROM players
GROUP BY player_name, team_initials
ORDER BY total_goals DESC;


SELECT team_initials, SUM(Goals) AS total_goals
FROM players
GROUP BY team_initials
ORDER BY total_goals DESC;

SELECT 
    team_initials, 
    SUM(Goals) AS total_goals,
    (SELECT COUNT(*) FROM matches WHERE home_team_initials = team_initials OR away_team_initials = team_initials) AS matches_played
FROM players
GROUP BY team_initials
ORDER BY total_goals DESC;
