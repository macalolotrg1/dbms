 -- Laboratory Activity 1: Installing MySQL and Setting Up the Database
 
 create database LibraryManagement;
 
 drop database LibraryManagement;
 
 show databases;
 
 /* Why is MySQL popular for DBMS? 
		MySQL is a popular Database Management System (DBMS) due to its unique combination of ease of
        use, high performance, scalability, affordability, and extensive community support.
	What are the advantages of using MySQL for a library management system?
		MySQL offers a scalable, secure, and cost-effective solution for library management systems, 
        efficiently storing and retrieving data, and supporting complex queries and reporting. 
	
    Conclusion: I successfully installed MySQL, set up a LibraryManagement database, and verified its 
		creation, laying the groundwork for further database development, including table creation and 
        relationship establishment. */

-- Laboratory Activity 2: Creating Tables and Establishing Primary Keys

use LibraryManagement;

CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100),
    Author VARCHAR(100),
    ISBN VARCHAR(20),
    Genre VARCHAR(50)
 );
 CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
 );
 CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    MemberID INT,
    BookID INT,
    IssueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
 );
 
 show tables;
 
 select * from books;
 select * from members;
 select * from transactions;
 
 /* What is the importance of primary keys in a relational database?
		Primary keys uniquely identify each record in a table, ensuring data integrity and preventing
        duplicate entries, which is essential for maintaining accurate and reliable data in a relational 
        database.
	How do foreign keys maintain referential integrity?
		Foreign keys maintain referential integrity by ensuring that relationships between tables are 
        consistent and valid, preventing actions that would create inconsistent or orphaned data, such as
        deleting a parent record without deleting its child records.
	
    Conclusion: I successfully created three tables (Books, Members, and Transactions) for the 
		library management system, learning to define primary keys, establish relationships using 
        foreign keys, and laying the groundwork for future database development.*/

-- Inserting data into Books table

