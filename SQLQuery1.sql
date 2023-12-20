SELECT * FROM Table1

--1 Write a query to retrieve all shoe names and their corresponding prices for men's shoes:
SELECT ShoeName, [Price(dollor)]
FROM Table1
WHERE Category = 'Mens Shoes';

--2 Write a query to retrieve the number of different colors available for each category.

SELECT Category, COUNT(DISTINCT Number_of_Colors) AS NumberOfColors
FROM Table1 
GROUP BY Category;


--3 Write a query to find the most expensive men's shoe.
SELECT TOP 1 ShoeName, [Price(dollor)]
FROM Table1
WHERE Category = 'Men''s Shoes'
ORDER BY [Price(dollor)] DESC;

--4 Write a query to find the cheapest women's shoe in a specific color (e.g., 'Black').

SELECT TOP 1 ShoeName, [Price(dollor)]
FROM Table1
WHERE Category = 'Women''s Shoes' AND [Number of Colors] = 'Black'
ORDER BY [Price(dollor)];

--5 Write a query to retrieve all shoe names and their corresponding prices for men's shoes.
SELECT ShoeName, [Price(dollor)]
FROM Table1
WHERE Category = 'Men''s Shoes';


