-- Question What is the average order value over the year?
-- Objective: Calculate the average order value (AOV).
-- Calculate the total sales as number of orders (assumption).


SELECT SUM (total_sales) as number_of_order,
         AVG (total_sales) AS average_order_value
FROM sales_table;

[
  {
    "number_of_order": "6019912",
    "average_order_value": "6019.9120000000000000"
  }
]