INSERT INTO Books (Title, Author, ISBN, Genre) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 'Classic'),
('To Kill a Mockingbird', 'Harper Lee', '9780061120084', 'Fiction'),
('1984', 'George Orwell', '9780451524935', 'Dystopian'),
('Pride and Prejudice', 'Jane Austen', '9781503290563', 'Romance'),
('Moby Dick', 'Herman Melville', '9781503280786', 'Adventure'),
('War and Peace', 'Leo Tolstoy', '9781400079988', 'Historical Fiction'),
('The Odyssey', 'Homer', '9780140268867', 'Classical Literature'),
('The Catcher in the Rye', 'J.D. Salinger', '9780316769488', 'Fiction'),
('The Lord of the Rings', 'J.R.R. Tolkien', '9780261103573', 'Fantasy'),
('Brave New World', 'Aldous Huxley', '9780060850524', 'Science Fiction'),
('Frankenstein', 'Mary Shelley', '9780486282114', 'Horror'),
('Dracula', 'Bram Stoker', '9780141439846', 'Horror'),
('The Picture of Dorian Gray', 'Oscar Wilde', '9780141439570', 'Philosophical'),
('Crime and Punishment', 'Fyodor Dostoevsky', '9780140449136', 'Psychological Fiction'),
('The Hobbit', 'J.R.R. Tolkien', '9780618968633', 'Fantasy'),
('The Great Alone', 'Kristin Hannah', '9780312574810', 'Historical Fiction'),
('The Shining', 'Stephen King', '9780307743657', 'Horror'),
('The Alchemist', 'Paulo Coelho', '9780062315007', 'Adventure'),
('The Hunger Games', 'Suzanne Collins', '9780439023528', 'Dystopian'),
('The Kite Runner', 'Khaled Hosseini', '9781594631931', 'Drama'),
('A Game of Thrones', 'George R.R. Martin', '9780553103540', 'Fantasy'),
('The Chronicles of Narnia', 'C.S. Lewis', '9780066238500', 'Fantasy'),
('Little Women', 'Louisa May Alcott', '9780142408760', 'Classic'),
('Anna Karenina', 'Leo Tolstoy', '9780143035008', 'Literary Fiction'),
('The Book Thief', 'Markus Zusak', '9780375842207', 'Historical Fiction'),
('Fahrenheit 451', 'Ray Bradbury', '9781451673319', 'Dystopian'),
('The Road', 'Cormac McCarthy', '9780307387899', 'Post-apocalyptic'),
('A Tale of Two Cities', 'Charles Dickens', '9780141192545', 'Historical Fiction'),
('The Fault in Our Stars', 'John Green', '9780525478812', 'Romance'),
('Gone with the Wind', 'Margaret Mitchell', '9781451635621', 'Historical Romance'),
('Wuthering Heights', 'Emily Brontë', '9780141439556', 'Gothic Fiction'),
('The Outsiders', 'S.E. Hinton', '9780142407336', 'Coming-of-age'),
('The Secret Garden', 'Frances Hodgson Burnett', '9780141321078', 'Children’s Literature'),
('The Time Machine', 'H.G. Wells', '9780451530747', 'Science Fiction'),
('The Handmaid’s Tale', 'Margaret Atwood', '9780385490818', 'Dystopian'),
('Jane Eyre', 'Charlotte Brontë', '9780141441146', 'Romance'),
('The Secret History', 'Donna Tartt', '9780374522116', 'Psychological Fiction'),
('Beloved', 'Toni Morrison', '9781400033416', 'Historical Fiction'),
('The Night Circus', 'Erin Morgenstern', '9780385534642', 'Fantasy'),
('The Hunger Games: Catching Fire', 'Suzanne Collins', '9780439026994', 'Dystopian'),
('The Girl on the Train', 'Paula Hawkins', '9781594633669', 'Psychological Thriller'),
('The Help', 'Kathryn Stockett', '9780399155345', 'Historical Fiction'),
('Room', 'Emma Donoghue', '9780316334754', 'Drama'),
('Sharp Objects', 'Gillian Flynn', '9780307341556', 'Thriller'),
('Big Little Lies', 'Liane Moriarty', '9780399167065', 'Drama'),
('The Martian', 'Andy Weir', '9780553418026', 'Science Fiction'),
('The Fault in Our Stars', 'John Green', '9780141345654', 'Romance'),
('All the Light We Cannot See', 'Anthony Doerr', '9781501173219', 'Historical Fiction'),
('The Nightingale', 'Kristin Hannah', '9780312577224', 'Historical Fiction'),
('The Giver', 'Lois Lowry', '9780544336261', 'Dystopian'),
('The Hunger Games', 'Suzanne Collins', '9780439023528', 'Dystopian'),
('Life After Life', 'Kate Atkinson', '9780316176491', 'Historical Fiction'),
('The Rosie Project', 'Graeme Simsion', '9781476729091', 'Romantic Comedy'),
('The Night Watchman', 'Louise Erdrich', '9780062671190', 'Historical Fiction'),
('Circe', 'Madeline Miller', '9780316556347', 'Fantasy'),
('The Silent Patient', 'Alex Michaelides', '9781250301697', 'Psychological Thriller'),
('Where the Crawdads Sing', 'Delia Owens', '9780735219090', 'Mystery'),
('Eleanor Oliphant Is Completely Fine', 'Gail Honeyman', '9780735220683', 'Contemporary Fiction'),
('Educated', 'Tara Westover', '9780399590504', 'Memoir'),
('Becoming', 'Michelle Obama', '9781524763138', 'Memoir'),
('Normal People', 'Sally Rooney', '9781984822178', 'Literary Fiction'),
('The Seven Husbands of Evelyn Hugo', 'Taylor Jenkins Reid', '9781501161933', 'Historical Fiction'),
('The Midnight Library', 'Matt Haig', '9780525559474', 'Fantasy'),
('The Tattooist of Auschwitz', 'Heather Morris', '9780062797152', 'Historical Fiction'),
('The Couple Next Door', 'Shari Lapena', '9780735234949', 'Thriller'),
('The Institute', 'Stephen King', '9781982102504', 'Horror'),
('The Silent Corner', 'Dean Koontz', '9780525482793', 'Thriller'),
('The Invisible Man', 'H.G. Wells', '9780451530969', 'Science Fiction'),
('Before We Were Strangers', 'Renée Carlino', '9781501135101', 'Romance'),
('Behind Closed Doors', 'B.A. Paris', '9781250130921', 'Thriller'),
('Big Little Lies', 'Liane Moriarty', '9780399167065', 'Drama'),
('The Tattooist of Auschwitz', 'Heather Morris', '9780062797152', 'Historical Fiction'),
('The Light We Lost', 'Jill Santopolo', '9780735212763', 'Romance'),
('The Light Between Oceans', 'M.L. Stedman', '9781451681754', 'Historical Fiction'),
('Anxious People', 'Fredrik Backman', '9781501160783', 'Contemporary Fiction'),
('Little Fires Everywhere', 'Celeste Ng', '9780735224315', 'Drama'),
('The Goldfinch', 'Donna Tartt', '9780316055437', 'Literary Fiction');

