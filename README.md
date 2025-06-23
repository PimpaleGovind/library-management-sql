
# Library Management System

This project represents a basic schema design for a Library Management System using SQL.

## Technologies Used:
- MySQL / SQL-based RDBMS
- ERD Tool: Graphviz

## Tables & Relationships
- **Author**: stores author details
- **Book**: stores book information
- **BookAuthor**: handles many-to-many relation between books and authors
- **Member**: stores member info
- **Borrow**: tracks book borrowing
- **Librarian**: stores librarian data

## Files Included
- `schema.sql`: SQL script to create the database schema
- `library_er_diagram.png`: ER Diagram showing entity relationships

## How to Use
1. Run `schema.sql` in your MySQL client.
2. Use the ER diagram to understand the structure visually.