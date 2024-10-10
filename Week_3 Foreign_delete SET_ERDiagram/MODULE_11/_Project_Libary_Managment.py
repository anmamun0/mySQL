import mysql.connector

db_name = "libarymanagment"
mydb = mysql.connector.connect(
    host = 'localhost',
    user = 'root',
    password = 'an1223',
    database = db_name
)
if mydb.is_connected():
    print("Connected Successfully in LIbary managment")

def WhoNotBack():
    mycursor = mydb.cursor()
    query = """
            SELECT S.ID, S.name, S.department, B.title
            FROM BORROW AS BOR
            JOIN STUDENT AS S
            ON S.id = BOR.student_id
            JOIN BOOK AS B
            ON B.id = BOR.book_id
            WHERE BOR.DUE_DATE - CURRENT_DATE() > 0 AND BOR.STATUS != 'TRUE';
    """
    mycursor.execute(query)
    result = mycursor.fetchall()

    if not result :
        print("Not Found Any Data")
    else:
        print("\nThey are not return Libary Books ->")
        for row in result:
            print(f"Student ID : {row[0]} | Student Name : {row[1]} \t | Dep : {row[2]}\t | Title: {row[3]}")

def i_want_to_back(student_id, book_id):
    check = False
    mycursor = mydb.cursor()
    
    query = """
            SELECT student_id,book_id
            FROM BORROW
            WHERE student_id = %s AND book_id = %s
    """
    mycursor.execute(query,(student_id,book_id))
    result = mycursor.fetchone()
 
    if result: 
        update_query = """ 
                UPDATE BORROW
                SET return_date =  CURRENT_DATE(), status = 'TRUE'
                WHERE student_id = %s AND book_id = %s;
        """
        mycursor.execute(update_query,(student_id,book_id)) 
        
        update_book_query = """
                UPDATE BOOK
                SET available = available+1
                WHERE id = %s; 
        """
        mycursor.execute(update_book_query,(book_id,))
        mydb.commit()
    
WhoNotBack()
i_want_to_back(9,10)