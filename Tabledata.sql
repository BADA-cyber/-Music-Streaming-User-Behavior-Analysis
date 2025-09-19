CREATE DATABASE music_streaming;

USE music_streaming;

CREATE TABLE user_behavior (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Gender ENUM('Male', 'Female', 'Other'),
    Age INT,
    Age_Group VARCHAR(20),
    Country VARCHAR(50),
    Subscription_Type VARCHAR(20),
    Listening_Time DECIMAL(10,2),
    Songs_Played_Per_Day INT,
    Skip_Rate DECIMAL(5,2),
    Device_Type VARCHAR(50),
    Ads_Listened_Per_Week INT,
    Engagement_Score DECIMAL(5,2),
    Cluster INT
);

LOAD DATA INFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\Spotify_streaming_cleanedD.csv'
INTO TABLE user_behavior
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id, Gender, Age, Country, Subscription_Type, Listening_Time,
 Songs_Played_Per_Day, Skip_Rate, Device_Type,
 Ads_Listened_Per_Week, Engagement_Score, Cluster);

USE music_streaming;
SELECT * FROM spotify;
