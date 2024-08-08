-- Qeustion: Which product categories are the most popular?
-- Objective: Determine the product categories with the highest total sales.
-- Calculate total sales for each category.

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


[
  {
    "category": "Books",
    "total_sales": "938229"
  },
  {
    "category": "Toys",
    "total_sales": "917101"
  },
  {
    "category": "Sports",
    "total_sales": "916371"
  },
  {
    "category": "Electronics",
    "total_sales": "845120"
  },
  {
    "category": "Health",
    "total_sales": "834414"
  },
  {
    "category": "Clothing",
    "total_sales": "826536"
  },
  {
    "category": "Home & Kitchen",
    "total_sales": "742141"
  }
]