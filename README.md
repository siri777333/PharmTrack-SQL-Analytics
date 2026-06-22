#  PharmTrack: Pharmacy Sales & Inventory Analytics (SQL Project)

##  Project Overview

PharmTrack is a SQL-based Pharmacy Sales and Inventory Analytics project designed to analyze medicine sales, customer purchasing behavior, inventory performance, and revenue trends within a retail pharmacy environment.

The objective of this project was not only to manage pharmacy data but also to transform raw transactional data into actionable business insights that support data-driven decision-making in inventory planning, customer retention, revenue optimization, and operational efficiency.

Using SQL Server, a relational database was designed and analyzed to uncover patterns in customer purchases, medicine demand, revenue generation, stock management, and business performance.

This project demonstrates how SQL can be used not only for data retrieval but also for solving real-world business problems in the healthcare and pharmaceutical industry.

#  Executive Summary

The PharmTrack analysis uncovered three critical business insights that directly impact revenue generation, inventory management, and long-term business growth.

### Revenue Is Highly Concentrated in Chronic Disease Medicines

The Cardiac, Diabetes, and Vitamin categories generated more than 50% of total pharmacy revenue. This finding indicates that business performance depends heavily on medicines used for long-term disease management rather than short-term treatments.

**Business Impact:** Any disruption in the availability of these medicines could significantly affect overall revenue and customer retention.

### The Highest Revenue-Generating Medicine Faces Stockout Risk

**Insulin Glargine 100IU** emerged as the highest revenue-generating medicine, contributing approximately **₹1,400** in sales revenue. However, it was also identified as one of the lowest-stock medicines in inventory.

**Business Impact:** This represents a direct revenue leakage risk. If the product becomes unavailable, the pharmacy could lose sales, reduce customer satisfaction, and risk losing loyal customers to competitors.

### A Small Group of Customers Drives a Significant Share of Revenue

Customer spending analysis revealed that a relatively small group of high-value customers contributes a disproportionately large share of total revenue.

**Business Impact:** Retaining high-value customers through loyalty programs, personalized offers, and targeted engagement strategies can have a greater financial impact than acquiring large numbers of new customers.

### Key Takeaway

The analysis demonstrates that the pharmacy's success depends on effectively managing three areas:

* Maintaining availability of high-revenue chronic disease medicines
* Preventing stockouts of top-performing products
* Retaining high-value customers who contribute significantly to revenue

Addressing these areas can improve profitability, strengthen customer loyalty, and support sustainable business growth.

#  Business Problem

Retail pharmacies generate large volumes of sales and inventory data every day. However, without proper analysis, businesses struggle to answer important questions such as:

* Which medicines generate the highest revenue?
* Which products contribute most to profitability?
* Which customers drive business growth?
* Which medicines are at risk of stockouts?
* How can inventory investment be optimized?
* What opportunities exist to improve customer retention?

The purpose of this project was to answer these questions using SQL-driven analytics and business reporting.

# Database Structure

The database was designed using a relational model consisting of four core tables.

## Medicines

Stores information about medicines including:

* Medicine ID
* Medicine Name
* Category
* Price
* Stock Quantity
* Expiry Date

## Customers

Stores customer information including:

* Customer ID
* Customer Name
* City
* Age

## Suppliers

Stores supplier information including:

* Supplier ID
* Supplier Name
* Location
* Contact Details

## Sales

Stores transactional sales information including:

* Sale ID
* Customer ID
* Medicine ID
* Quantity Sold
* Sales Date
* Total Amount

Primary Keys and Foreign Keys were implemented to maintain data integrity and establish relationships between tables.

#  Dataset Summary

| Metric                   | Value      |
| ------------------------ | ---------- |
| Total Medicines          | 50         |
| Total Customers          | 40         |
| Total Suppliers          | 15         |
| Total Sales Transactions | 217        |
| Total Revenue Generated  | ₹22,792.50 |
| Average Order Value      | ₹105       |


#  Key Business Questions Solved

## Sales Analytics

* Which medicines generate the highest revenue?
* Which categories contribute most to revenue?
* What are the monthly and quarterly sales trends?

## Customer Analytics

* Who are the highest-spending customers?
* Which customer segments contribute most to revenue?
* How can customer retention be improved?

## Inventory Analytics

* Which medicines are approaching critical stock levels?
* Which products require immediate replenishment?
* Which medicines are slow-moving?

## Product Performance Analytics

* Which medicines sell the most units?
* Which medicines generate the most revenue?
* How does demand vary across medicine categories?


#  Business Insights & Findings

## 1. Revenue Performance Analysis

The pharmacy generated a total revenue of **₹22,792.50 from 217 sales** transactions, resulting in an average order value of approximately ₹105 per transaction.

