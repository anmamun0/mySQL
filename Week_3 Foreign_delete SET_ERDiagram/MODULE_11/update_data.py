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

    UPDATE python_table
    SET name = 'Hello AN Mamun'
    WHERE name LIKE 'AN%'
"""
mycursor.execute(query)
mydb.commit()
print('mySQL Query successfull...')