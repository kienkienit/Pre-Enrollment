import pandas as pd

def transform_data(df):
    df['join_date'] = pd.to_datetime(df['join_date'])
    return df
