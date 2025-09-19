-- Engagement by Subscription Type

SELECT Subscription_Type,
       ROUND(AVG(Engagement_Score),2) AS avg_engagement,
       COUNT(user_id) AS user_count
FROM spotify
GROUP BY Subscription_Type;