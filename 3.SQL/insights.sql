-- =====================================
-- INFLUENCER MARKETING ANALYSIS PROJECT
-- =====================================

-- 1. Basic Analysis
-- 2. Platform Analysis
-- 3. Influencer Segmentation
-- 4. ROI & Efficiency
-- 5. Funnel Analysis
-- 6 : Outlier Detection
-- 7: Content Performance
-- 8: Time Analysis
-- =====================================
-- Section 1: Basic Analysis
-- Total campaigns
SELECT COUNT(*) FROM influencer;

-- Total revenue
SELECT SUM(revenue) FROM influencer;

-- Average engagement rate
SELECT AVG(engagement_rate) FROM influencer;

-- Section 2: Platform Analysis

-- Platform comparison
SELECT 
    platform,
    AVG(engagement_rate) AS avg_engagement,
    AVG(roi) AS avg_roi
FROM influencer
GROUP BY platform
ORDER BY avg_roi DESC;

-- Section 3: Influencer Segmentation

-- Micro vs Macro influencers
SELECT 
    CASE 
        WHEN followers < 50000 THEN 'Micro'
        WHEN followers BETWEEN 50000 AND 500000 THEN 'Mid'
        ELSE 'Macro'
    END AS influencer_type,
    AVG(engagement_rate) AS avg_engagement
FROM influencer
GROUP BY influencer_type;

-- Section 4: ROI & Efficiency

-- Top influencers by ROI
SELECT 
    influencer_name,
    (revenue - campaign_cost) / campaign_cost AS roi
FROM influencer
ORDER BY roi DESC
LIMIT 10;
-- Section 5: Funnel Analysis

SELECT 
    SUM(impressions) AS impressions,
    SUM(clicks) AS clicks,
    SUM(conversions) AS conversions,
    SUM(clicks)/SUM(impressions) AS ctr,
    SUM(conversions)/SUM(clicks) AS conversion_rate
FROM influencer;

-- Section 6 : Outlier Detection

SELECT 
    influencer_name,
    followers,
    engagement_rate
FROM influencer
WHERE followers > 100000 
AND engagement_rate < 0.01;

-- Section 7: Content Performance

SELECT 
    content_type,
    AVG(engagement_rate) AS avg_engagement,
    AVG(roi) AS avg_roi
FROM influencer
GROUP BY content_type;

-- Section 8: Time Analysis

SELECT 
    MONTH(campaign_date) AS month,
    AVG(revenue) AS avg_revenue
FROM influencer
GROUP BY month
ORDER BY month;


















