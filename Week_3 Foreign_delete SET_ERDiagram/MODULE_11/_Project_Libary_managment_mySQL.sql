CREATE DATABASE libarymanagment;
use libarymanagment;

CREATE TABLE STUDENT
(
	ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    DEPARTMENT VARCHAR(30),
    EMAIL VARCHAR(60),
    PHONE CHAR(11)
);

CREATE TABLE BOOK
(
	ID INT PRIMARY KEY,
    TITLE VARCHAR(50),
    AUTHOR VARCHAR(50),
    COPY INT,
    AVAILABLE INT
);

DROP TABLE BORROW;
CREATE TABLE BORROW
(
	BORROW_ID INT AUTO_INCREMENT PRIMARY KEY,
    STUDENT_ID INT,
    BOOK_ID INT,
    BORROW_DATE DATE,
    DUE_DATE DATE,
    RETURN_DATE DATE,
    STATUS VARCHAR(30) DEFAULT 'FALSE', -- FALSE, PANDING, TRUE
    
    Constraint student_to_borrow FOREIGN KEY(STUDENT_ID) REFERENCES student(ID),
    Constraint book_to_borrow FOREIGN KEY(BOOK_ID) REFERENCES BOOK(ID)
);





INSERT INTO STUDENT (ID, NAME, DEPARTMENT, EMAIL, PHONE) VALUES
(1, 'John Doe', 'Computer Science', 'john.doe@example.com', '01234567891'),
(2, 'Jane Smith', 'Mathematics', 'jane.smith@example.com', '01234567892'),
(3, 'Michael Brown', 'Physics', 'michael.brown@example.com', '01234567893'),
(4, 'Emily Davis', 'Chemistry', 'emily.davis@example.com', '01234567894'),
(5, 'Sarah Wilson', 'Biology', 'sarah.wilson@example.com', '01234567895'),
(6, 'Chris Evans', 'History', 'chris.evans@example.com', '01234567896'),
(7, 'Emma Thompson', 'Literature', 'emma.thompson@example.com', '01234567897'),
(8, 'Oliver Jackson', 'Philosophy', 'oliver.jackson@example.com', '01234567898'),
(9, 'Ava White', 'Economics', 'ava.white@example.com', '01234567899'),
(10, 'Liam Johnson', 'Engineering', 'liam.johnson@example.com', '01234567900'),
(11, 'Sophia Lee', 'Art', 'sophia.lee@example.com', '01234567901'),
(12, 'Noah Martinez', 'Political Science', 'noah.martinez@example.com', '01234567902'),
(13, 'AN Mamun', 'Engineering', 'almamun20044@gmail.com', '01782059949');





INSERT INTO BOOK (ID, TITLE, AUTHOR, COPY, AVAILABLE) VALUES
(1, 'Introduction to Algorithms', 'Thomas H. Cormen', 5, 5),
(2, 'The Great Gatsby', 'F. Scott Fitzgerald', 3, 2),
(3, '1984', 'George Orwell', 4, 3),
(4, 'To Kill a Mockingbird', 'Harper Lee', 2, 1),
(5, 'Pride and Prejudice', 'Jane Austen', 6, 6),
(6, 'The Catcher in the Rye', 'J.D. Salinger', 4, 4),
(7, 'The Hobbit', 'J.R.R. Tolkien', 3, 2),
(8, 'War and Peace', 'Leo Tolstoy', 5, 5),
(9, 'Crime and Punishment', 'Fyodor Dostoevsky', 2, 1),
(10, 'Moby Dick', 'Herman Melville', 7, 6),
(11, 'The Lord of the Rings', 'J.R.R. Tolkien', 4, 3),
(12, 'The Alchemist', 'Paulo Coelho', 5, 5),
(13, 'The Book Thief', 'Markus Zusak', 3, 3),
(14, 'Fahrenheit 451', 'Ray Bradbury', 6, 5),
(15, 'Brave New World', 'Aldous Huxley', 4, 3),
(16, 'The Kite Runner', 'Khaled Hosseini', 3, 2),
(17, 'The Da Vinci Code', 'Dan Brown', 5, 4),
(18, 'The Girl on the Train', 'Paula Hawkins', 4, 3),
(19, 'The Fault in Our Stars', 'John Green', 5, 4),
(20, 'Life of Pi', 'Yann Martel', 3, 2);

INSERT INTO BORROW (STUDENT_ID, BOOK_ID, BORROW_DATE, DUE_DATE, RETURN_DATE, STATUS) VALUES
(1, 1, '2024-10-01', '2024-10-08', NULL, 'PENDING'),
(2, 2, '2024-10-02', '2024-10-09', '2024-10-07', 'TRUE'),
(3, 3, '2024-10-03', '2024-10-10', NULL, 'PENDING'),
(1, 4, '2024-10-04', '2024-10-11', NULL, 'PENDING'),
(4, 5, '2024-10-05', '2024-10-12', '2024-10-10', 'TRUE'),
(5, 6, '2024-10-06', '2024-10-13', NULL, 'PENDING'),
(6, 7, '2024-10-07', '2024-10-14', '2024-10-10', 'TRUE'),
(7, 8, '2024-10-08', '2024-10-15', NULL, 'PENDING'),
(8, 9, '2024-10-09', '2024-10-16', '2024-10-11', 'TRUE'),
(9, 10, '2024-10-10', '2024-10-17', NULL, 'PENDING'),
(10, 11, '2024-10-11', '2024-10-18', '2024-10-12', 'TRUE');



SELECT *
FROM BORROW;

SELECT *
FROM BORROW
WHERE DUE_DATE - CURRENT_DATE() > 0 AND STATUS != 'TRUE';

SELECT S.ID, S.department, B.id, B.title
FROM BORROW AS BOR
JOIN STUDENT AS S
ON S.id = BOR.student_id
JOIN BOOK AS B
ON B.id = BOR.book_id
WHERE BOR.DUE_DATE - CURRENT_DATE() > 0 AND BOR.STATUS != 'TRUE';













 