--COUNT -> Number of occurences
SELECT COUNT(*) FROM books;
-- Number of rows

/*
Try these
SELECT COUNT(author_fname) FROM books;
SELECT COUNT(DISTINCT author_fname) FROM books;
SELECT COUNT(DISTINCT author_lname) FROM books;
SELECT COUNT(DISTINCT author_lname, author_fname) FROM books;
SELECT title FROM books WHERE title LIKE '%the%';
SELECT COUNT(*) FROM books WHERE title LIKE '%the%';
*/

-- GROUP BY -> Summarizes identical data into single rows
SELECT author_lname, COUNT(*) 
FROM books GROUP BY author_lname;
-- Counting occurences by author_lname

/*
Try these
SELECT title, author_fname, author_lname FROM books GROUP BY author_lname;
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname;
SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;
SELECT released_year FROM books;
SELECT released_year, COUNT(*) FROM books GROUP BY released_year;
SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released') AS year FROM books GROUP BY released_year;
*/

-- MIN, MAX -> Minimum and Maximum values
SELECT MIN(released_year) 
FROM books;

SELECT MAX(pages) 
FROM books;

/* 
Try these
SELECT * FROM books 
WHERE pages = (SELECT Min(pages) 
                FROM books); 
SELECT title, pages FROM books 
WHERE pages = (SELECT Max(pages) 
                FROM books); 
SELECT title, pages FROM books 
WHERE pages = (SELECT Min(pages) 
                FROM books); 
SELECT * FROM books 
ORDER BY pages ASC LIMIT 1;
SELECT title, pages FROM books 
ORDER BY pages ASC LIMIT 1;
SELECT * FROM books 
ORDER BY pages DESC LIMIT 1;
SELECT
  CONCAT(author_fname, ' ', author_lname) AS author,
  MAX(pages) AS 'longest book'
FROM books
GROUP BY author_lname,
         author_fname;
*/

-- SUM -> Adding up.
SELECT SUM(pages)
FROM books;

/*
SELECT author_fname,
       author_lname,
       Sum(pages)
FROM books
GROUP BY
    author_lname,
    author_fname;
*/

-- AVG -> Averaging
SELECT AVG(released_year) 
FROM books;

/*
SELECT released_year, AVG(stock_quantity) 
FROM books 
GROUP BY released_year;
*/
