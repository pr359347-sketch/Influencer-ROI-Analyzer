use influencer_roi_db;

-- 1. Total Influencers
SELECT COUNT(*) AS total_influencers
FROM influencer_data;


-- 2. Average ROI
SELECT ROUND(AVG(ROI),2) AS avg_roi
FROM influencer_data;

-- 3. Top 10 Influencers by ROI
SELECT INFLUENCER_NAME, ROI
FROM influencer_data
ORDER BY ROI DESC
LIMIT 10;

-- 4. Platform-wise Average ROI
SELECT PLATFORM, ROUND(AVG(ROI),2) AS avg_roi
FROM influencer_data
GROUP BY PLATFORM
ORDER BY avg_roi DESC;

-- 5. Top 10 by Engagement Rate
SELECT INFLUENCER_NAME, ENGAGEMENT_RATE
FROM influencer_data
ORDER BY ENGAGEMENT_RATE DESC
LIMIT 10;

-- 6. High ROI Influencers (>2)
SELECT INFLUENCER_NAME, ROI
FROM influencer_data
WHERE ROI > 2;

-- 7. Low ROI Influencers (<1)
SELECT INFLUENCER_NAME, ROI
FROM influencer_data
WHERE ROI < 1;

-- 8. Followers vs ROI (sample view)
SELECT FOLLOWERS, ROI
FROM influencer_data;

-- 9. Campaign Type Performance
SELECT CAMPAIGN_TYPE, ROUND(AVG(ROI),2) AS avg_roi
FROM influencer_data
GROUP BY CAMPAIGN_TYPE
ORDER BY avg_roi DESC;

-- 10. Platform-wise Performance
SELECT 
    platform,
    COUNT(*) AS total_influencers,
    AVG(conversion_rate) AS avg_conversion_rate,
    AVG(influencer_score) AS avg_score
FROM influencer_data
GROUP BY platform
ORDER BY avg_score DESC;