-- Inserting data into Members table

INSERT INTO Members (FirstName, LastName, Email) VALUES
('John', 'Doe', 'john.doe@example.com'),
('Jane', 'Smith', 'jane.smith@example.com'),
('Michael', 'Johnson', 'michael.johnson@example.com'),
('Emily', 'Davis', 'emily.davis@example.com'),
('David', 'Brown', 'david.brown@example.com'),
('Sarah', 'Williams', 'sarah.williams@example.com'),
('James', 'Jones', 'james.jones@example.com'),
('Patricia', 'Garcia', 'patricia.garcia@example.com'),
('Robert', 'Miller', 'robert.miller@example.com'),
('Mary', 'Wilson', 'mary.wilson@example.com'),
('William', 'Moore', 'william.moore@example.com'),
('Linda', 'Taylor', 'linda.taylor@example.com'),
('Thomas', 'Anderson', 'thomas.anderson@example.com'),
('Jessica', 'Thomas', 'jessica.thomas@example.com'),
('Christopher', 'Jackson', 'christopher.jackson@example.com'),
('Amanda', 'White', 'amanda.white@example.com'),
('Joshua', 'Harris', 'joshua.harris@example.com'),
('Elizabeth', 'Martin', 'elizabeth.martin@example.com'),
('Andrew', 'Thompson', 'andrew.thompson@example.com'),
('Kimberly', 'Garcia', 'kimberly.garcia@example.com'),
('Steven', 'Martinez', 'steven.martinez@example.com'),
('Nicole', 'Roberts', 'nicole.roberts@example.com'),
('Brian', 'Walker', 'brian.walker@example.com'),
('Angela', 'Scott', 'angela.scott@example.com'),
('Joseph', 'Young', 'joseph.young@example.com'),
('Samantha', 'Allen', 'samantha.allen@example.com'),
('Benjamin', 'King', 'benjamin.king@example.com'),
('Rachel', 'Green', 'rachel.green@example.com'),
('Daniel', 'Adams', 'daniel.adams@example.com'),
('Lauren', 'Baker', 'lauren.baker@example.com'),
('Ethan', 'Nelson', 'ethan.nelson@example.com'),
('Hannah', 'Carter', 'hannah.carter@example.com'),
('Jack', 'Mitchell', 'jack.mitchell@example.com'),
('Megan', 'Perez', 'megan.perez@example.com'),
('Ryan', 'Roberts', 'ryan.roberts@example.com'),
('Ashley', 'Morris', 'ashley.morris@example.com'),
('William', 'Evans', 'william.evans@example.com'),
('Olivia', 'Collins', 'olivia.collins@example.com'),
('Matthew', 'Stewart', 'matthew.stewart@example.com'),
('Sophia', 'Sanchez', 'sophia.sanchez@example.com'),
('Lucas', 'Rogers', 'lucas.rogers@example.com'),
('Ava', 'Reed', 'ava.reed@example.com'),
('Gabriel', 'Cook', 'gabriel.cook@example.com'),
('Charlotte', 'Morgan', 'charlotte.morgan@example.com'),
('Jack', 'Bennett', 'jack.bennett@example.com');

-- Inserting data into Transactions table

