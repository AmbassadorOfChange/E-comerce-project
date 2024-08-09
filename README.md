### INTRODUCTION 
With the desire to provide an optimal strategy and actionable business insights to the e-commerce busines world, also, to solve the challenges and provide opportunity for effective performance, this project is tailored to answer the following questions.
1. What are the top-selling products?
2. What is the monthly sales trend?
3. Which product categories are the most popular?
4. How do review scores correlate with sales?
5. What is the average order value over the year?

### BACKGROUND


### THE TOOLS I USED
For deep diving into the E-commerce, I harnessed several tools such as;
- SQL: The backbone of my analysis unabling me to query the database to gain critical insights.
- ChatGPT: For extensive insights and trends on this project, ChatGPT played on optimal role.
- PostgresSQL: The choosen database management system, ideal for handling the job posting data.
- Visual Studio Code: The go to for database management and excuting SQL queries. 
- Git GitHub: Esential for version control and sharing SQL script and analysis ensuring, collaboration, and project tracking.


### THE ANALYSIS
Each query in this analysis is aimed at investigating specifically business analyst job market.
Here is how I approached each quesions.
Question: What are the top-selling products?

## Insights and Trends
Close Competition Among Top Products: The top 10 products have sales figures that are very close, indicating a highly competitive market with no single product dominating.

Diverse Revenue Drivers: Multiple products contribute equally to total sales, reducing dependency on any single item and providing stability in revenue.

Opportunities for Strategic Growth: While the top products perform well, there’s potential for growth through targeted marketing, seasonal promotions, and customer feedback analysis.

Next Steps for Analysis
It would be insightful to break down the sales figures by month to see if these top-selling products have consistent sales throughout the year or if their success is driven by specific periods (e.g., holiday seasons).
Analyzing these products' review scores and customer feedback could help understand what makes them top-sellers and how to replicate that success with other products.

Objective: To understand the performance dynamics of the top-selling products and uncover opportunities for further growth by analyzing monthly trends and customer feedback.

Detailed Steps to Follow:
Break Down Sales by Month:

Purpose: Identify whether the top-selling products have consistent sales throughout the year or if their success is driven by specific periods.
SQL Query: Aggregate monthly sales data for each top-selling product


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
