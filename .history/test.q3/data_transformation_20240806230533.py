import pandas as pd

def transform_data(df):
    # Convert join_date to datetime format
    df['join_date'] = pd.to_datetime(df['join_date'])
    # Remove any unnecessary fields if needed
    return df
