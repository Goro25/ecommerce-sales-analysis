-- Identify Customers Who Purchased from More Than One Category

Select O.customer_id,count(O.product_id) as number_of_categories from Orders O
join Products P
on O.product_id = P.product_id
Group by O.customer_id
Having count(distinct P.category) > 1