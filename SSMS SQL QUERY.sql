--Total Revenue

select Sum(total_price)  FROM [PROJECT].[dbo].[dominos_sales$]
--817860.049999992

--Average Order Value

select sum(total_price)/count(distinct order_id) as avg_order_value
FROM [PROJECT].[dbo].[dominos_sales$]
--38.3072622950816

--Total Pizzas Sold

select sum(quantity) as total_pizza_sold
FROM [PROJECT].[dbo].[dominos_sales$]
--49574

--Total Orders

select count(distinct order_id) as total_orders
FROM [PROJECT].[dbo].[dominos_sales$]
--21350

--Average pizzas per order

SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) /
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2))  AS DECIMAL(10,2))  
AS Avg_Pizzas_per_order 
FROM [PROJECT].[dbo].[dominos_sales$]
--2.32

--Chart Requirements

--daily trend for total orders

select datename(DW,order_date) as order_day , count(distinct order_id) as total_orders
FROM [PROJECT].[dbo].[dominos_sales$]
group by datename(DW,order_date)

--monthly trend for total orders

select datename(MONTH,order_date) as month_name, count(distinct order_id) as total_orders
FROM [PROJECT].[dbo].[dominos_sales$]
group by datename(MONTH,order_date)

--% of sales by pizza category


SELECT pizza_category,CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue, 
CAST(SUM(total_price)*100 /(SELECT SUM(total_price) from  [PROJECT].[dbo].[dominos_sales$]) AS DECIMAL(10,2)) AS PCT
FROM [PROJECT].[dbo].[dominos_sales$]
GROUP BY pizza_category


--% of sales by pizza size



SELECT pizza_size,CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue, 
CAST(SUM(total_price)*100 /(SELECT SUM(total_price) from  [PROJECT].[dbo].[dominos_sales$]) AS DECIMAL(10,2)) AS PCT
FROM [PROJECT].[dbo].[dominos_sales$]
GROUP BY pizza_size


--total pizza sold by pizza category

select pizza_category,sum(quantity)
FROM [PROJECT].[dbo].[dominos_sales$]
GROUP BY pizza_category
order by sum(quantity) desc

--top 5 pizza by total_price

select top 5 pizza_name, sum(total_price)
FROM [PROJECT].[dbo].[dominos_sales$]
GROUP BY pizza_name
ORDER BY sum(total_price) desc


--bottom 5 pizza by total_price

select top 5 pizza_name, sum(total_price)
FROM [PROJECT].[dbo].[dominos_sales$]
GROUP BY pizza_name
order by sum(total_price)

--top 5 pizza by quantity

select top 5 pizza_name, sum(quantity)
FROM [PROJECT].[dbo].[dominos_sales$]
GROUP BY pizza_name
ORDER BY sum(quantity) desc


--bottom 5 pizza by quantity

select top 5 pizza_name, sum(quantity)
FROM [PROJECT].[dbo].[dominos_sales$]
GROUP BY pizza_name
ORDER BY sum(quantity) 


--top 5 pizza by total_orders

select top 5 pizza_name,count(distinct order_id) as A
FROM [PROJECT].[dbo].[dominos_sales$]
GROUP BY pizza_name
ORDER BY A desc


--bottom 5 pizza by total_orders

select top 5 pizza_name, count(distinct order_id) as A
FROM [PROJECT].[dbo].[dominos_sales$]
GROUP BY pizza_name
ORDER BY A














