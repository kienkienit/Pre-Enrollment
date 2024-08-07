SELECT 
    SUM(o.Good_Amount) AS Total_Good_Amount,
    COUNT(o.Order_ID) AS Delivered_Order_Count
FROM 
    `ORDER` o
JOIN 
    `ORDER_DELIVERY` od ON o.Order_ID = od.Order_ID
WHERE 
    DATE_FORMAT(od.Date_Delivery, '%Y-%m') = '2019-09';
