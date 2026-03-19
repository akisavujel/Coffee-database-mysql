<div align="center">

# ☕ Coffee Sales Database Project

### 🗄️ SQL Database Design · Sales Analytics · Business Insights

[![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com)
[![SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=postgresql&logoColor=white)](https://www.mysql.com)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/akisavujel)

</div>

---

## 📌 Overview

A **Coffee Sales Database** designed to track and analyze coffee product sales, customer behavior, and city-level consumption. This project demonstrates skills in **SQL database design, data analysis, and reporting** using a relational database schema.

---

## 🎯 Objectives
```
01  Design a relational database schema for coffee sales
02  Analyze sales performance across products and cities
03  Understand customer behavior and spending patterns
04  Perform time-based analysis of sales trends
05  Generate actionable business insights using SQL queries
```

---

## 📁 Project Structure
```
Coffee-Sales-Database/
│
├── schema.sql              # Database schema and table creation
├── queries.sql             # Analysis and reporting queries
├── README.md               # Project documentation
└── data/
    ├── products.csv        # Product data
    ├── customers.csv       # Customer data
    ├── cities.csv          # City data
    └── sales.csv           # Sales data
```

---

## 🗄️ Database Schema

### 1. `product`

| Column | Type | Description |
|--------|------|-------------|
| `product_id` | INT | Unique ID for each product |
| `product_name` | TEXT | Name of the product |
| `price` | INT | Price of the product |

### 2. `customer`

| Column | Type | Description |
|--------|------|-------------|
| `customer_id` | INT | Unique ID for each customer |
| `customer_name` | TEXT | Name of the customer |
| `city_id` | INT | City the customer belongs to |

### 3. `city`

| Column | Type | Description |
|--------|------|-------------|
| `city_id` | INT | Unique city ID |
| `city_name` | TEXT | Name of the city |
| `population` | INT | Population of the city |
| `estimated_rent` | INT | Average rent in the city |
| `city_rank` | INT | Rank based on size or importance |

### 4. `sales`

| Column | Type | Description |
|--------|------|-------------|
| `sale_id` | INT | Unique sale ID |
| `sale_date` | TEXT | Date and time of the sale |
| `product_id` | INT | Product sold (FK → `product`) |
| `customer_id` | INT | Customer who purchased (FK → `customer`) |
| `total` | INT | Total revenue of the sale |
| `rating` | INT | Customer rating of the product |

---

## 🔄 Analysis Pipeline
```
📥 Raw Data Import
   │
   ▼
🗄️ Database Design ──── Schema creation, table relationships
   │
   ▼
🔍 SQL Queries ──────── Joins, aggregations, filters, time analysis
   │
   ▼
📊 Reporting ────────── Revenue, ratings, customer insights
   │
   ▼
💡 Insights ─────────── Business conclusions and recommendations
```

---

## 📊 Project Features

| Feature | Description |
|---------|-------------|
| 📈 Sales Analytics | Total sales per product, revenue per city, top sellers |
| 🏙️ City Insights | Estimated coffee consumers (25% of population) |
| ⏰ Time Analysis | Distribution of sales by hour and day |
| ⭐ Product Performance | Average rating and top 3 products by revenue |
| 👤 Customer Insights | Top customers by spending and loyalty potential |

---

## 🛠️ Technologies Used

| Tool | Purpose |
|------|---------|
| MySQL | Database creation, management, and querying |
| MySQL Workbench | Schema design and table visualization |
| SQL | Data manipulation, aggregation, joins, filtering |
| CSV / Data Import | Importing initial datasets into the database |
| Git & GitHub | Version control and repository hosting |

---

## 💡 Key Insights

| # | Insight |
|---|---------|
| 01 | ☕ **Top products** consistently generate the highest sales and revenue |
| 02 | 🏙️ **Kathmandu** contributes the most to total sales among all cities |
| 03 | 👤 **High-value customers** are strong targets for loyalty programs |
| 04 | 📊 **25% of city population** estimated to consume coffee per city |
| 05 | ⏰ **Sales peak at specific hours** — useful for staffing and promotions |
| 06 | ⭐ **Higher rated products** tend to perform better in sales volume |
| 07 | 🗺️ **Best-selling products vary by city** — indicating regional preferences |

---

## ✅ Conclusion

This Coffee Sales Database project demonstrates practical skills in **relational database design, SQL querying, and data analysis**. By managing data across products, customers, sales, and cities, meaningful insights were derived including top-selling products, revenue distribution, customer spending patterns, and estimated coffee consumption per city.

> The project highlights ability to perform **complex joins, aggregations, and time-based analyses** — providing actionable business insights suitable for a data analyst portfolio.

---

## 👤 Author

<div align="center">

**Akisha Bhujel** — Data Analyst

[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/akisavujel)
[![Kaggle](https://img.shields.io/badge/Kaggle-20beff?style=for-the-badge&logo=kaggle&logoColor=white)](https://www.kaggle.com/akisavujel)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/akishabhujel/)
[![Portfolio](https://img.shields.io/badge/Portfolio-000000?style=for-the-badge&logo=firefox&logoColor=white)](https://akisavujel.github.io/Portfolio/)
[![Hashnode](https://img.shields.io/badge/Hashnode-2962FF?style=for-the-badge&logo=hashnode&logoColor=white)](https://hashnode.com/@akisavujel)
[![LeetCode](https://img.shields.io/badge/LeetCode-FFA116?style=for-the-badge&logo=leetcode&logoColor=white)](https://leetcode.com/u/akishabhujel/)

</div>

---

<div align="center">
<img src="https://media.giphy.com/media/v1.Y2lkPWVjZjA1ZTQ3a3o2YnMzdzZzN2R3NWo2M281aWRueGR5YXhoZmRvM2Q2eW5ld2NoZiZlcD12MV9naWZzX3NlYXJjaCZjdD1n/vxCqvjvJqjJHW/giphy.gif" width="300"/>
</div>

---

<div align="center">
<sub>⭐ If this project helped you, consider giving it a star!</sub>
</div>
