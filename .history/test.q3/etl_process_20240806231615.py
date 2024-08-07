import pandas as pd
from sqlalchemy import create_engine
from data_validation import validate_data
from data_transformation import transform_data
from database_config import conn_str

json_path = "employees.json"
df = pd.read_json(json_path)

# Step 2: Transform - Chuyển đổi dữ liệu
df = transform_data(df)

# Step 3: Load - Tải dữ liệu vào bảng 'employees' trong cơ sở dữ liệu SQL
# Create an engine object
engine = create_engine(conn_str)

try:
    # Validate the data
    validate_data(df)

    # Load the data into the SQL table
    df.to_sql('employees', con=engine, if_exists='append', index=False)
    print("Data loaded successfully into the 'employees' table.")
except ValueError as ve:
    print(f"Data validation error: {ve}")
except Exception as e:
    print(f"An unexpected error occurred: {e}")
