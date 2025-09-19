-- High vs. Low Engagement Users
SELECT user_id, 
       CASE 
          WHEN Songs_Played_Per_Day > 20 AND Skip_Rate < 30 THEN 'High Engagement'
          ELSE 'Low Engagement'
       END AS Engagement_Level
FROM spotify;