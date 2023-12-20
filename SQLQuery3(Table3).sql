SELECT * FROM Table3
--1 Write a query calculates the average comfort rating for a specific product based on its reviews.
SELECT
    [Product Code],
    AVG(CASE WHEN ISNUMERIC(Comfort) = 1 THEN CONVERT(float, Comfort) ELSE NULL END) AS AverageComfortRating
FROM Table3
WHERE [Product Code] = 'Air Jordan 1 Hi FlyEase'
GROUP BY [Product Code];

--2 Write a query to retrieve products with high star ratings (e.g., 4 stars or above)
SELECT *
FROM Table3
WHERE CAST([Star Rating] AS FLOAT) >= 4.0;


--3 Write a query that counts the number of reviews for each product.
SELECT
    [Product Code],
    COUNT(Reviews) AS NumberOfReviews
FROM Table3
GROUP BY [Product Code];

--4 Write a To retrieve products that have a quantified durability/quality/performance rating above a certain threshold (eg, above 7).
SELECT *
FROM Table3
WHERE [Durability/Quality/Performance] > 7;

--5 Write a query that calculates the average comfort rating for each size
SELECT
    Size,
    AVG(CASE WHEN ISNUMERIC(Comfort) = 1 THEN CONVERT(float, Comfort) ELSE NULL END) AS AverageComfortRating
FROM Table3
GROUP BY Size;
