-- Laboratory Activity 5: Normalization - First Normal Form (1NF)

use LibraryManagement;

CREATE TABLE UnNormalizedBooks (
   BookID INT,
   Title VARCHAR(100),
   Authors VARCHAR(100),
   Genre VARCHAR(50)
);

INSERT INTO UnNormalizedBooks (BookID, Title, Authors, Genre)
VALUES 
(1, 'Book A', 'Author1, Author2', 'Fiction'),
(2, 'Book B', 'Author3', 'Non-Fiction');

CREATE TABLE Books_1NF (
   BookID INT,
   Title VARCHAR(100),
   Author VARCHAR(100),
   Genre VARCHAR(50)
);

INSERT INTO Books_1NF (BookID, Title, Author, Genre)
VALUES 
(1, 'Book A', 'Author1', 'Fiction'),
(1, 'Book A', 'Author2', 'Fiction'),
(2, 'Book B', 'Author3', 'Non-Fiction');

/* How does 1NF improve data integrity?
		1NF improves data integrity by ensuring that each column contains atomic values, eliminating 
        redundancy and making it easier to maintain data consistency, accuracy, and accuracy.
   What are atomic values, and why are they important?
		Atomic values are individual, self-contained pieces of data that cannot be broken down further, 
        making them essential for maintaining data integrity, as they eliminate redundancy, improve data 
        consistency, and enable efficient data manipulation and analysis.
   
   Conclusions: By normalizing a table to 1NF, we have successfully eliminated redundancy and improved 
				data integrity by ensuring that each column contains atomic values, making it easier to 
                manage and maintain accurate data.*/

-- Laboratory Activity 6: Normalization - Second Normal Form (2NF)

use librarymanagement;

drop table Books_1NF;

CREATE TABLE Books_1NF (
   BookID INT,
   Title VARCHAR(100),
   Author VARCHAR(100),
   Genre VARCHAR(50),
   Publisher VARCHAR(100),
   PublisherAddress VARCHAR(100)
);

INSERT INTO Books_1NF (BookID, Title, Author, Genre, Publisher, PublisherAddress)
VALUES
(1, 'Book A', 'Author1', 'Fiction', 'Publisher1', 'Address1'),
(2, 'Book B', 'Author2', 'Non-Fiction', 'Publisher1', 'Address1');

CREATE TABLE Books_2NF (
   BookID INT PRIMARY KEY,
   Title VARCHAR(100),
   Author VARCHAR(100),
   Genre VARCHAR(50)
);

CREATE TABLE Publishers (
   PublisherID INT PRIMARY KEY,
   PublisherName VARCHAR(100),
   PublisherAddress VARCHAR(100)
);

/* What is a partial dependency, and how does 2NF eliminate it?
		A partial dependency occurs when a non-key attribute depends on only a part of the primary key, 
        and 2NF (Second Normal Form) eliminates it by removing partial dependencies, ensuring that each 
        non-key attribute depends on the entire primary key.
   How do foreign keys help maintain data integrity? 
		Foreign keys help maintain data integrity by establishing relationships between tables, ensuring 
        that data is consistent and accurate, and preventing orphaned or inconsistent data by referencing 
        the primary key of the related table.
   
   Conclusions: By normalizing a table to 2NF, we have successfully eliminated partial dependencies and 
				improved data integrity by ensuring that each non-key attribute depends on the entire 
                primary key, making it easier to manage and maintain accurate data.*/
   
-- Laboratory Activity 7: Normalization - Third Normal Form (3NF)

use librarymanagement;

drop table Books_2NF;

CREATE TABLE Books_2NF (
   BookID INT,
   Title VARCHAR(100),
   Author VARCHAR(100),
   Genre VARCHAR(50),
   PublisherID INT,
   PublisherName VARCHAR(100),
   PublisherAddress VARCHAR(100)
);

INSERT INTO Books_2NF (BookID, Title, Author, Genre, PublisherID, PublisherName, PublisherAddress)
VALUES
(1, 'Book A', 'Author1', 'Fiction', 1, 'Publisher1', 'Address1'),
(2, 'Book B', 'Author2', 'Non-Fiction', 1, 'Publisher1', 'Address1');

CREATE TABLE Publishers_3NF (
   PublisherID INT PRIMARY KEY,
   PublisherName VARCHAR(100),
   PublisherAddress VARCHAR(100)
);

/* What are transitive dependencies, and why should they be eliminated?
		A transitive dependency occurs when a non-key attribute depends on another non-key attribute, 
        and it should be eliminated because it leads to data inconsistencies and redundancy, making it 
        difficult to manage and maintain accurate data.
   How does 3NF improve data integrity?
		3NF (Third Normal Form) improves data integrity by eliminating transitive dependencies, ensuring 
        that each non-key attribute depends only on the primary key, and preventing data inconsistencies 
        and redundancy, making it easier to manage and maintain accurate data.
   
   
   Conclusions: By normalizing a table to 3NF, we have successfully eliminated transitive dependencies 
				and improved data integrity by ensuring that each non-key attribute depends only on the 
                primary key, making it easier to manage and maintain accurate data.*/