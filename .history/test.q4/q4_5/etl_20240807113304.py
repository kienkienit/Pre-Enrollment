from sqlalchemy import create_engine
import pandas as pd

def extract_transform_load():
    # Kết nối với cơ sở dữ liệu
    engine = create_engine('postgresql://username:password@localhost:5432/mydatabase')

    # Trích xuất dữ liệu từ bảng ORDER
    order_query = """
    SELECT * FROM "ORDER" WHERE Date_Order >= CURRENT_DATE - INTERVAL '1 DAY';
    """
    order_data = pd.read_sql(order_query, engine)

    # Trích xuất dữ liệu từ bảng ORDER_DELIVERY
    order_delivery_query = """
    SELECT * FROM "ORDER_DELIVERY" WHERE Date_Delivery >= CURRENT_DATE - INTERVAL '1 DAY';
    """
    order_delivery_data = pd.read_sql(order_delivery_query, engine)

    # Join dữ liệu
    merged_data = pd.merge(order_data, order_delivery_data, on='Order_ID')

    # Biến đổi dữ liệu nếu cần (ví dụ, tính toán thêm các trường mới)
    transformed_data = merged_data[['Order_ID', 'Date_Order', 'Good_Type', 'Good_Amount', 'Client_ID', 'Date_Delivery', 'Delivery_Employee_Code']]
    
    # Tạo bảng tổng hợp (nếu chưa tồn tại)
    create_table_query = """
    CREATE TABLE IF NOT EXISTS daily_order_delivery (
        Order_ID INT,
        Date_Order DATE,
        Good_Type VARCHAR(50),
        Good_Amount DECIMAL(10, 2),
        Client_ID INT,
        Date_Delivery DATE,
        Delivery_Employee_Code VARCHAR(50)
    );
    """
    engine.execute(create_table_query)

    # Tải dữ liệu đã biến đổi vào bảng tổng hợp
    transformed_data.to_sql('daily_order_delivery', engine, if_exists='append', index=False)

if __name__ == "__main__":
    extract_transform_load()
