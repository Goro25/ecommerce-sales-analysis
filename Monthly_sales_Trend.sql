-- Monthly Sales Trend Analysis
Select Format(order_date,'yyyy-MM') as month,sum(amount) as total_sales
From Orders
Group by Format(order_date,'yyyy-MM');

