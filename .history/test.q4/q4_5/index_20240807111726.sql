-- Tạo chỉ mục trên các cột thường xuyên được sử dụng trong các truy vấn và join
CREATE INDEX idx_order_date ON `ORDER` (Date_Order);
CREATE INDEX idx_order_client ON `ORDER` (Client_ID);
CREATE INDEX idx_order_delivery_id ON `ORDER_DELIVERY` (Order_ID);
CREATE INDEX idx_order_delivery_date ON `ORDER_DELIVERY` (Date_Delivery);
