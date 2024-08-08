-- Question: How do review scores correlate with sales?
-- Objective: Explore the relationship between product review scores and their sales performance.
-- Calculate total sales and average review score for each product.

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
[
  {
    "product_id": 12,
    "product_name": "Product_12",
    "review_score": "5",
    "total_sales": "5961"
  },
  {
    "product_id": 55,
    "product_name": "Product_55",
    "review_score": "5",
    "total_sales": "6926"
  },
  {
    "product_id": 75,
    "product_name": "Product_75",
    "review_score": "5",
    "total_sales": "5885"
  },
  {
    "product_id": 89,
    "product_name": "Product_89",
    "review_score": "5",
    "total_sales": "5990"
  },
  {
    "product_id": 105,
    "product_name": "Product_105",
    "review_score": "5",
    "total_sales": "5714"
  },
  {
    "product_id": 210,
    "product_name": "Product_210",
    "review_score": "5",
    "total_sales": "5105"
  },
  {
    "product_id": 334,
    "product_name": "Product_334",
    "review_score": "5",
    "total_sales": "5618"
  },
  {
    "product_id": 349,
    "product_name": "Product_349",
    "review_score": "5",
    "total_sales": "4304"
  },
  {
    "product_id": 465,
    "product_name": "Product_465",
    "review_score": "5",
    "total_sales": "4602"
  },
  {
    "product_id": 585,
    "product_name": "Product_585",
    "review_score": "5",
    "total_sales": "6489"
  }
]


