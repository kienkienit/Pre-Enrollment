SELECT 
    DATE_FORMAT(Date_Order, '%Y-%m') AS Order_Month,
    COUNT(DISTINCT Client_ID) AS Unique_Client_Count,
    COUNT(Order_ID) AS Order_Count
FROM 
    `ORDER`
GROUP BY 
    DATE_FORMAT(Date_Order, '%Y-%m')
ORDER BY 
    Order_Month;
