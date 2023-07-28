/* © 2023 Tushar Aggarwal. All rights reserved. 
https://github.com/tushar2704/
Pizza_Sales_Analysis
*/
/*---------------------------Creating DB----------------------------------------------------*/

CREATE DATABASE "Pizza_Sales_Analysis"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
----------------------------------------------------------------------------------------------



/*------------------------------------Table- Pizza-Sales------------------------------------*/

CREATE TABLE pizza_sales (
	pizza_id SERIAL,
	order_id INT,
	pizza_name_id VARCHAR(35),
	quantity INT,
	order_date DATE,
	order_time TIME,
	unit_price INT,
	total_price INT,
	pizza_size VARCHAR(5),
	pizza_category VARCHAR(35),
	pizza_ingredients VARCHAR(100),
	pizza_name VARCHAR(35)
	);










