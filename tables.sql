-- Active: 1750580437998@@127.0.0.1@5432@library_management
CREATE DATABASE Library_Management;

CREATE TABLE publishers(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

-- ALTER publisher RENAME TO publishers;

CREATE TABLE books(
    book_id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    author_name TEXT,
    published_year INT,
    price NUMERIC (6,2),
    in_stock BOOLEAN,
    publisher_id INT,
    FOREIGN KEY (publisher_id) REFERENCES publishers(id)
)
