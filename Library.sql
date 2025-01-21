CREATE DATABASE Library

use Library

CREATE TABLE Members (
    Member_ID INT PRIMARY KEY,
    Member_Name VARCHAR(50),
    Member_Phone VARCHAR(15)
);

CREATE TABLE Authors (
    Author_ID INT PRIMARY KEY,
    Author_Name VARCHAR(50),
    Author_Nationality VARCHAR(50)
);

CREATE TABLE Books (
    Book_ID VARCHAR(10) PRIMARY KEY,
    Book_Title VARCHAR(100),
    Author_ID INT,
    FOREIGN KEY (Author_ID) REFERENCES Authors(Author_ID)
);

CREATE TABLE Borrow_Transactions (
    Borrow_ID INT PRIMARY KEY,
    Member_ID INT,
    Book_ID VARCHAR(10),
    Borrow_Date DATE,
    FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);

CREATE TABLE Return_Details (
    Borrow_ID INT PRIMARY KEY,
    Return_Date DATE,
    Fine_Amount DECIMAL(5, 2),
    FOREIGN KEY (Borrow_ID) REFERENCES Borrow_Transactions(Borrow_ID)
);


INSERT INTO Members (Member_ID, Member_Name, Member_Phone) VALUES
(201, 'Ali Hassan', '9876543210'),
(202, 'Fatima Noor', '9871234560');

INSERT INTO Authors (Author_ID, Author_Name, Author_Nationality) VALUES
(1, 'Ramez Elmasri', 'USA'),
(2, 'Joel Grus', 'USA'),
(3, 'Mark Lutz', 'UK');'

INSERT INTO Books (Book_ID, Book_Title, Author_ID) VALUES
('B101', 'Database Systems', 1),
('B205', 'Data Science', 2),
('B305', 'Python Basics', 3);


INSERT INTO Borrow_Transactions (Borrow_ID, Member_ID, Book_ID, Borrow_Date) VALUES
(1, 201, 'B101', '2025-01-10'),
(2, 202, 'B205', '2025-01-12'),
(3, 201, 'B305', '2025-01-10');


INSERT INTO Return_Details (Borrow_ID, Return_Date, Fine_Amount) VALUES
(1, '2025-01-20', 0.00),
(2, '2025-01-25', 5.00),
(3, '2025-01-22', 2.00);



