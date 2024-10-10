import mysql.connector

db_name = "dummydb"
mydb = mysql.connector.connect(
    host = 'localhost',
    user = 'root',
    password='an1223',
    database = db_name
)

if mydb.is_connected():
    print("Successfully dummydb connected")


mycursor = mydb.cursor()
query = """
    
    SELECT SUM(salary)
    FROM employees
"""
try:
    mycursor.execute(query)
except mysql.connector.Error as wrong:
    print(f"Hay! Error :{wrong}")

result = mycursor.fetchall()
for row in result:
    print(row) 

