WITH client_orders AS (
    SELECT 
        Client_ID, 
        Order_ID, 
        Date_Order, 
        Good_Type, 
        Good_Amount,
        ROW_NUMBER() OVER (PARTITION BY Client_ID ORDER BY Date_Order) AS Order_Rank,
        ROW_NUMBER() OVER (PARTITION BY Client_ID ORDER BY Date_Order DESC) AS Order_Rank_Desc
    FROM 
        `ORDER`
    WHERE 
        Client_ID IN (
            SELECT 
                Client_ID
            FROM 
                `ORDER`
            WHERE 
                YEAR(Date_Order) = YEAR(CURDATE())
            GROUP BY 
                Client_ID
            HAVING 
                COUNT(Order_ID) > 10
        )
)

SELECT 
    Client_ID,
    Order_ID,
    Date_Order,
    Good_Type,
    Good_Amount,
    CASE 
        WHEN Order_Rank = 1 THEN 'First_Order'
        WHEN Order_Rank_Desc = 2 THEN 'Second_Last_Order'
    END AS Order_Type
FROM 
    client_orders
WHERE 
    Order_Rank = 1 OR Order_Rank_Desc = 2
ORDER BY 
    Client_ID, Order_Type;
