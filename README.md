# 📚 Library Management System (LMS) — SQL Project

This project is a simple relational database system for a Library Management System (LMS), built using **MySQL**. It demonstrates how to model and manage data related to books, authors, borrowers, genres, and loans.

## 🧱 Database Structure

The database includes the following tables:

### 1. `authors`
Stores author details.
- `author_id` (Primary Key)
- `first_name`
- `last_name`
- `birth_year`
- `nationality`

### 2. `genre`
Stores book genres and descriptions.
- `genre_id` (Primary Key)
- `genre_name`
- `description`
- `email`
- `registration_date`

### 3. `books`
Stores book details.
- `book_id` (Primary Key)
- `title`
- `author_id` (FK to `authors`)
- `genre_id` (FK to `genre`)
- `published_year`
- `isbn`
- `available_copies`

### 4. `borrowers`
Stores information about people borrowing books.
- `borrower_id` (Primary Key)
- `first_name`
- `last_name`
- `email`
- `registration_date`

### 5. `loans`
Tracks which books have been loaned out, and their due/return dates.
- `loan_id` (Primary Key)
- `book_id` (FK to `books`)
- `borrower_id` (FK to `borrowers`)
- `loan_date`
- `due_date`
- `return_date`

---

## 🛠 Sample Data Inserted

The project includes sample records for:
- 📖 6 Books
- ✍️ 5 Authors
- 🧙 5 Genres
- 👤 5 Borrowers
- 📅 5 Book Loans

---

## 🔍 Sample Query

```sql
-- Show all books currently on loan (not returned)
SELECT b.title, br.first_name, br.last_name, l.loan_date, l.due_date
FROM loans l
JOIN books b ON l.book_id = b.book_id
JOIN borrowers br ON l.borrower_id = br.borrower_id
WHERE l.return_date IS NULL;
