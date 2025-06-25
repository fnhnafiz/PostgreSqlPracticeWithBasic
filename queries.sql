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

-- when need to pagination type work we can use LIMIT keyword and OFSET keyword. Because this keyword can do split data for any side. 
SELECT * FROM books
    LIMIT 2;

SELECT * FROM books
    LIMIT 5 OFFSET 2;

-- when you need to show the all agregate count a person how many book create; Then we can use GROUP BY keyword;
SELECT author_name, COUNT(*) FROM books GROUP BY author_name;

-- when we need to that with condition that the highest person in our site created book the largest count. There we can use a keyword HAVING

SELECT author_name, COUNT(*) FROM books GROUP BY author_name HAVING COUNT(*) > 1;

-- When Refference ID does Deleted. How can we fix it.

ALTER TABLE books DROP CONSTRAINT books_publisher_id_fkey;

ALTER TABLE books
    ADD CONSTRAINT books_publishers_id_fkey
    FOREIGN KEY (publisher_id) REFERENCES publishers(id)
    ON DELETE CASCADE;

DELETE FROM publishers
    WHERE id = 4;

-- we use now inner join. If my table available a NULL values and the INNER JOIN can not return the NULL type values. If we need that the real person data there have no null value then we can use this INNER JOIN;
SELECT b.title ,b.author_name, p.name AS publisher_name FROM books b INNER JOIN publishers p ON b.publisher_id = p.id;


-- When we need to the data with NULL values then we can use LEFT JOIN.;
SELECT b.title, b.author_name, b.published_year, p.name AS publisher_details FROM books
    b LEFT JOIN publishers p ON b.publisher_id = p.id;

-- How to see date;
SELECT CURRENT_DATE;

SELECT current_time;

SELECT EXTRACT (YEAR FROM CURRENT_DATE) AS "Year",
EXTRACT (MONTH FROM CURRENT_DATE) AS "Month",
EXTRACT (DAY FROM CURRENT_DATE) AS "Day";

SELECT * FROM books;
SELECT * FROM publishers;

DROP TABLE publishers;