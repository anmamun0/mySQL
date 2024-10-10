import mysql.connector

db_name = "python_test_db"
mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    passwd = "an1223",
    database = db_name
) 
mycursor = mydb.cursor()

query ="""

    CREATE TABLE python_table
    (
        roll INT PRIMARY KEY,
        name VARCHAR(40)
    )
"""
mycursor.execute(query)

print('mySQL Query successfull...')