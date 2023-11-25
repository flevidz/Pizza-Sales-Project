# Pizza-Sales-Project

KPI REQUIREMENTS
![image](https://github.com/flevidz/Pizza-Sales-Project/assets/150502418/66d14ab6-1e72-41ea-a540-2f8e1a3e3df2)
![image](https://github.com/flevidz/Pizza-Sales-Project/assets/150502418/44eca75b-cb35-4e10-9f59-b1337d90bb4b)
![image](https://github.com/flevidz/Pizza-Sales-Project/assets/150502418/23a61ec6-6824-4e40-8251-2cee47d08cae)

#TOOLS USED
*SQL SERVER MANAGEMENT STUDIO(SSMS)
*MICROSOFT POWERBI

1)DATA ANALYSIS WITH SQL SERVER MANAGEMENT STUDIO(SSMS)
>Connected to the server
>Created the Database
>Imported the Dataset to the Database

2)DATA VISUALIZATION USING POWERBI

#Dashboards Screenshots
![image](https://github.com/flevidz/Pizza-Sales-Project/assets/150502418/2f05e4e5-6edc-4a7b-a855-ceb761c386cc)
![image](https://github.com/flevidz/Pizza-Sales-Project/assets/150502418/07d6dc39-f163-46a8-b16e-1bb367f3fb60)

#Dashboard Overview
*HOME PAGE
> Major key metrics tracked -Total revenue,Total orders,Total pizzas sold,avg order value,avg pizza per order
> DAX formulas are used for these metrics.
> Used clustered column chart for daily orders trend
> Using Area chart plotted monthly trends for Total orders
> Donut charts depicts % of sales by size & Category
> Funnel chart shows Total pizzas sold by each category
> Added pizza category and date filters
> on Top left Page navigation buttons
*BEST/WORST SELLERS
> Using stacked bar chart depicted top 5 and bottom 5 pizza by revenue,quantity,Orders

#Measures created
1.Total Revenue = sum('dominos_sales$ (2)'[total_price])
2.Total Pizza Sold = sum('dominos_sales$ (2)'[quantity])
3.Total Orders = DISTINCTCOUNT('dominos_sales$ (2)'[order_id])
4.Average Pizza Per Order = [Total Pizza Sold]/[Total Orders]
5.Average Order Value = [Total Revenue]/[Total Orders]

#Insights
*Busiest days -
>Orders are highest on Monday/Sunday
>There are maximum orders from month of July and January
*Sales Performance
>CATEGORY:Classic contributes to maximum sales and total orders.
>SIZE:Large size pizza contributes to maximum sales.
*Best Sellers
>THAI Chicken Pizza maximum revenue.
>Classical Deluxe Pizza Maximum Quantity.
>Classical Deluxe Pizza maximum total orders.
*Worst Sellers
>Brie Care Pizza minimum revenue
>Brie Care Pizza Minimum Quantity
>Brie Care Pizza maximum total orders.










