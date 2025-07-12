-- Returning vs One-time Customers

with customer_orders as(
Select customer_id,count(order_id) as order_count from Orders
Group by customer_id),
customer_type_classification as (
Select customer_id,case when order_count = 1 then 'One-time Customer' else 'Returning Customer'end as customer_type
from customer_orders
)
Select customer_type,Count(customer_id) as Number_of_Customers
From customer_type_classification
Group by customer_type