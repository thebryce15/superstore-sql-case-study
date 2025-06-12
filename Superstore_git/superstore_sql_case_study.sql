-- ANALYSIS 1: Profitability by Product Category and Sub-Category
-- Goal: Identify top and bottom performing product types by total profit and margin
-- Insight: Use to flag product lines for potential price adjustment or removal
SELECT 
    Category, 
    Sub-Category, 
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales), 2) AS profit_margin
FROM superstore_sales
GROUP BY Category, Sub-Category
ORDER BY total_profit ASC;

-- ANALYSIS 2: Profit by Region and State
-- Goal: Identify regional and state-level performance for strategic planning
-- Insight: Pinpoint geographic areas needing pricing or sales strategy adjustments
SELECT 
    Region, 
    State, 
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0), 2) AS profit_margin
FROM superstore_sales
GROUP BY Region, State
ORDER BY total_profit ASC;

-- ANALYSIS 3: Customer Segment Profitability
-- Goal: Evaluate which customer segments drive the most profit and sales
-- Insight: Inform targeting, promotions, and retention strategies
SELECT 
    Segment, 
    COUNT(DISTINCT Customer_ID) AS unique_customers,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales), 2) AS profit_margin
FROM superstore_sales
GROUP BY Segment
ORDER BY total_profit DESC;

-- ANALYSIS 4: Loss-Leader Products
-- Goal: Identify products with strong sales but negative profit (potential pricing issues)
-- Insight: Highlight products that are expensive to move and may drag down margins
SELECT 
    Product_Name,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_sales
GROUP BY Product_Name
HAVING SUM(Sales) > 1000 AND SUM(Profit) < 0
ORDER BY total_sales DESC;

-- ANALYSIS 5: Monthly Profit Margin Trends
-- Goal: Track month-over-month trends in sales, profit, and margin
-- Note: Assumes Order_Date in MM/DD/YYYY format
SELECT 
    STRFTIME('%Y-%m', DATE(
        SUBSTR(Order_Date, 7, 4) || '-' || 
        SUBSTR(Order_Date, 1, 2) || '-' || 
        SUBSTR(Order_Date, 4, 2)
    )) AS order_month,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0), 2) AS profit_margin
FROM superstore_sales
GROUP BY order_month
ORDER BY order_month;