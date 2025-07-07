-- Top Spending Customer per Month
with Order_Month as (
Select Format(O.order_date,'yyyy-MM') as Month,C.customer_id as Customer_id ,Sum(O.amount) as total_spent
From Orders O
join Customers C
on O.customer_id = C.customer_id
Group by Format(O.order_date,'yyyy-MM'),C.customer_id),
Customer_rank as (
Select Month,Customer_id,total_spent,rank()over(partition by Month order by total_spent desc) as rnk
from Order_Month
)
Select Month,Customer_id,total_spent from Customer_rank where rnk=1;
