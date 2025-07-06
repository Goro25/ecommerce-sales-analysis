-- Most Active Customers
Select TOP 3 C.customer_id as Customer_id,C.name as Customer_name,count(O.customer_id) as Total_orders,sum(O.amount) as Total_spent
from Customers C
join Orders O
on C.customer_id = O.customer_id
Group by C.customer_id,C.name
Order by Total_orders desc,Total_spent desc;
