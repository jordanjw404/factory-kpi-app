import mysql.connector
from mysql.connector import Error

def create_connection():
    """Connect to MySQL database"""
    try:
        return mysql.connector.connect(
            host="localhost",
            user="root",
            password="MySQL2024Developement777",
            database="factory_kpi"
        )
    except Error as e:
        print(f"Database connection failed: {e}")
        return None