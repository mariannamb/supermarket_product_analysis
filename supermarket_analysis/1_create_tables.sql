CREATE TABLE supermarket_sales (
    Invoice_ID VARCHAR(15) PRIMARY KEY,
    Branch CHAR(1),
    City VARCHAR(50), -- Names of cities (e.g., Yangon)
    Customer_Type VARCHAR(15), -- Types of customers (e.g., Member, Normal)
    Gender VARCHAR(10), 
    Product_Line VARCHAR(50), 
    Unit_Price DECIMAL(10, 2), -- Prices with two decimal points
    Quantity INT, -- Number of units purchased
    Tax_5_Percent DECIMAL(10, 4), 
    Total DECIMAL(10, 4), 
    Sale_Date DATE, -- Sale date in 'YYYY-MM-DD' format
    Sale_Time TIME, -- Sale time in 'HH:MM:SS' format
    Payment VARCHAR(20), 
    COGS DECIMAL(10, 2),
    Gross_Margin_Percentage DECIMAL(10, 8), -- Margin percentage with precision
    Gross_Income DECIMAL(10, 4), -- Gross income per sale
    Rating DECIMAL(3, 1) -- Ratings with one decimal precision
);

ALTER TABLE supermarket_sales OWNER to postgres;