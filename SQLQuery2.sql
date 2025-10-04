
  SELECT * FROM dbo.customer_reviews

-- 2. Query to clean whitespace issues in the ReviewText column

SELECT 
    ReviewID,
    CustomerID,
    productID,
    ReviewDate,
    Rating,
    REPLACE(ReviewText,'  ',' ') AS ReviewText
FROM 
   dbo.customer_reviews;
