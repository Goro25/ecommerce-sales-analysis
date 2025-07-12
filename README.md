# E-commerce Sales Analysis SQL Project

This project analyzes an e-commerce platform's sales data using advanced SQL queries. The goal is to generate key business insights such as monthly sales trends, customer behavior, and top-performing products.

---

## 📊 Dataset Overview

The project is based on three tables:

1. **Customers**

   * `customer_id` (INT)[Primary Key]
   * `name` (VARCHAR)
   * `email` (VARCHAR)
   * `city` (VARCHAR)
   * `signup_date` (DATE)

2. **Products**

   * `product_id` (INT)[Primary Key]
   * `product_name` (VARCHAR)
   * `category` (VARCHAR)
   * `price` (DECIMAL)

3. **Orders**

   * `order_id` (INT)[Primary Key]
   * `customer_id` (INT)[Foreign Key]
   * `product_id` (INT)[Foreign Key]
   * `amount` (DECIMAL)
   * `order_date` (DATE)
   * `quantity` (INT)

---

## ✅ Completed Tasks

### 1. Category-wise Total Sales

Displays total revenue generated from each product category.

### 2. Monthly Sales Trend

Analyzes sales trends month by month using order date.

### 3. Customer-wise Total Spending (Top 3)

Calculates how much each customer has spent in total.

### 4. Month with Highest Total Sales

Identifies the month with maximum revenue.

### 5. Top 5 Products by Total Sales

Ranks products based on total sales and returns top 5.

### 6. Top 3 Active Customers

Ranks the active customers based upon the number of orders placed and displays the Top 3.

### 7. Top Spenders per Month

Shows the customers who have spent most month wise.

### 8. Customers Who Purchased from Multiple Categories

Finds customers who purchased from more than one product category.

### 9. Returning vs One-time Customers

Counts customers based on whether they placed more than one order.

### 10. Category-wise Sales Trend per Month

Shows sales for each category over each month.

---

## 💻 Tools Used

* SQL Server Management Studio (SSMS)
* GitHub for version control

---

## 🚀 How to Use

1. Clone this repository
2. Load the schema and data into SSMS
3. Run each query file step by step to reproduce insights

---

## 📂 File Structure

* `Total_Sales_by_Category.sql`
* `Monthly_Sales_Trend.sql`
* `Top_3_Customers_by_Spending.sql`
* `Peak_Sales_Month.sql`
* `TOP_5_Products_by_Sales.sql`
* `Top_3_Active_Customers.sql`
* `Top_Spenders_Per_Month.sql`
* `Customers_Multiple_Categories.sql`
* `Customer_Type_Analysis.sql`
* `Category_Monthly_Sales_Trend.sql`

---


