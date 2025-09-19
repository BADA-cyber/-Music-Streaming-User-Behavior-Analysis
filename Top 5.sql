-- Top 5 Countries by Avg. Listening Time

SELECT Country, 
       ROUND(AVG(Listening_Time),2) AS avg_listening_time
FROM spotify
GROUP BY Country
ORDER BY avg_listening_time DESC
LIMIT 5;

