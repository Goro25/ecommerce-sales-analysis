-- Category wise Monthly Sales Trend

Select P.category as Category,Format(O.order_date,'yyyy-MM') as Month,Sum(O.amount) as Sum_of_sales_per_Category
from Orders O
join Products P
on O.product_id = P.product_id
Group by P.category,Format(O.order_date,'yyyy-MM');