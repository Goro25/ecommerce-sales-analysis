-- Top 5 Products by Total Sales
Select  P.product_name as Product_name,Sum(O.amount) as Total_sales from Products P
join Orders O
on P.product_id = O.product_id
Group by P.product_name
Order by Total_sales desc;
