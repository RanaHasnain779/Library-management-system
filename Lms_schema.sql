create database lms;
use lms;
create table books( book_id int primary key key auto_increment, title VARCHAR(100) NOT NULL, author_id int,genre_id int,
 published_year int, isbn varchar(20) not null, available_copies int);
create table authors(author_id int primary key auto_increment, first_name varchar(50), last_name varchar(50),
birth_year int, nationality varchar(50));
create table genre(genre_id int primary key key auto_increment, genre_name varchar(50), description varchar(100),
email varchar(50), registration_date date);
create table borrowers( borrower_id int primary key key auto_increment, first_name varchar(50) not null, last_name varchar(50) not null,
email varchar(50), registration_date date);
create table loans( loan_id int primary key key auto_increment,
 book_id int,
 borrower_id int,
 loan_date timestamp DEFAULT CURRENT_timestamp(),
 due_date date, return_date date);
INSERT INTO authors (first_name, last_name, birth_year, nationality) VALUES
('George', 'Orwell', 1903, 'British'),
('J.K.', 'Rowling', 1965, 'British'),
('Stephen', 'King', 1947, 'American'),
('Agatha', 'Christie', 1890, 'British'),
('Haruki', 'Murakami', 1949, 'Japanese');

INSERT INTO genre (genre_name, description) VALUES
('Dystopian', 'Fiction set in a society that is oppressive or frightening'),
('Fantasy', 'Imaginary worlds and magical elements'),
('Horror', 'Intended to scare or shock'),
('Mystery', 'Involves solving a crime or puzzle'),
('Magical Realism', 'Blends realistic narrative with surreal elements');

INSERT INTO books (title, author_id, genre_id, published_year, isbn, available_copies) VALUES
('1984', 1, 1, 1949, '9780451524935', 3),
('Animal Farm', 1, 1, 1945, '9780451526342', 2),
('Harry Potter and the Philosopher''s Stone', 2, 2, 1997, '9780747532743', 1),
('The Shining', 3, 3, 1977, '9780307743657', 0),
('Murder on the Orient Express', 4, 4, 1934, '9780062073501', 1),
('Norwegian Wood', 5, 5, 1987, '9780375704024', 2);

INSERT INTO borrowers (first_name, last_name, email, registration_date) VALUES
('John', 'Smith', 'john.smith@email.com', '2023-01-15'),
('Emily', 'Johnson', 'emily.j@email.com', '2023-02-20'),
('Michael', 'Williams', 'michael.w@email.com', '2023-03-10'),
('Sarah', 'Brown', 'sarah.b@email.com', '2023-01-05'),
('David', 'Jones', 'david.j@email.com', '2023-04-15');

INSERT INTO loans (book_id, borrower_id, loan_date, due_date, return_date) VALUES
(1, 1, '2023-05-01', '2023-05-15', '2023-05-14'),
(3, 2, '2023-05-10', '2023-05-24', NULL),
(4, 3, '2023-05-12', '2023-05-26', NULL),
(2, 4, '2023-05-05', '2023-05-19', '2023-05-18'),
(5, 5, '2023-05-15', '2023-05-29', NULL);
select* from authors,books,genre,borrowers,loans;