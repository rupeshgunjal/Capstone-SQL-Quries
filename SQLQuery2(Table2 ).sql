SELECT * FROM table2
--1 Write a query that retrieves the count of sizes for all styles.
SELECT [Style Code], COUNT(DISTINCT Reviews) AS SizeCount
FROM table2  
GROUP BY [Style Code];

--2  Write a query to list all styles with their associated colors.

SELECT DISTINCT [Style Code], 
                [Color 1], 
                [Color 2], 
                [Color 3], 
                [Color 4]
FROM table2;  

--3 Write a to find styles that have more than one color.
SELECT [Style Code]
FROM table2  
GROUP BY [Style Code]
HAVING COUNT(DISTINCT COALESCE([Color 1], [Color 2], [Color 3], [Color 4])) > 1;

--4 Write a query to find the count of sizes available for each color for a specific style code
SELECT 
    [Style Code],
    COALESCE([Color 1], [Color 2], [Color 3], [Color 4]) AS Color,
    COUNT(DISTINCT Reviews) AS SizeCount
FROM table2  
WHERE [Style Code] = 'YourSpecificStyleCode'  
GROUP BY [Style Code], COALESCE([Color 1], [Color 2], [Color 3], [Color 4]);

--5. Write a query to find styles that have a specific color
SELECT DISTINCT [Style Code]
FROM table2
WHERE 'YourSpecificColor' IN ([Color 1], [Color 2], [Color 3], [Color 4]);
