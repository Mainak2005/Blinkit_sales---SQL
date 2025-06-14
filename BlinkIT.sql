SELECT * FROM BlinkIT_data
SELECT Outlet_Location_Type , Item_Fat_Content, 
CAST(SUM(Total_Sales) AS DECIMAL (10,2)) AS  Total_Sales,
CAST(AVG(Total_Sales) AS DECIMAL(10,2)) AS Avg_Sales,
COUNT(*) AS No_Of_Items,
CAST (AVG(Rating) AS DECIMAL (10,2)) AS Avg_Rating
FROM BlinkIT_data
WHERE Outlet_Establishment_Year = 2020
GROUP BY Outlet_Location_Type, Item_Fat_Content 
ORDER BY Total_Sales ASC