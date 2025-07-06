-- Month with the Highest Total sales
Select Top 1 Format(order_date,'yyyy-MM') as Month ,sum(amount) as Total_sales 
from Orders
Group by Format(order_date,'yyyy-MM')
Order by sum(amount) desc;