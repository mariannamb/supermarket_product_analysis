--Total Revenue--
SELECT 
    SUM(Total) AS Total_Revenue, 
    SUM(Quantity) AS Total_Quantity
FROM supermarket_sales;


--Total Revenue and Qty Sold by Product Line--
SELECT 
    Product_Line, 
    SUM(Total) AS Total_Revenue, 
    SUM(Quantity) AS Total_Quantity
FROM supermarket_sales
GROUP BY Product_Line
ORDER BY Total_Revenue DESC; 

--City Performance--
SELECT 
    City,
    SUM(Total) AS Total_Revenue
FROM supermarket_sales
GROUP BY City
ORDER BY Total_Revenue DESC;


--City Performance by Product Line--
SELECT 
    city, 
    Product_Line, 
    SUM(Total) AS Total_Revenue, 
    SUM(Quantity) AS Total_Quantity
FROM supermarket_sales
GROUP BY City, Product_Line
ORDER BY City, Total_Revenue DESC;


--Revenue by Day of the Week--
SELECT 
    to_char(Sale_Date, 'Day') AS Day_Of_Week, 
    SUM(Total) AS Total_Revenue
FROM supermarket_sales
GROUP BY Day_Of_Week;

--Revenue by Day of the Week and Product Line--
SELECT 
    product_line,
    to_char(Sale_Date, 'Day') AS Day_Of_Week, 
    SUM(Total) AS Total_Revenue
FROM supermarket_sales
GROUP BY product_line, Day_Of_Week
ORDER BY product_line, Total_Revenue DESC;


--Revenue by Month--
SELECT 
    to_char(Sale_Date, 'Month') AS Month, 
    SUM(Total) AS Total_Revenue
FROM supermarket_sales
GROUP BY Month;


--Revenue by Month and Product Line--
SELECT 
    product_line,
    to_char(Sale_Date, 'Month') AS Month, 
    SUM(Total) AS Total_Revenue
FROM supermarket_sales
GROUP BY product_line, Month 
ORDER BY product_line, Total_Revenue DESC;
