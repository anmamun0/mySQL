import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    passwd = "an1223"
)
print(mydb)

db_name = "python_test_db"

# A cursor is used to execute SQL queries:
mycursor = mydb.cursor()

query = "CREATE DATABASE "+ db_name

mycursor.execute(query)