This indicates that customers typically purchase affordable medicines in relatively small quantities. The business therefore operates on a high-volume, low-ticket sales model where consistent transaction volume plays a critical role in revenue generation.

### Business Impact

Maintaining stock availability for frequently purchased medicines is essential to sustaining revenue and customer satisfaction.

## 2. Revenue Concentration Analysis

The highest revenue-generating categories were:

| Category   | Revenue |
| ---------- | ------- |
| Cardiac    | ₹5,166  |
| Vitamin    | ₹4,306  |
| Painkiller | ₹2,607  |
| Diabetes   | ₹2,538  |
| Antacid    | ₹2,258  |

Cardiac, Diabetes, and Vitamin medicines collectively contributed more than 50% of total business revenue.

### Business Insight

The pharmacy's revenue is heavily concentrated in chronic disease management products rather than acute-care medicines. Customers requiring long-term treatment generate recurring purchases, making these categories strategically important for business growth.

### Recommendation

Prioritize demand forecasting and inventory replenishment for these categories to protect revenue stability.

## 3. Product Performance Analysis

The highest revenue-generating medicines were:

| Medicine               | Revenue |
| ---------------------- | ------- |
| Insulin Glargine 100IU | ₹1,400  |
| Vitamin D3 60K IU      | ₹1,045  |
| Vitamin C 500mg        | ₹930    |
| Pantoprazole 40mg      | ₹880    |
| Amlodipine 5mg         | ₹875    |

### Business Insight

Although these medicines were not always sold in the highest quantities, their higher selling prices enabled them to contribute significantly to overall revenue.

This demonstrates that revenue contribution should be considered alongside sales volume when evaluating product performance.

### Recommendation

Monitor high-revenue medicines closely and ensure uninterrupted stock availability.

## 4. Sales Volume vs Revenue Analysis

The highest-selling medicines by quantity were:

| Medicine          | Units Sold |
| ----------------- | ---------- |
| Paracetamol 500mg | 39         |
| Folic Acid 5mg    | 34         |
| Metformin 500mg   | 31         |
| Vitamin C 500mg   | 31         |
| Dolo 650mg        | 30         |

### Business Insight

High-volume products are not necessarily high-revenue products. Affordable medicines often drive transaction volume, while premium medicines generate a larger share of revenue.

### Recommendation

Inventory decisions should balance both demand volume and revenue contribution.

## 5. Customer Spending Analysis

Top customers included:

| Customer     | Amount Spent |
| ------------ | ------------ |
| Vijay Mehta  | ₹869         |
| Raju Verma   | ₹862         |
| Harish Reddy | ₹851         |
| Rakesh Nair  | ₹787         |
| Ramesh Kumar | ₹721         |

### Business Insight

A relatively small group of customers contributes a significant portion of total revenue. These customers represent valuable business assets because they generate recurring purchases and possess a higher lifetime value.

### Recommendation

Implement loyalty programs and targeted promotions for high-value customers.

## 6. Customer Segmentation Analysis

Customers were segmented into:

* Platinum Customers
* Gold Customers
* Silver Customers
* Regular Customers

### Business Insight

Customer value is not evenly distributed across the customer base. A relatively small number of customers account for a large percentage of total sales revenue.

### Recommendation

Focus retention efforts on Platinum and Gold customers, as losing a small number of high-value customers could significantly impact revenue.

## 7. Inventory Risk Analysis

Critical stock medicines included:

| Medicine               | Current Stock |
| ---------------------- | ------------- |
| Insulin Glargine 100IU | 40            |
| Clonazepam 0.5mg       | 65            |
| Sertraline 50mg        | 70            |
| Salbutamol Inhaler     | 75            |

### Critical Business Finding

The highest revenue-generating medicine, Insulin Glargine 100IU, also appears among the lowest-stock medicines.

### Business Risk

Running out of this medicine could directly impact revenue, customer satisfaction, and customer retention.

### Recommendation

Implement automated stock alerts and safety stock thresholds for high-revenue medicines.

## 8. Inventory Efficiency Analysis

Several medicines maintain relatively high inventory levels despite generating lower sales volume.

### Business Insight

Excess capital is tied up in slow-moving inventory, reducing cash flow flexibility and increasing storage costs.

### Recommendation

Optimize reorder quantities and reduce excess stock for low-demand medicines.

## 9. Monthly Revenue Trend Analysis

Top-performing months included:

| Month    | Revenue |
| -------- | ------- |
| December | ₹2,464  |
| June     | ₹2,099  |
| April    | ₹2,050  |

### Business Insight

Medicine demand exhibits seasonal fluctuations throughout the year. Understanding these patterns helps improve inventory planning and procurement decisions.

### Recommendation

Use historical sales patterns to strengthen demand forecasting and inventory management.

## 10. Chronic Disease Dependency Analysis

