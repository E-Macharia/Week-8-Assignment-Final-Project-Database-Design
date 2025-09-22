-- ============================================================
-- Library Management System Database
-- Complete SQL Script: Create Database, Tables, Insert Sample Data
-- ============================================================

-- 1. Create the database
CREATE DATABASE IF NOT EXISTS LibraryDB;
USE LibraryDB;

-- ============================================================
-- 2. Create Tables
-- ============================================================

-- Table: Members
CREATE TABLE IF NOT EXISTS Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    join_date DATE NOT NULL
);

-- Table: Books
CREATE TABLE IF NOT EXISTS Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    published_year INT,
    isbn VARCHAR(20) UNIQUE
);

-- Table: Loans
CREATE TABLE IF NOT EXISTS Loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT NOT NULL,
    book_id INT NOT NULL,
    loan_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id) ON DELETE CASCADE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE
);

-- Table: Staff
CREATE TABLE IF NOT EXISTS Staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    role VARCHAR(50),
    email VARCHAR(100) UNIQUE
);

-- ============================================================
-- 3. Insert Sample Data
-- ============================================================

-- Insert Members
INSERT INTO Members (full_name, email, phone, join_date)
VALUES
('Evans', 'machariaevanst636@gmail.com', '0790344795', '2025-01-01'),
('Jackson Kariuki', 'jackkaris@gmail.com', '0784777539', '2025-02-15'),
('Wash Johnson', 'washjohn@gmail.com', '0702024772', '2025-03-17');

-- Insert Books
INSERT INTO Books (title, author, genre, published_year, isbn)
VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 1925, '9780743273565'),
('1984', 'George Orwell', 'Dystopian', 1949, '9780451524935');

-- Insert Loans
INSERT INTO Loans (member_id, book_id, loan_date)
VALUES (1, 2, '2025-03-01');

-- Insert Staff
INSERT INTO Staff (full_name, role, email)
VALUES ('Gideon Karis', 'director', 'gideonkaris@gmail.com');

-- ============================================================
-- 4. Select Statements to View Data
-- ============================================================

SELECT * FROM Members;
SELECT * FROM Books;
SELECT * FROM Loans;
SELECT * FROM Staff;
