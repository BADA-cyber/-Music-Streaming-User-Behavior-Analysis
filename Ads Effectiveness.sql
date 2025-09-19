-- Ads Effectiveness
SELECT Subscription_Type,
       ROUND(AVG(Ads_Listened_Per_week),2) AS avg_ads,
       ROUND(AVG(Listening_Time),2) AS avg_listening_time
FROM spotify
GROUP BY Subscription_Type;