

   SELECT * FROM dbo.engagement_data 

-- 3. Query to clean and normalize the engagement_data table

SELECT 
    EngagementID,
    ContentID,
    CampaignID,
    ProductID,
    UPPER(REPLACE(ContentType,'Socialmedia','Social Media')) AS ContentType,
    LEFT(ViewsClicksCombined,CHARINDEX('-',ViewsClickscombined) - 1) AS ContentType,
    RIGHT(ViewsClicksCombined,LEN(ViewsclicksCombined) - CHARINDEX('-',ViewsclicksCombined)) AS Clicks,
    Likes,
    FORMAT(Convert(DATE,EngagementDate),'dd.MM.yyyy') AS EngagementDate

FROM 
   dbo.engagement_data
WHERE 
   ContentType != 'Newsletter';