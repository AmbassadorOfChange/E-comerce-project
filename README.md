### INTRODUCTION 
With the desire to provide an optimal strategy and actionable business insights to the e-commerce busines market, also, to solve the challenges and provide opportunity for effective sales performance, this project is tailored to answer the following questions.
1. What are the top-selling products?
2. What is the monthly sales trend?
3. Which product categories are the most popular?
4. How do review scores correlate with sales?
5. What is the average order value over the year?

### BACKGROUND


### THE TOOLS I USED
For deep diving into the E-commerce market, I harnessed several tools such as;
- SQL: The backbone of my analysis unabling me to query the database to gain critical insights.
- Excel: For data cleaning and preparing.
- ChatGPT: For extensive insights and trends on this project, ChatGPT played on optimal role.
- PostgresSQL: The choosen database management system, ideal for handling the job posting data.
- Visual Studio Code: The go to for database management and excuting SQL queries. 
- Git GitHub: Esential for version control and sharing SQL script and analysis ensuring, collaboration, and project tracking.


### THE ANALYSIS
Each query in this analysis is aimed at sharing insights on performance of sales of e-commerce market.
Here is how I approached each quesions.
Question: What are the top-selling products?
Objective: Identify products with the highest sales over the year.

``` QUERIES
-- First query of the original result.

SELECT 
    product_id, 
    product_name, 
    SUM(sales_month_1 + sales_month_2 + sales_month_3 + sales_month_4 + sales_month_5 + sales_month_6 + 
        sales_month_7 + sales_month_8 + sales_month_9 + sales_month_10 + sales_month_11 + sales_month_12) AS total_sales
FROM 
    sales_table
GROUP BY 
    product_id, product_name
ORDER BY 
    total_sales DESC
LIMIT 10;
```

## Insights and Trends
Close Competition Among Top Products: The top 10 products have sales figures that are very close, indicating a highly competitive market with no single product dominating.

Diverse Revenue Drivers: Multiple products contribute equally to total sales, reducing dependency on any single item and providing stability in revenue.

Opportunities for Strategic Growth: While the top products perform well, there’s potential for growth through targeted marketing, seasonal promotions, and customer feedback analysis.

Next Steps for Analysis
It would be insightful to break down the sales figures by month to see if these top-selling products have consistent sales throughout the year or if their success is driven by specific periods (e.g., holiday seasons).
Analyzing these products' review scores and customer feedback could help understand what makes them top-sellers and how to replicate that success with other products.

### Detailed Steps I Followed
Break Down Sales by Month:
Purpose: Identify whether the top-selling products have consistent sales throughout the year or if their success is driven by specific periods.

``` SQL Query: Aggregate monthly sales data for each top-selling product
-- Query to breakdown sales by month in order to generate insights and trends.
SELECT 
    product_name,
    SUM(sales_month_1) AS month_1_sales,
    SUM(sales_month_2) AS month_2_sales,
    SUM(sales_month_3) AS month_3_sales,
    SUM(sales_month_4) AS month_4_sales,
    SUM(sales_month_5) AS month_5_sales,
    SUM(sales_month_6) AS month_6_sales,
    SUM(sales_month_7) AS month_7_sales,
    SUM(sales_month_8) AS month_8_sales,
    SUM(sales_month_9) AS month_9_sales,
    SUM(sales_month_10) AS month_10_sales,
    SUM(sales_month_11) AS month_11_sales,
    SUM(sales_month_12) AS month_12_sales
FROM 
    sales_table
WHERE 
    product_id IN (224, 286, 734, 905, 180, 853, 239, 924, 937, 197)
GROUP BY 
    product_name;
```

### Summary of Monthly Sales Breakdown for Top-Selling Products
**Based on the monthly sales breakdown for the top-selling products, here are the key observations and insights:**

1. Seasonal and Promotional Peaks
Several products exhibit significant sales peaks in specific months, suggesting seasonal demand or successful promotional activities. For example:
Product_734 shows high sales in February and April (992 and 993 units respectively), likely due to seasonal factors or targeted promotions during these months.
Product_853 has a notable spike in February (1,000 units) and September (1,000 units), indicating strong sales in these particular months.
2. Consistency vs. Volatility
Some products maintain relatively consistent sales across the year, while others show significant fluctuations:
Product_905 and Product_286 maintain steady sales, with only minor variations, indicating consistent demand throughout the year.
In contrast, Product_937 has more volatile sales, with highs in January, March, and October, and lows in June and September, suggesting varying market conditions or demand.
3. Potential for Focused Marketing
Products with clear peak periods, such as Product_734 and Product_853, could benefit from intensified marketing and promotions during these times to maximize sales.
Conversely, products with lower sales in certain months, like Product_937 in June and September, might need targeted strategies to boost sales during these periods.


### Analysis for review score

``` SQL QUERY
-- Query to identify if review_score has a relationship or correlation in top selling product.

SELECT 
    product_name,
    AVG(review_score) AS Average_review_score
FROM 
    sales_table
WHERE 
    product_id IN (224, 286, 734, 905, 180, 853, 239, 924, 937, 197)
GROUP BY 
    product_name
ORDER BY Average_review_score DESC;
```
### Here are three key insights and trends based on the top 10 selling products and their average review scores:

