SELECT 
    Client_ID,
    COUNT(Order_ID) AS Order_Count
FROM 
    `ORDER`
WHERE 
    YEAR(Date_Order) = YEAR(CURDATE())
GROUP BY 
    Client_ID
HAVING 
    COUNT(Order_ID) > 10;
