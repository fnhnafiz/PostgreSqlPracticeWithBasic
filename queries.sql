-- How to add column in table with Alter keyword;
ALTER TABLE books ADD COLUMN gender TEXT;

-- How delete column with using Alter keyword;
ALTER TABLE books DROP COLUMN gender;

-- How to change a speciphic column name with using Alter Keyword and rename keyword;
ALTER TABLE books RENAME COLUMN title to book_title;

-- when need to condition we are using Where keyword, Suppose we need to that the book price more than 250, so how can we find it. Let's go to condition,

SELECT * FROM books
    WHERE price >= 250;

-- Using scaler in postgres. If we need to the all books available right now our library. How to see the all books usign Count() function. After we need to avarage the all books price that we can see with using AVG() function and the last of topic our that Min() and Max() price we can see our table. So let's go to our code and see the output.

SELECT book_title, LENGTH(book_title) FROM books;

SELECT COUNT(*) FROM books;

SELECT AVG(price) FROM books;

SELECT MIN(price) AS max_price, MAX(price) AS min_price FROM books;

SELECT SUM(price) AS total_price FROM books;

-- when need a spechiphic condition type data we can use BETWEEN keyword for condition.

SELECT * FROM books
    WHERE price BETWEEN 200 AND 250;

-- If you search or params with the spechiphic column like titile, author name or etc you can use LIKE or ILIKE keyword from postgres;

SELECT * FROM books
    WHERE author_name LIKE 'George%';

SELECT * FROM books
    WHERE book_title ILIKE 'the%';

SELECT * FROM books
    WHERE author_name IN ('J.R.R. Tolkien', 'Aldous Huxley');

SELECT * FROM books;