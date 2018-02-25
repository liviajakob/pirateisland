CREATE VIEW PIRATE_TOP_TEN
AS
SELECT * 
FROM (SELECT NAME,
SCORE,
DENSE_RANK () OVER (PARTITION BY PLAYER_TYPE ORDER BY SCORE DESC) AS LEADERBOARD
FROM PIRATE_SCORE)
WHERE ROWNUM <= 10;