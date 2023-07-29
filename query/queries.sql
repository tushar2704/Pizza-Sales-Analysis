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
	TO_CHAR(order_date, 'Day') AS order_day,
	COUNT(DISTINCT order_id) AS Total_Orders
FROM
	pizza_sales
GROUP BY
	order_day
ORDER BY
	Total_Orders DESC
	;
	
--7)Monthly Trend for Total Orders
SELECT
	TO_CHAR(order_date, 'Month') AS Month_Name,
	COUNT(DISTINCT order_id) AS Total_Orders
FROM
	pizza_sales
GROUP BY
	Month_Name
ORDER BY 
	Total_Orders DESC
	;

--8)% of Sales by Pizza Category
SELECT
	pizza_category,
	ROUND(SUM(total_price) *100 / (SELECT SUM(total_price)
							 FROM pizza_sales
								),2) 
	AS percent_of_Sales
FROM
	pizza_sales
GROUP BY
	pizza_category
	;
	
--9)% of Sales by Pizza Size
SELECT 
	pizza_size, 
	ROUND(SUM(total_price)*100 / (SELECT SUM(total_price)
							FROM pizza_sales
								),2) 
	AS percent_of_sales
FROM
	pizza_sales
GROUP BY
	pizza_size
ORDER BY
	percent_of_sales DESC
	;

--10)Top 5 Best Sellers by Revenue
SELECT
	pizza_name, SUM(total_price) AS Total_Revenue
FROM
	pizza_sales
GROUP BY 
	pizza_name
ORDER BY
	Total_Revenue DESC
LIMIT 
	5
	;

--11)Bottom 5 Sellers by Revenue
SELECT
	pizza_name, SUM(total_price) AS Total_Revenue
FROM
	pizza_sales
GROUP BY 
	pizza_name
ORDER BY
	Total_Revenue
LIMIT 
	5
	;

--12)Top 5 Best Sellers by Quantity
SELECT
	pizza_name, SUM(quantity) AS Total_Quantity
FROM
	pizza_sales
GROUP BY 
	pizza_name
ORDER BY
	Total_Quantity DESC
LIMIT 
	5
	;

--13)Bottom 5 Sellers by Revenue
SELECT
	pizza_name, SUM(quantity) AS Total_Quantity
FROM
	pizza_sales
GROUP BY 
	pizza_name
ORDER BY
	Total_Quantity 
LIMIT 
	5
	;

--14)Top 5 Best Sellers by Total Orders
SELECT
	pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM
	pizza_sales
GROUP BY 
	pizza_name
ORDER BY
	Total_Orders DESC
LIMIT 
	5
	;

--15)Bottom 5 Sellers by Total Orders
SELECT
	pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM
	pizza_sales
GROUP BY 
	pizza_name
ORDER BY
	Total_Orders
LIMIT 
	5
	;





















































