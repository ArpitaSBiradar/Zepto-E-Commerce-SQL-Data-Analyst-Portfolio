# ZEPTO E-COMMERCE SQL DATA ANALYST PORTFOLIO

## 📌 Project Overview

This project focuses on analyzing e-commerce inventory and product pricing data using SQL in PostgreSQL. The goal is to explore product categories, evaluate discounts, analyze stock availability, estimate potential revenue, and identify pricing trends to support data-driven business decisions.

The project demonstrates practical SQL skills, including data exploration, data cleaning, aggregation, filtering, sorting, conditional logic, and business-oriented analysis.

## 📂 Dataset Description

The dataset contains product-level information from Zepto, an e-commerce quick-commerce platform.

**Key attributes include:**
- `sku_id` – Unique identifier for each product SKU.
- `category` – Product category.
- `name` – Product name.
- `mrp` – Maximum Retail Price.
- `discountPercent` – Discount percentage offered.
- `availableQuantity` – Available inventory quantity.
- `discountedSellingPrice` – Selling price after discount.
- `weightInGms` – Product weight in grams.
- `outOfStock` – Indicates whether a product is out of stock.
- `quantity` – Product quantity field in the dataset.

## 🛠️ Tools & Technologies

- **PostgreSQL** – Database management and SQL analysis.
- **SQL** – Data exploration, cleaning, aggregation, and business analysis.
- **pgAdmin** – SQL query execution and database management.

## 🔍 Project Workflow

### 1. Database and Table Creation

Created the `zepto` table in PostgreSQL with appropriate data types, including `SERIAL`, `VARCHAR`, `NUMERIC`, `INTEGER`, and `BOOLEAN`, to store product and inventory information.

### 2. Data Exploration

Explored the dataset to understand its structure and identify data quality issues.

Key activities:
- Counted the total number of records.
- Retrieved sample records for initial inspection.
- Checked for missing values across important columns.
- Identified distinct product categories.
- Compared in-stock and out-of-stock product counts.
- Identified product names associated with multiple SKUs.

### 3. Data Cleaning

Performed data cleaning to improve data consistency and prepare the dataset for analysis.

Key activities:
- Identified products with zero MRP or selling prices.
- Removed records where MRP was zero.
- Converted MRP and discounted selling prices from paise to rupees by dividing the values by 100.

### 4. Business Analysis Using SQL

Developed SQL queries to answer important e-commerce business questions.

**Analysis 1: Top 10 Products by Discount Percentage**

Identified products offering the highest discount percentages to understand promotional pricing and value opportunities.

**Analysis 2: High-MRP Products That Are Out of Stock**

Identified out-of-stock products with an MRP greater than ₹300 to highlight potentially valuable products requiring inventory attention.

**Analysis 3: Estimated Revenue by Category**

Calculated estimated category-level revenue using discounted selling price multiplied by available quantity to compare inventory value across product categories.

**Analysis 4: High-Priced Products with Low Discounts**

Filtered products with an MRP above ₹500 and a discount percentage below 10% to identify premium products with limited discounts.

**Analysis 5: Top 5 Categories by Average Discount**

Calculated average discount percentages by category and identified the five categories offering the highest average discounts.

**Analysis 6: Price per Gram Analysis**

Calculated price per gram for products weighing at least 100 grams and sorted the results to identify comparatively cost-effective products.

**Analysis 7: Product Weight Categorization**

Used SQL `CASE` statements to classify products into three weight categories:
- Low: Below 1,000 grams.
- Medium: 1,000 to below 5,000 grams.
- Bulk: 5,000 grams and above.

**Analysis 8: Total Inventory Weight by Category**

Calculated total inventory weight by multiplying product weight by available quantity, helping compare inventory volume across categories.

## 💡 Key Business Applications

The analysis supports several potential business applications:

- **Pricing Strategy:** Identify products with high discounts and premium-priced products with limited discounts.
- **Inventory Management:** Highlight high-MRP products that are out of stock.
- **Category Performance:** Compare estimated inventory revenue and average discount levels across categories.
- **Value Analysis:** Evaluate product pricing relative to weight.
- **Inventory Planning:** Estimate the total physical weight of inventory by category.

## 📈 Key SQL Concepts Demonstrated

- `SELECT`, `WHERE`, and `DISTINCT`
- `GROUP BY` and `HAVING`
- `ORDER BY` and `LIMIT`
- Aggregate functions: `COUNT()`, `SUM()`, and `AVG()`
- Conditional logic using `CASE`
- Data cleaning using `UPDATE` and `DELETE`
- Null value identification
- Numeric calculations and rounding
- Table creation and data type selection

## 🚀 How to Run the Project

### Prerequisites
- PostgreSQL installed on your system.
- pgAdmin or another PostgreSQL-compatible SQL editor.
- The Zepto dataset in CSV format.

### Steps

1. Clone or download this repository.
2. Open PostgreSQL using pgAdmin.
3. Create a database for the project.
4. Execute the `CREATE TABLE` statement to create the `zepto` table.
5. Import the dataset into the table, ensuring that the CSV columns match the table schema.
6. Run the data exploration queries.
7. Execute the data cleaning statements.
8. Run the business analysis queries to explore product pricing, discounts, stock availability, and inventory metrics.

**Note:** Execute the data cleaning statements before the business analysis queries. The price conversion assumes that the original price values are stored in paise.

## 📁 Suggested Repository Structure

```text
ZEPTO-E-COMMERCE-SQL-DATA-ANALYST-PORTFOLIO/
│
├── dataset/
│   └── zepto.csv
│
├── sql/
│   └── zepto_analysis.sql
│
└── README.md
```

## 🎯 Project Outcome

This project demonstrates how SQL can be used to transform raw e-commerce product data into structured insights related to pricing, discounts, product availability, and inventory. It strengthened my practical understanding of PostgreSQL and business-focused data analysis.

## 👩‍💻 Author

Arpita S. Biradar

Aspiring Data Analyst | SQL | PostgreSQL | Data Exploration | Business Analytics

## 🔗 Connect

Explore the SQL queries and project files in this repository to learn more about the analysis.
