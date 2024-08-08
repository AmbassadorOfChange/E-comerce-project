-- Question: What are the top-selling products?
-- Objective: Identify products with the highest sales over the year.
-- Calculate total order for each product.

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