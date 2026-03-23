create database influencer_roi_db;
use influencer_roi_db;
create table influencer_data(
    influencer_name VARCHAR(100),
    platform VARCHAR(50),
    followers INT,
    likes INT,
    comments INT,
    shares INT,
    impressions INT,
    clicks INT,
    conversions FLOAT,
    campaign_cost FLOAT,
    revenue FLOAT,
    content_type VARCHAR(55),
    campaign_date DATE,
    engagement_rate INT
    roi INT,
    conversion_rate FLOAT,
    influencer_score INT,
);
 load data infile "C:\Users\hp\Downloads\3_final_dataset_cleaned.csv"
 into table influencer_data
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
