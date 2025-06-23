
-- Create Database
CREATE DATABASE LibraryDB;
USE LibraryDB;

-- Author Table
CREATE TABLE Author (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

-- Book Table
CREATE TABLE Book (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Genre VARCHAR(100),
    Publisher VARCHAR(100),
    Year INT
);

-- BookAuthor (Many-to-Many)
CREATE TABLE BookAuthor (
    BookID INT,
    AuthorID INT,
    PRIMARY KEY (BookID, AuthorID),
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
);

-- Member Table
CREATE TABLE Member (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

-- Librarian Table
CREATE TABLE Librarian (
    LibrarianID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);

-- Borrow Table
CREATE TABLE Borrow (
    BorrowID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Book(BookID),
    FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);
