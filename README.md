# Database Management System Project

## Project Overview
This project demonstrates a complete **relational database management system (RDBMS)** designed and implemented using **MySQL**. The database models a **Library Management System**, representing a real-world use case for managing books, members, loans, and staff.  

The goal of this project is to showcase the creation of well-structured tables, proper constraints, and relationships between tables to ensure data integrity and efficiency.

---

## Database Features
- **Database Name:** `LibraryDB`
- **Tables:**
  1. `Members` – Stores library member information.
  2. `Books` – Stores book details.
  3. `Loans` – Tracks which members have borrowed which books.
  4. `Staff` – Stores library staff information.

- **Constraints:**
  - **Primary Keys** for unique identification of records.
  - **Foreign Keys** to enforce relationships between tables.
  - **NOT NULL** to ensure essential fields are always populated.
  - **UNIQUE** to prevent duplicate data in fields such as email or ISBN.

- **Relationships:**
  - **One-to-Many:** One member can borrow multiple books (`Members` → `Loans`).
  - **One-to-Many:** One book can be borrowed multiple times (`Books` → `Loans`).

---

## Deliverables
- A single SQL file: `Week_8_Assignment_Project.sql` containing:
  - `CREATE DATABASE` statement
  - `CREATE TABLE` statements
  - Relationship constraints (PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL)

---

## How to Use
1. Open **MySQL** or a MySQL client (e.g., MySQL Workbench, VS Code with MySQL extension).  
2. Run the SQL file `LibraryDB.sql` to create the database and tables.  
3. Optionally, use `SELECT` statements to view sample data.

---

## Author
**Evans Macharia**  
Email: machariaevans636@gmail.com  
Phone: 0790344795  