INSERT INTO Transactions (MemberID, BookID, IssueDate, ReturnDate) VALUES
(1, 1, '2025-01-10', '2025-01-17'),
(2, 2, '2025-01-12', '2025-01-19'),
(3, 3, '2025-01-14', '2025-01-21'),
(4, 4, '2025-01-16', '2025-01-23'),
(5, 5, '2025-01-18', '2025-01-25'),
(6, 6, '2025-01-20', '2025-01-27'),
(7, 7, '2025-01-22', '2025-01-29'),
(8, 8, '2025-01-24', '2025-01-31'),
(9, 9, '2025-01-26', '2025-02-02'),
(10, 10, '2025-01-28', '2025-02-04'),
(11, 11, '2025-01-30', '2025-02-06'),
(12, 12, '2025-02-01', '2025-02-08'),
(13, 13, '2025-02-03', '2025-02-10'),
(14, 14, '2025-02-05', '2025-02-12'),
(15, 15, '2025-02-07', '2025-02-14'),
(16, 16, '2025-02-09', '2025-02-16'),
(17, 17, '2025-02-11', '2025-02-18'),
(18, 18, '2025-02-13', '2025-02-20'),
(19, 19, '2025-02-15', '2025-02-22'),
(20, 20, '2025-02-17', '2025-02-24'),
(21, 21, '2025-02-19', '2025-02-26'),
(22, 22, '2025-02-21', '2025-02-28'),
(23, 23, '2025-02-23', '2025-03-02'),
(24, 24, '2025-02-25', '2025-03-04'),
(25, 25, '2025-02-27', '2025-03-06'),
(26, 26, '2025-03-01', '2025-03-08'),
(27, 27, '2025-03-03', '2025-03-10'),
(28, 28, '2025-03-05', '2025-03-12'),
(29, 29, '2025-03-07', '2025-03-14'),
(30, 30, '2025-03-09', '2025-03-16'),
(31, 31, '2025-03-11', '2025-03-18'),
(32, 32, '2025-03-13', '2025-03-20'),
(33, 33, '2025-03-15', '2025-03-22'),
(34, 34, '2025-03-17', '2025-03-24'),
(35, 35, '2025-03-19', '2025-03-26'),
(36, 36, '2025-03-21', '2025-03-28'),
(37, 37, '2025-03-23', '2025-03-30'),
(38, 38, '2025-03-25', '2025-04-01'),
(39, 39, '2025-03-27', '2025-04-03'),
(40, 40, '2025-03-29', '2025-04-05'),
(41, 41, '2025-03-31', '2025-04-07'),
(42, 42, '2025-04-02', '2025-04-09'),
(43, 43, '2025-04-04', '2025-04-11'),
(44, 44, '2025-04-06', '2025-04-13'),
(45, 45, '2025-04-08', '2025-04-15');

-- Laboratory 3: Structured Query Language (SQL) - Basic Queries

SELECT * FROM Books;

SELECT * FROM Books WHERE Genre = 'Fiction';

SELECT * FROM Books ORDER BY Title ASC;

/*How do WHERE and ORDER BY improve the functionality of SQL queries?
		WHERE and ORDER BY improve SQL query functionality by:
        WHERE: Filtering data to retrieve specific records based on conditions.
        ORDER BY: Sorting data in ascending or descending order, making it easier to analyze and present.
  
  Conclusion: I gained hands-on experience with basic SQL queries, learning to retrieve, filter, 
	and manipulate data in their library management system database, including selecting specific columns, 
    filtering results with conditions, and sorting data.*/
  
-- Laboratory Activity 4: SQL - JOIN Operation

SELECT Books.Title, Members.FirstName, Members.LastName
FROM Transactions
INNER JOIN Books ON Transactions.BookID = Books.BookID
INNER JOIN Members ON Transactions.MemberID = Members.MemberID;

SELECT Books.Title, Members.FirstName, Members.LastName
FROM Books
LEFT JOIN Transactions ON Books.BookID = Transactions.BookID
LEFT JOIN Members ON Transactions.MemberID = Members.MemberID;

/* How does the LEFT JOIN differ from the INNER JOIN?
		The main difference is:
        
        LEFT JOIN: Returns all records from the left table and matching records from the right table, 
        if available. If no match, returns NULL.
        
        INNER JOIN: Returns only records with matching values in both tables.
        
	Conclusion: I learned how to use the JOIN operation in SQL to combine data from two or more tables, 
		enabling them to retrieve complex data relationships and perform tasks such as retrieving book 
        titles and authors, and linking member transactions to their corresponding member information.*/ 