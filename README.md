# blinkit-sql-analysis
Sales analysis using SQL &amp; MySQL — outlet performance, product mix, customer KPIs
> **Stack:** MySQL 8.x · SQL (DDL + DML + CTEs + Window Functions)  
> **Dataset:** Blinkit Grocery Sales Data (~8,500 records)  
> **Focus:** Outlet performance · Product mix · Customer satisfaction KPIs

---

## 📌 Project Overview

This project performs an end-to-end SQL-based analysis of Blinkit's grocery sales data.  
It answers **7 key business questions** around sales performance, product visibility, outlet efficiency, and customer satisfaction — using structured queries, reusable views, and advanced window functions.

---

## 🗂️ Repository Structure

```
blinkit-sql-analysis/
│
├── sql/
│   ├── 01_create_database.sql      # Schema setup + data loading + cleaning
│   ├── 02_kpi_queries.sql          # Core 7 business questions (Q1–Q7)
│   └── 03_advanced_analysis.sql    # CTEs, window functions, stored views
│
├── docs/
│   └── Blinkit_Sales_Analysis.docx # Full project report (submission-ready)
│
├── screenshots/                    # Query output screenshots (optional)
│
└── README.md
```

---

## ❓ Business Questions Answered

| # | Question | SQL Technique |
|---|----------|---------------|
| Q1 | What are the total sales, avg sales, and item count? | Aggregation |
| Q2 | How does fat content (Low Fat vs Regular) impact revenue? | GROUP BY + ORDER BY |
| Q3 | Which item types generate the highest sales? | TOP-N query |
| Q4 | Fat content breakdown within each item category? | Multi-level GROUP BY |
| Q5 | How does outlet establishment year affect sales? | Time-series aggregation |
| Q6 | Which outlet size (Small / Medium / Large) drives the most revenue? | GROUP BY + RANK |
| Q7 | Full KPI breakdown across all outlet types? | Multi-metric aggregate view |

---

## 🔑 Key Findings

- **Supermarket Type 1** leads with the highest total sales ($340K+), followed by Grocery Stores
- **Tier 3 Grocery Stores** outperform Tier 3 Supermarkets — indicating strong local demand
- **Low-Fat items** account for ~65% of inventory and ~58% of revenue
- **Fruits & Vegetables** and **Snack Foods** are the top-selling item categories
- **Customer ratings** are consistently between 3.8–4.0 across all outlet types — not a differentiator
- **Medium-sized outlets** produce nearly as much revenue as Large outlets, offering better ROI per sq ft
- Sales peaked for outlets established around **2018**, with newer outlets still ramping up

---

## 🚀 How to Run

### Prerequisites
- MySQL 8.x installed locally **or** access to a cloud MySQL instance (e.g. AWS RDS, PlanetScale)
- Dataset CSV: [Blinkit Grocery Sales Data — Kaggle](https://www.kaggle.com/datasets/mukeshguptaiiitm/blinkit-grocery-data)
- MySQL Workbench (recommended) or any SQL client

### Step-by-step

**1. Clone the repository**
```bash
git clone https://github.com/YOUR_USERNAME/blinkit-sql-analysis.git
cd blinkit-sql-analysis
```

**2. Download the dataset**
- Go to the Kaggle link above and download `blinkit_data.csv`
- Place it at `/path/to/blinkit_data.csv` (update the path in `01_create_database.sql`)

**3. Run the SQL scripts in order**

Open MySQL Workbench (or your preferred client) and execute:

```sql
-- Step 1: Create schema, load and clean data
SOURCE sql/01_create_database.sql;

-- Step 2: Run KPI queries (Q1–Q7 + bonus)
SOURCE sql/02_kpi_queries.sql;

-- Step 3: Run advanced analysis (views, CTEs, window functions)
SOURCE sql/03_advanced_analysis.sql;
```

Or via the command line:
```bash
mysql -u root -p < sql/01_create_database.sql
mysql -u root -p blinkit_db < sql/02_kpi_queries.sql
mysql -u root -p blinkit_db < sql/03_advanced_analysis.sql
```

---

## 🧠 SQL Concepts Used

| Concept | Where Used |
|---------|-----------|
| DDL (CREATE TABLE, ALTER) | `01_create_database.sql` |
| DML (UPDATE for data cleaning) | `01_create_database.sql` |
| Aggregate functions (SUM, AVG, COUNT) | All KPI queries |
| GROUP BY / ORDER BY / HAVING | `02_kpi_queries.sql` |
| Subqueries | `02_kpi_queries.sql` |
| Common Table Expressions (CTEs) | `03_advanced_analysis.sql` |
| Window Functions (RANK, ROW_NUMBER) | `03_advanced_analysis.sql` |
| CREATE VIEW | `03_advanced_analysis.sql` |
| JOIN | `03_advanced_analysis.sql` |

---

## 📊 Sample Output — Q7 (Outlet Type KPIs)

| Outlet Type | Items Sold | Total Sales | Avg Sales | Avg Visibility |
|---|---|---|---|---|
| Supermarket Type1 | 2,388 | $787,549 | $149 | 0.0600 |
| Supermarket Type2 | 928 | $131,477 | $142 | 0.0600 |
| Supermarket Type3 | 935 | $130,714 | $140 | 0.0660 |
| Grocery Store | 1,083 | $151,939 | $140 | 0.1000 |

---

