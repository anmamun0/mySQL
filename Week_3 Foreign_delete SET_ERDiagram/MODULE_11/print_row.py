import mysql.connector

db_name = 'dummydb'
mydb = mysql.connector.connect(
    host = 'localhost',
    user = 'root',
    password = 'an1223',
    database = db_name
)
 
mycursor = mydb.cursor()
query = """
    SELECT first_name , last_name
    FROM employees;

"""
mycursor.execute(query)
result = mycursor.fetchall()

for row in result:
    print(row)
    print(f"{row[0]} {row[1]}")


