import pandas as pd

def validate_data(df):
    if df.isnull().values.any():
        raise ValueError("Data contains null values, please clean the data before loading.")
    if not pd.api.types.is_datetime64_any_dtype(df['join_date']):
        raise ValueError("join_date column is not in datetime format.")
    if not pd.api.types.is_integer_dtype(df['id']):
        raise ValueError("id column is not in integer format.")
    if not pd.api.types.is_integer_dtype(df['salary']):
        raise ValueError("salary column is not in integer format.")
    # Add more validation rules as needed
