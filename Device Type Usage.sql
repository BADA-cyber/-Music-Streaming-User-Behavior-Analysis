-- Device Type Usage
SELECT Device_Type,
       COUNT(user_id) AS user_count,
       ROUND(AVG(Listening_Time),2) AS avg_listening_time
FROM spotify
GROUP BY Device_Type
ORDER BY user_count DESC;