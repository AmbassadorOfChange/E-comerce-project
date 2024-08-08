-- Question: What is the monthly sales trend?
-- Objective: Analyze how sales vary month by month across the year.
-- Sum sales for each month.

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


[
  {
    "month_1_sales": "498306",
    "month_2_sales": "507661",
    "month_3_sales": "506739",
    "month_4_sales": "503823",
    "month_5_sales": "487194",
    "month_6_sales": "491653",
    "month_7_sales": "507011",
    "month_8_sales": "504569",
    "month_9_sales": "491934",
    "month_10_sales": "514798",
    "month_11_sales": "505838",
    "month_12_sales": "500386"
  }
]