Cardiac and Diabetes medicines generated **more than ₹7,704** in combined revenue.

### Business Insight

More than one-third of total revenue depends on long-term chronic disease treatment. These patients typically make repeat purchases, creating predictable and recurring revenue streams.

### Recommendation

Introduce refill reminder programs and recurring purchase plans to improve customer retention.

# Hidden Insights

One of the most important findings from this project is that the pharmacy's highest revenue-generating medicine is simultaneously one of its lowest-stock medicines.

This represents a classic inventory optimization problem frequently encountered in healthcare and retail organizations.

Without proactive monitoring, high-performing products may become unavailable, resulting in lost revenue, reduced customer satisfaction, and weakened customer loyalty.

This demonstrates how data analytics can identify operational risks before they negatively impact business performance.

#  Strategic Business Recommendations

### Inventory Optimization

* Create automated stock alerts for high-revenue medicines.
* Increase safety stock levels for critical products.
* Monitor inventory turnover regularly.

### Customer Retention

* Launch loyalty programs for Platinum and Gold customers.
* Offer personalized discounts for repeat customers.
* Improve customer engagement through targeted campaigns.

### Revenue Growth

* Focus marketing efforts on Cardiac and Diabetes medicines.
* Promote high-margin products through bundled offers.
* Increase average order value through cross-selling strategies.

### Demand Forecasting

* Use historical sales trends for procurement planning.
* Increase stock availability before high-demand periods.

### Risk Reduction

* Monitor medicines with high revenue and low inventory.
* Conduct periodic inventory audits.
* Minimize revenue leakage caused by stockouts.


# 🛠️ SQL Concepts Demonstrated

### Database Design

* CREATE DATABASE
* CREATE TABLE
* Primary Keys
* Foreign Keys

### Data Retrieval

* SELECT
* WHERE
* ORDER BY
* DISTINCT

### Aggregations

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()

### Grouping

* GROUP BY
* HAVING

### Joins

* INNER JOIN
* LEFT JOIN

### Advanced SQL

* Subqueries
* Common Table Expressions (CTEs)
* CASE Statements
* Window Functions
* RANK()
* ROW_NUMBER()
* Running Totals


#  Project Outcome

This project successfully transformed raw pharmacy transaction data into actionable business intelligence by identifying revenue drivers, customer purchasing patterns, inventory risks, customer segmentation opportunities, seasonal sales trends, and business growth opportunities.

The analysis demonstrates how SQL can be used not only for querying data but also for solving real-world healthcare business problems and supporting strategic decision-making.

By combining pharmaceutical domain expertise with data analytics, this project showcases the practical application of SQL in improving business performance and operational efficiency.

## Key SQL Queries used

-- Rank medicines by revenue within each category
SELECT
    m.category,
    m.medicine_name,
    SUM(s.total_amount) AS total_revenue,
    RANK() OVER (PARTITION BY m.category ORDER BY SUM(s.total_amount) DESC) AS rank_in_category
FROM sales s
JOIN medicines m ON s.medicine_id = m.medicine_id
GROUP BY m.category, m.medicine_name
ORDER BY m.category, rank_in_category;
---
-- Stock Status Report (morning check)
SELECT
    medicine_name,
    category,
    stock_qty,
    expiry_date,
    CASE
        WHEN stock_qty < 80  THEN 'CRITICAL – Reorder Immediately'
        WHEN stock_qty < 130 THEN 'Low – Reorder Soon'
        WHEN stock_qty < 200 THEN 'Moderate – Monitor Stock'
        ELSE 'Sufficient Stock'
    END AS stock_status,
    CASE
        WHEN expiry_date < GETDATE() THEN 'EXPIRED'
        WHEN expiry_date < DATEADD(MONTH,3,GETDATE()) THEN 'Expiring Soon'
        ELSE 'Valid'
    END AS expiry_status
FROM medicines
ORDER BY stock_qty ASC;
---

## Top spending customer per city

SELECT city, customer_name, total_spent
FROM (
 SELECT c.city, c.customer_name, SUM(s.total_amount) AS total_spent,
 RANK() OVER (PARTITION BY c.city ORDER BY SUM(s.total_amount) DESC) AS rnk
 FROM customers c
JOIN sales s ON c.customer_id = s.customer_id
 GROUP BY c.city, c.customer_name
)ranked
WHERE rnk = 1
ORDER BY total_spent DESC;


#  Author

**Siri Chandana**

**M.Pharm (Pharmaceutics) Graduate | Aspiring Healthcare & Pharma Data Analyst**

**Skills:** MSSQL Server • Power BI • Excel • Healthcare Analytics • Data Visualization • Business Intelligence •Statistics Fundamentals
•Python Fundamentals

This project reflects my transition from a pharmaceutical background into data analytics by combining healthcare domain expertise with data-driven decision-making.
 
