USE OnlineBookstore;
SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;
-- Basic Questions
-- Q1 Retrieve all books in Fiction Genre 
SELECT * FROM Books
WHERE Genre='Fiction';

-- Q2  Find Avg price of books in the "Fantasy" genre
SELECT Genre, AVG(Price) FROM Books 
GROUP BY Genre 
HAVING Genre IN ('Fantasy');

-- Q3 Find books published after 1950
SELECT * FROM Books
WHERE published_Year>1950
ORDER BY published_Year;

-- Q4 list all customers from canada 
select * from customers
WHERE Country ='Canada';

-- Q5 Show all orders placed in November 2023
SELECT * FROM Orders 
WHERE Order_Date BETWEEN '2023-11-31' AND '2023-11-01';

-- Q6 Retrieve the total stock of books available
SELECT SUM(Stock)AS total_stock FROM Books;

-- Q7 find details of the most expensive book
Select * FROM Books 
WHERE Price=(
SELECT MAX(Price) AS mst_exp_book
FROM Books);

-- Q8 Show all customers who ordered more than one quantity of book
SELECT C.* FROM Customers C 
JOIN Orders O 
ON O.Customer_ID = C.Customer_ID
WHERE O.Quantity>1;

-- Q9 Find books published after 1950
SELECT * FROM Books
WHERE published_Year>1950
ORDER BY published_Year;

-- Q10 List all genre available in the Books table
SELECT DISTINCT Genre FROM Books;

-- Q11 Find the book with lowest stock
SELECT * FROM Books
WHERE Stock=(SELECT MIN(Stock) FROM Books);

-- Q12 Calculate the total revenue generated from all orders
SELECT SUM(Total_Amount)AS Revenue FROM Orders;

-- Advance Questions 
-- Q1 Retrieve the total number of books sold for each genre
SELECT b.genre, SUM(o.Quantity)AS total_books FROM Books b 
JOIN Orders o ON b.Book_ID = o.Book_ID
GROUP BY b.genre;

-- Q2 Find the average price of books in the "Fantasy" genre
SELECT Genre, AVG(Price)AS Avg_price FROM Books
WHERE Genre IN('Fantasy');

-- Q3 List the ciustomers who placed atleast 2 orders 
SELECT c.Customer_ID, c.Name, COUNT(o.Order_ID)AS atleat_2_orders FROM Customers c
JOIN Orders o ON o.Customer_ID = c.Customer_ID
GROUP BY c.Customer_ID,c.Name
HAVING atleat_2_orders >= 2
ORDER BY c.Customer_ID;

-- Q4 Find the most frequently ordered book
SELECT O.Book_ID, B.Title ,COUNT(O.Order_ID) AS total_order FROM orders O 
JOIN Books B ON B.Book_ID = O.Book_ID
GROUP BY O.Book_ID,B.Title
ORDER BY total_order DESC
LIMIT 1;

-- Q5 Find the top 3 most expensive books of 'Fantasy' Genre
SELECT * FROM Books 
WHERE Genre='Fantasy' 
ORDER BY Price DESC
LIMIT 3;

-- Q6 Retrieve  the quantity of books sold by each author 

SELECT B.Author,SUM(O.Quantity)AS total_sold FROM Books B
JOIN Orders O ON B.Book_ID = O.Book_ID
GROUP BY B.Author;

-- Q7 List the cities where customer spent over $30 
SELECT DISTINCT C.city FROM Customers C JOIN 
Orders O ON C.Customer_ID=O.Customer_ID
WHERE O.Total_Amount > 30;

-- Q8 Find the customers who spend  the most on orders 
SELECT C.Customer_ID, C.Name, SUM(O.Total_Amount) AS Total_Spend
FROM Customers C
JOIN Orders O
ON C.Customer_ID = O.Customer_ID
GROUP BY C.Customer_ID, C.Name
ORDER BY Total_Spend DESC 
LIMIT 1;

-- Q9 Calculate the stock remaining after fulfilling all orders 
SELECT B.Book_ID, B.Title, B.Stock,COALESCE(SUM(O.Quantity),0)AS Order_Quantity,
B.Stock - COALESCE(SUM(O.Quantity),0)AS Remaining_Stock
FROM Books B  
LEFT JOIN Orders O ON B.Book_ID = O.Book_ID
GROUP BY B.Book_ID
ORDER BY B.Book_ID;

  




















