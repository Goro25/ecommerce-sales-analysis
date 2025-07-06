-- Identify the TOP 3 customers by Total Spending

Select TOP 3 C.customer_id,C.name as customer_name,sum(O.amount) as total_spent
from Customers C
join Orders O
on C.customer_id = O.customer_id
Group by C.customer_id,C.name
Order by total_spent desc;