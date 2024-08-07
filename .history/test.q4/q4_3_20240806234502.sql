WITH clients_with_many_orders AS (
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
),

client_orders_ranked AS (
    SELECT 
        o.Client_ID,
        o.Order_ID,
        o.Date_Order,
        o.Good_Type,
        o.Good_Amount,
        ROW_NUMBER() OVER (PARTITION BY o.Client_ID ORDER BY o.Date_Order) AS order_rank_asc,
        ROW_NUMBER() OVER (PARTITION BY o.Client_ID ORDER BY o.Date_Order DESC) AS order_rank_desc
    FROM 
        `ORDER` o
    WHERE 
        o.Client_ID IN (SELECT Client_ID FROM clients_with_many_orders)
)

-- Chọn thông tin đơn hàng đầu tiên và đơn hàng thứ hai gần nhất
SELECT 
    Client_ID,
    Order_ID,
    Date_Order,
    Good_Type,
    Good_Amount,
    CASE 
        WHEN order_rank_asc = 1 THEN 'First_Order'
        WHEN order_rank_desc = 2 THEN 'Second_Last_Order'
    END AS Order_Type
FROM 
    client_orders_ranked
WHERE 
    order_rank_asc = 1 OR order_rank_desc = 2
ORDER BY 
    Client_ID, Order_Type;
