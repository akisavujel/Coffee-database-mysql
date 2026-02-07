# Coffee Sales Database Project

## Project Overview
This project is a **Coffee Sales Database** designed to track and analyze coffee product sales, customer behavior, and city-level consumption. It demonstrates skills in **SQL database design, data analysis, and reporting**. The project uses a relational database schema to manage products, customers, sales, and city information, and includes queries for analytics and business insights.

## Database Schema

### **Tables**

#### 1. `product`
| Column Name   | Data Type | Description                 |
|---------------|-----------|-----------------------------|
| product_id    | INT       | Unique ID for each product  |
| product_name  | TEXT      | Name of the product         |
| price         | INT       | Price of the product        |

#### 2. `customer`
| Column Name    | Data Type | Description                     |
|----------------|-----------|---------------------------------|
| customer_id    | INT       | Unique ID for each customer     |
| customer_name  | TEXT      | Name of the customer            |
| city_id        | INT       | ID of the city the customer belongs to |

#### 3. `city`
| Column Name       | Data Type | Description                     |
|------------------|-----------|---------------------------------|
| city_id           | INT       | Unique city ID                  |
| city_name         | TEXT      | Name of the city                |
| population        | INT       | Population of the city          |
| estimated_rent    | INT       | Average rent in the city        |
| city_rank         | INT       | Rank based on size or importance|

#### 4. `sales`
| Column Name    | Data Type | Description                     |
|----------------|-----------|---------------------------------|
| sale_id        | INT       | Unique sale ID                  |
| sale_date      | TEXT      | Date and time of the sale       |
| product_id     | INT       | Product sold (FK to `product`)  |
| customer_id    | INT       | Customer who made the purchase  |
| total          | INT       | Total revenue of the sale       |
| rating         | INT       | Customer rating of the product  |

## Project Features

1. **Sales Analytics**
   - Total number of sales per product
   - Revenue per product and city
   - Top-selling products and top customers

2. **Customer & City Insights**
   - Estimated coffee consumers per city (25% of population)
   - Sales distribution by city
   - Average products sold per day

3. **Time-Based Analysis**
   - Distribution of sales by hour
   - Trends in product demand over time

4. **Product Performance**
   - Average product rating
   - Top 3 products based on revenue

## Technologies Used

- **MySQL** – For creating and managing the relational database, writing queries, and performing data analysis.  
- **MySQL Workbench** – For designing the database schema, testing queries, and visualizing table relationships.  
- **SQL (Structured Query Language)** – Used for data manipulation, aggregation, joins, filtering, and reporting.  
- **CSV / Data Import Tools** – For importing initial datasets into the database.  
- **Git & GitHub** – Version control and hosting the project repository.  

## Key Insights

- **Top-Selling Products:** Certain coffee products consistently generate the highest sales and revenue, indicating strong customer preference for specific items.  
- **Revenue Distribution:** Revenue is unevenly distributed across cities, with larger cities like Kathmandu contributing the most to total sales.  
- **Customer Spending:** Some customers contribute significantly more to total revenue, highlighting potential targets for loyalty programs or promotions.  
- **Coffee Consumption:** Approximately 25% of the population in each city is estimated to consume coffee, helping understand market potential per city.  
- **Time-Based Sales Trends:** Sales are concentrated at specific hours of the day, which can inform staffing, promotions, and inventory planning.  
- **Product Performance:** Products with higher average ratings tend to perform better in sales, suggesting that customer satisfaction correlates with demand.  
- **City-Wise Product Popularity:** The best-selling product varies by city, indicating regional preferences that can guide marketing and stock decisions.  

## Conclusion

This Coffee Sales Database project demonstrates practical skills in **relational database design, SQL querying, and data analysis**. By managing and analyzing data across multiple tables—products, customers, sales, and cities—we were able to derive meaningful insights, such as top-selling products, revenue distribution, customer spending patterns, and estimated coffee consumption per city.

The project highlights the ability to perform **complex joins, aggregations, and time-based analyses**, providing actionable business insights. It serves as a strong example of applying database and analytics skills to real-world scenarios, making it a valuable addition to a portfolio for aspiring data analysts or IT professionals.

## Author

- Akisha Bhujel
- Github - https://github.com/akisavujel
- Kaggle - https://www.kaggle.com/akisavujel
- Linked in - https://www.linkedin.com/in/akisa-vujel-5437843a2/
