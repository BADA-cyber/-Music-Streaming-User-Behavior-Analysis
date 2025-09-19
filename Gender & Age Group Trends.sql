-- Gender & Age Group Trends
SELECT Age_Group, Gender, 
       ROUND(AVG(Listening_Time),2) AS avg_listening_time,
       ROUND(AVG(Skip_Rate),2) AS avg_skip_rate
FROM spotify
GROUP BY Age_Group, Gender
ORDER BY Age_Group;