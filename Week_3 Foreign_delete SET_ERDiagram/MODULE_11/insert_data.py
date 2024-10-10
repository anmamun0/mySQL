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

    
    INSERT INTO python_table(roll,name)
    VALUES(101,'AN Mamun')

"""
mycursor.execute(query)
mydb.commit()
print('mySQL Query successfull...')