import mysql.connector

db_name = "dummydb"
mydb = mysql.connector.connect(
    host= 'localhost',
    user='root',
    password='an1223',
    database = db_name
)

if mydb.is_connected():
    print('Success fully connected')

mycursor = mydb.cursor()

query = """

    SELECT employee_id, first_name , last_name
    FROM EMPLOYEES;

"""
mycursor.execute(query)

result = mycursor.fetchall()

#  fetch column names

clm_names = [clm[0] for clm in mycursor.description]

# for clm in mycursor.description:
#     print(clm)

print(" | ".join(clm_names))
