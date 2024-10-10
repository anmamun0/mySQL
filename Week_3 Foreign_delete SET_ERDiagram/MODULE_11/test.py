import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    passwd = "an1223"
)
print(mydb)

if(mydb.is_connected()):
    print("Connected to MySQL databse successfull")