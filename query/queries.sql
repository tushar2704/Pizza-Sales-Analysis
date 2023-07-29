/* © 2023 Tushar Aggarwal. All rights reserved. 
@https://github.com/tushar2704/
Pizza-Sales-Analysis
*/
SELECT * FROM pizza_sales;

/*------------KPI's------------*/
--1)Total Revenue
SELECT
	SUM(total_price) AS total_revenue
FROM 
	pizza_sales;
	
--2)Average Order Value
SELECT
	SUM(total_price) / COUNT (DISTINCT order_id)  AS AVG_Order_Value

FROM
	pizza_sales;
	
--3)Total Pizza Sold
SELECT
	SUM(quantity) AS Total_Pizza_Sold
FROM
	pizza_sales;

--4)Total Orders
SELECT
	COUNT(DISTINCT order_id) AS Total_Orders
FROM
	pizza_sales;
	
--5)Average Pizzas Per Order
SELECT
	ROUND(
		
		ROUND(SUM(quantity),2) / ROUND(COUNT(DISTINCT order_id),2)
		
		,2) AS Average_pizza_per_order
FROM
	pizza_sales;



/*------------------------------------------------------------------------------*/


--6)Daily Trend for Total Orders
SELECT
	TO_CHAR(order_date, 'Day') as order_day,
	COUNT(DISTINCT order_id) AS Total_orders
FROM
	pizza_sales
GROUP BY
	order_day
	;
	
--7)Monthly Trend for Total Orders































































