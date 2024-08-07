from airflow import DAG
from airflow.operators
from airflow.operators.python_operator import PythonOperator
from datetime import datetime, timedelta
import etl

default_args = {
    'owner': 'airflow',
    'start_date': datetime(2024, 8, 7),
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

dag = DAG('daily_etl', default_args=default_args, schedule_interval='@daily')

etl_task = PythonOperator(
    task_id='extract_transform_load',
    python_callable=etl.extract_transform_load,
    dag=dag
)

etl_task