High Sales with High Reviews: Products like Product_239 and Product_197 have both high sales and top-tier average review scores (4.9). This indicates that high customer satisfaction tends to correlate with high sales, suggesting that these products are both popular and well-received by customers.

Mixed Correlation Between Sales and Review Scores: While some products like Product_224 have strong sales and solid review scores (4.8), others like Product_180 and Product_286 show lower review scores (3.2 and 3.1, respectively) despite being top sellers. This suggests that factors other than customer satisfaction, such as pricing, availability, or marketing, may be driving their sales.

Low Review Scores and Potential Sales Risk: Products like Product_734, Product_924, and Product_937 have relatively low average review scores (2.7, 2.4, and 2.1, respectively). This trend could indicate potential issues with product quality or customer expectations, which might eventually impact their sales negatively if these issues are not addressed.


## QUESTION 2: Question: What is the monthly sales trend?
Objective: Analyze how sales vary month by month across the year.

``` QUERY
SELECT 
    SUM(sales_month_1) AS month_1_sales,
    SUM(sales_month_2) AS month_2_sales,
    SUM(sales_month_3) AS month_3_sales,
    SUM(sales_month_4) AS month_4_sales,
    SUM(sales_month_5) AS month_5_sales,
    SUM(sales_month_6) AS month_6_sales,
    SUM(sales_month_7) AS month_7_sales,
    SUM(sales_month_8) AS month_8_sales,
    SUM(sales_month_9) AS month_9_sales,
    SUM(sales_month_10) AS month_10_sales,
    SUM(sales_month_11) AS month_11_sales,
    SUM(sales_month_12) AS month_12_sales
FROM 
    sales_table;
```

### Insights and Trends From Analysis.
1. Overall Stability
The monthly sales are relatively stable throughout the year, fluctuating within a narrow range. The lowest sales occur in May (487,194), while the highest are in October (514,798).
2. Peak Sales
October has the highest sales (514,798), which might suggest a seasonal increase, potentially due to pre-holiday shopping or other events specific to that month.
3. Lowest Sales
May shows the lowest sales (487,194). This dip might be due to various factors such as the end of a sales cycle, less consumer demand, or the absence of major shopping events.
4. End-of-Year Sales
Sales slightly increase in the last quarter, with November (505,838) and December (500,386) maintaining higher levels, possibly due to holiday shopping.
5. Mid-Year Dip
There's a noticeable dip from April to June, with sales decreasing in May and June, before rising again in July. This could indicate a mid-year slowdown, possibly due to less consumer spending during the summer months.
6. Minor Fluctuations
Minor fluctuations from month to month suggest that external factors such as promotions, holidays, and economic conditions may play a role, but there isn't a drastic shift in consumer behavior throughout the year.
7. Possible Trends
The data hints at potential trends such as increased spending around holidays or specific seasonal events and a slight mid-year lull.
![monthly sales trend](C:\Users\user\Downloads\monthly_sales_trend.png)
## Chart of Monthly Sales Trend.

## QUESTION 3: Qeustion: Which product categories are the most popular?
Objective: Determine the product categories with the highest total sales.

``` QUERY
SELECT 
    category,
    SUM(sales_month_1 + sales_month_2 + sales_month_3 + sales_month_4 + sales_month_5 + sales_month_6 + 
        sales_month_7 + sales_month_8 + sales_month_9 + sales_month_10 + sales_month_11 + sales_month_12) AS total_sales
FROM 
    sales_table
GROUP BY 
    category
ORDER BY 
    total_sales DESC;
```

### Insights and Trends.
1. Books Lead the Market
The Books category is the most popular, with total sales of 938,229. This suggests a strong consumer preference for books, possibly driven by consistent demand across different genres or specific popular releases.
2. Close Competition Among Top Categories
Toys and Sports categories are close competitors, with total sales of 917,101 and 916,371 respectively. This near parity indicates a balanced interest in these categories, likely influenced by seasonal trends (e.g., holidays, sports seasons) or demographic factors (e.g., families with children).
3. Electronics and Health Show Significant Demand
Electronics and Health are also popular categories, with sales of 845,120 and 834,414 respectively. The demand for electronics could be driven by ongoing technological advancements, while health-related products likely reflect a growing consumer focus on wellness.


## QUESTION 4: -- Question: How do review scores correlate with sales?
-- Objective: Explore the relationship between product review scores and their sales performance.

``` QUERY
SELECT 
    product_id, 
    product_name, 
    review_score,
    SUM(sales_month_1 + sales_month_2 + sales_month_3 + sales_month_4 + sales_month_5 + sales_month_6 + 
        sales_month_7 + sales_month_8 + sales_month_9 + sales_month_10 + sales_month_11 + sales_month_12) AS total_sales
FROM 
    sales_table
GROUP BY 
    product_id, product_name, review_score
ORDER BY review_score DESC
LIMIT 10;
```
