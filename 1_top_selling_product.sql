-- Question: What are the top-selling products?
-- Objective: Identify products with the highest sales over the year.
-- Calculate total order for each product.

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


SELECT 
    product_name,
    SUM(total_sales) AS grand_profit
FROM 
    sales_table
WHERE 
    product_id IN (224, 286, 734, 905, 180, 853, 239, 924, 937, 197)
GROUP BY 
    product_name
ORDER BY grand_profit DESC;

[
  {
    "product_id": 224,
    "product_name": "Product_224",
    "total_sales": "9151"
  },
  {
    "product_id": 286,
    "product_name": "Product_286",
    "total_sales": "8921"
  },
  {
    "product_id": 734,
    "product_name": "Product_734",
    "total_sales": "8914"
  },
  {
    "product_id": 905,
    "product_name": "Product_905",
    "total_sales": "8783"
  },
  {
    "product_id": 180,
    "product_name": "Product_180",
    "total_sales": "8775"
  },
  {
    "product_id": 853,
    "product_name": "Product_853",
    "total_sales": "8765"
  },
  {
    "product_id": 239,
    "product_name": "Product_239",
    "total_sales": "8724"
  },
  {
    "product_id": 924,
    "product_name": "Product_924",
    "total_sales": "8525"
  },
  {
    "product_id": 937,
    "product_name": "Product_937",
    "total_sales": "8459"
  },
  {
    "product_id": 197,
    "product_name": "Product_197",
    "total_sales": "8418"
  }
]