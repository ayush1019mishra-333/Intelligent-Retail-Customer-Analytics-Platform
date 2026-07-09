<div align="center">

# 🛍️ Intelligent Retail Customer Analytics Platform

### End-to-End Retail Customer Analytics Platform using **SQL • Python • Machine Learning • Power BI**

Transforming **1M+ retail transactions** into actionable business intelligence through data engineering, predictive analytics, and interactive dashboards.

---

![Python](https://img.shields.io/badge/Python-3.11-blue?style=for-the-badge&logo=python)
![MySQL](https://img.shields.io/badge/MySQL-8.0-orange?style=for-the-badge&logo=mysql)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?style=for-the-badge&logo=powerbi)
![Scikit Learn](https://img.shields.io/badge/Scikit--Learn-Machine%20Learning-F7931E?style=for-the-badge&logo=scikitlearn)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-150458?style=for-the-badge&logo=pandas)
![NumPy](https://img.shields.io/badge/NumPy-Numerical%20Computing-013243?style=for-the-badge&logo=numpy)
![Matplotlib](https://img.shields.io/badge/Matplotlib-Visualization-success?style=for-the-badge)
![GitHub](https://img.shields.io/badge/GitHub-Portfolio-black?style=for-the-badge&logo=github)

</div>

---

# 📌 Project Overview

Modern retail businesses generate millions of transactions every day. Converting this raw transactional data into meaningful business intelligence requires much more than dashboards—it requires a complete analytics pipeline.

The **Intelligent Retail Customer Analytics Platform** is an end-to-end analytics project that combines **SQL, Python, Machine Learning, and Power BI** to transform raw retail data into actionable business insights.

The project covers every stage of the analytics lifecycle, including:

- Data Cleaning & Validation
- SQL Database Design
- Exploratory Data Analysis
- Feature Engineering
- Machine Learning
- Market Basket Analysis
- Interactive Power BI Dashboards
- Business Recommendations

Rather than focusing only on descriptive analytics, this project integrates predictive machine learning models to forecast revenue, identify high-value customers, analyze customer purchasing behaviour, and support data-driven business decision-making.

---

# 🎯 Business Problem

Retail companies often struggle with answering questions such as:

- Which customers generate the highest revenue?
- Which products are frequently purchased together?
- Which regions contribute the most to sales?
- Which customers are likely to become high-value customers?
- How can future revenue be predicted?
- How can businesses improve cross-selling opportunities?
- Which factors influence customer purchasing behaviour?

This project addresses these business challenges using a combination of analytics and machine learning techniques.

---

# 🎯 Project Objectives

The primary objectives of this project are:

- 📈 Analyze customer purchasing behaviour
- 💰 Identify key revenue drivers
- 👥 Segment customers using behavioural metrics
- ⭐ Predict High-Value Customers
- 📦 Discover product associations using Market Basket Analysis
- 📊 Forecast customer revenue
- ⚠️ Identify customers with churn risk
- 🎯 Enable personalized marketing strategies
- 📈 Build executive dashboards for business users

---

# ✨ Key Features

## 📊 Business Analytics

- Executive KPI Dashboard
- Revenue Analysis
- Customer Segmentation
- Product Performance Analysis
- Country-wise Sales Analysis
- Customer Type Distribution
- Monthly Sales Trend
- Interactive Filtering

---

## 🐍 Python Analytics

- Data Cleaning
- Data Validation
- Exploratory Data Analysis
- Feature Engineering
- Statistical Analysis
- Customer Behaviour Analysis
- Revenue Analysis
- Product Analysis

---

## 🗄 SQL Analytics

- Relational Database Design
- Data Preparation
- Business Queries
- Aggregate Analysis
- Window Functions
- Customer Analytics
- Sales Analytics
- Revenue Analytics

---

## 🤖 Machine Learning

- Revenue Prediction
- High-Value Customer Classification
- Customer Churn Prediction
- Feature Importance Analysis
- Model Evaluation
- Confusion Matrix
- ROC Curve

---

## 🛒 Market Basket Analysis

- Apriori Algorithm
- Association Rule Mining
- Product Affinity Analysis
- Cross-selling Opportunities
- Lift Analysis
- Confidence Analysis

---

# 🏗 Project Architecture

```text
                      Online Retail Dataset
                               │
                               ▼
                    Data Cleaning & Validation
                               │
                               ▼
                    Feature Engineering Pipeline
                               │
               ┌───────────────┴───────────────┐
               ▼                               ▼
        SQL Database                   Python Analytics
               │                               │
               └───────────────┬───────────────┘
                               ▼
                      Machine Learning Models
                               │
                               ▼
                    Power BI Dashboards
                               │
                               ▼
                Business Insights & Recommendations
```

---

# 🛠 Technology Stack

| Category | Technologies |
|-----------|--------------|
| Programming Language | Python |
| Database | MySQL |
| Data Analysis | Pandas, NumPy |
| Visualization | Matplotlib, Seaborn |
| Machine Learning | Scikit-Learn |
| Market Basket Analysis | mlxtend (Apriori) |
| Dashboard | Microsoft Power BI |
| Development | Jupyter Notebook, VS Code |
| Version Control | Git & GitHub |


# Some Visuals 

<img width="892" height="573" alt="Distribution of Basket Size" src="https://github.com/user-attachments/assets/cfe08cca-0485-473d-9d59-1e2b8d424023" />

<img width="1117" height="552" alt="Countries by Quantity Sold" src="https://github.com/user-attachments/assets/89e682f7-93d3-4fc0-9157-51985f1de61e" />

<img width="562" height="412" alt="Weekdays vs Weekend Sales" src="https://github.com/user-attachments/assets/c3c92103-b366-49ea-8411-08c814e62a0e" />

---

# 📂 Dataset Overview

### Dataset Used

**Online Retail II Dataset**

The dataset contains transactional records of a UK-based online retailer between **2009–2011**, consisting of over **1 million retail transactions**.

### Dataset Summary

| Attribute | Value |
|-----------|-------|
| Total Transactions | 1M+ |
| Customers | ~5,800 |
| Products | ~4,900 |
| Countries | 43 |
| Invoices | 40K+ |
| Time Period | 2009–2011 |

---

# 🧠 Feature Engineering

To improve analytical performance and machine learning accuracy, multiple business-oriented features were engineered.

### Customer Features

- Purchase Frequency
- Customer Revenue
- Customer Tenure
- Average Order Value
- Average Unit Price
- Total Quantity Purchased
- Unique Products Purchased

<img width="1107" height="560" alt="Top 10 customers" src="https://github.com/user-attachments/assets/e6322ea7-986a-4952-ad02-76d538483ef1" />


### Behaviour Features

- Weekend Purchase Ratio
- Return Rate
- Average Days Between Orders
- Customer Recency

<img width="1112" height="527" alt="Monthly Revenue Trend" src="https://github.com/user-attachments/assets/5c34cceb-014e-4739-80cf-8419993b072f" />


### Transaction Features

- Basket Size
- Invoice Total
- Product Revenue
- Product Purchase Count

<img width="872" height="476" alt="Transaction Outliers" src="https://github.com/user-attachments/assets/d927b530-b8f5-49de-86e3-66a64d3876fc" />


### Time Features

- Month
- Quarter
- Day
- Day Name
- Hour
- Weekend Indicator

<img width="1118" height="558" alt="Revenue by Hours" src="https://github.com/user-attachments/assets/40c58518-5631-4af6-b73d-6a7308d9caa1" />


---

# ⚙ End-to-End Workflow

```text
Raw Dataset
      │
      ▼
Data Cleaning
      │
      ▼
SQL Database Design
      │
      ▼
Exploratory Data Analysis
      │
      ▼
Feature Engineering
      │
      ▼
Machine Learning
      │
      ▼
Power BI Dashboard
      │
      ▼
Business Recommendations
```

---

# 🗄 SQL Data Engineering

A relational database was designed in **MySQL** to efficiently organize retail transaction data for business analysis.

### SQL Tasks Performed

- Database Creation
- Table Design
- Data Import
- Primary & Foreign Keys
- SQL Joins
- Aggregate Functions
- Window Functions
- Customer Analysis
- Revenue Analysis
- Business Reporting Queries

---

# 🐍 Python Data Analytics Pipeline

Python was used to automate the complete analytics workflow.

## Data Preprocessing

- Removed duplicate transactions
- Handled missing values
- Processed cancelled invoices
- Standardized data formats
- Converted date-time fields
- Validated transaction integrity

## Exploratory Data Analysis

Performed comprehensive EDA to identify:

- Revenue Trends
- Customer Behaviour
- Product Performance
- Sales Distribution
- Country-wise Revenue
- Seasonal Trends
- Customer Purchase Frequency
- Revenue Contribution Analysis

---

# 📁 Repository Structure

```text
Intelligent-Retail-Customer-Analytics-Platform
│
├── Dashboard/
├── Datasets/
│   ├── Raw_Data/
│   ├── SQL_Ready_Data/
│   └── ML_Files/
├── Machine_Learning/
├── Python_Notebooks/
├── SQL/
├── Visuals/
├── requirements.txt
├── README.md

```

---

## 🚀 Project Status

✅ Data Cleaning Completed

✅ SQL Database Developed

✅ Feature Engineering Completed

✅ Exploratory Data Analysis Completed

✅ Machine Learning Models Developed

✅ Market Basket Analysis Completed

✅ Interactive Power BI Dashboards Developed

# 🤖 Machine Learning Pipeline

Machine Learning was integrated into the project to move beyond descriptive analytics and enable predictive business intelligence. Three business-oriented models were developed to support revenue forecasting, customer segmentation, and strategic decision-making.

---

## 📈 Revenue Prediction

### Objective

Predict customer revenue using historical purchasing behaviour and engineered customer features.

### Algorithm Used

- 🌳 Random Forest Regressor

### Key Features Used

- Purchase Frequency
- Customer Tenure
- Average Order Value
- Average Unit Price
- Total Quantity Purchased
- Unique Products Purchased
- Average Days Between Orders
- Weekend Purchase Ratio
- Return Rate
- Customer Country

### Model Performance

| Metric | Value |
|---------|------:|
| R² Score | 0.763 |
| Mean Absolute Error (MAE) | 1236 |
| Root Mean Squared Error (RMSE) | 1824 |
| Mean Absolute Percentage Error (MAPE) | 8.32% |

### Business Value

- Revenue Forecasting
- Inventory Planning
- Budget Estimation
- Demand Forecasting
- Strategic Decision Support

---

## ⭐ High-Value Customer Classification

### Objective

Identify customers with the highest revenue potential to improve marketing efficiency and customer retention.

### Algorithm Used

- 🌲 Random Forest Classifier

### Evaluation Metrics

| Metric | Score |
|---------|------:|
| Accuracy | 93.96% |
| Precision | 94.80% |
| Recall | 93.03% |
| F1-Score | 93.91% |

### Business Benefits

- VIP Customer Identification
- Personalized Marketing
- Customer Lifetime Value Optimization
- Loyalty Program Design
- Premium Customer Targeting

---

## ⚠️ Customer Churn Prediction

A churn prediction workflow was developed to identify customers at risk of disengagement, enabling proactive retention strategies such as targeted promotions, loyalty rewards, and personalized communication.

---

# 🛒 Market Basket Analysis

Market Basket Analysis was performed using the **Apriori Algorithm** to identify products that are frequently purchased together.

## Workflow

- Transaction Encoding
- Frequent Itemset Generation
- Association Rule Mining
- Support Calculation
- Confidence Calculation
- Lift Analysis
- Rule Filtering
- Recommendation Generation

### Business Applications

- Product Bundling
- Cross-selling
- Upselling
- Store Layout Optimization
- Product Recommendation
- Promotion Planning

---

# 📊 Dashboard Showcase

## 📈 Executive Retail Intelligence Dashboard

This dashboard provides a comprehensive overview of retail performance, customer behaviour, sales trends, and product analytics.

<img width="1332" height="748" alt="Page1 Dashboard" src="https://github.com/user-attachments/assets/64b8bac7-08a5-4c6c-b2fc-d974accfd350" />

### Dashboard Highlights

- 💰 Executive KPI Cards
- 🌍 Country-wise Revenue Analysis
- 📈 Monthly Sales Trend
- 👥 Customer Segmentation
- 🛍️ Customer Type Distribution
- 📦 Top Products by Revenue
- 🎛️ Interactive Filters & Slicers

---

## 🤖 Machine Learning Dashboard

This dashboard visualizes predictive analytics, model performance, and actionable business recommendations.

<img width="1282" height="727" alt="Page2 Dashboard" src="https://github.com/user-attachments/assets/b0e223bb-b1fc-4989-a1db-94aa653b13fe" />


### Dashboard Highlights

- 📊 Revenue Prediction KPIs
- 🎯 Feature Importance
- 📉 Actual vs Predicted Analysis
- 📦 Confusion Matrix
- 📈 ROC Curve
- 📋 Model Comparison
- 💡 ML-Based Business Recommendations

---

# 📈 Model Evaluation

The machine learning models were evaluated using multiple statistical and visual techniques to ensure reliability and business applicability.

### Evaluation Techniques

- ✔️ R² Score
- ✔️ Mean Absolute Error
- ✔️ Root Mean Squared Error
- ✔️ Precision
- ✔️ Recall
- ✔️ F1-Score
- ✔️ Confusion Matrix
- ✔️ ROC Curve
- ✔️ Feature Importance
- ✔️ Actual vs Predicted Scatter Plot

---

# 💡 Key Business Insights

### 📊 Sales Insights

- 💰 Generated over **20 Million** in analyzed revenue.
- 🌍 United Kingdom contributed the highest revenue.
- 📈 Strong seasonal demand observed during Q4.
- 📦 A small percentage of products generated the majority of revenue.

---

### 👥 Customer Insights

- ⭐ Loyal customers contributed the highest share of revenue.
- 🛒 Higher purchase frequency strongly correlated with higher customer value.
- 📦 Larger basket sizes resulted in increased revenue.
- 🌍 Purchasing behaviour varied across customer regions.

---

### 🤖 Machine Learning Insights

- 🎯 Revenue prediction demonstrated strong predictive capability.
- ⭐ High-value customer classification exceeded **93%** across major evaluation metrics.
- 📊 Total Quantity and Customer Tenure emerged as the most influential predictive features.
- 📈 Predictive analytics enables proactive business planning.

---

# 🚀 Business Recommendations

Based on the analytical findings, the following strategic recommendations are proposed:

- 🎯 Personalize marketing campaigns for high-value customers.
- 🛒 Bundle frequently purchased products to increase average basket size.
- 📦 Optimize inventory using revenue forecasting.
- ⭐ Strengthen loyalty programs to improve customer retention.
- 🌍 Invest more in high-performing geographic markets.
- 📈 Use predictive analytics to support long-term business planning.
- 💰 Promote cross-selling opportunities identified through Market Basket Analysis.

---

# 📂 Skills Demonstrated

### SQL

- Database Design
- Table Relationships
- Complex Joins
- Window Functions
- Aggregate Queries
- Business Reporting

---

### Python

- Pandas
- NumPy
- Data Cleaning
- Feature Engineering
- Exploratory Data Analysis
- Data Visualization

---

### Machine Learning

- Regression
- Classification
- Feature Importance
- Model Evaluation
- Predictive Analytics

---

### Power BI

- Interactive Dashboards
- KPI Cards
- DAX Measures
- Drill-down Analysis
- Slicers & Filters
- Business Storytelling

---


## Open the Project

1. Import SQL scripts into MySQL.
2. Run the Python notebooks in sequence.
3. Generate the ML output files.
4. Open the Power BI dashboard (`.pbix`) to explore the visualizations.

---

# 🔮 Future Enhancements

- Deep Learning–based Revenue Prediction
- Customer Lifetime Value (CLV) Modeling
- Real-time Dashboard Integration
- Azure & Databricks Deployment
- Automated ETL Pipeline
- Recommendation System using Collaborative Filtering
- Time Series Sales Forecasting
- Cloud Deployment with Azure

---

# 👨‍💻 Author

**Ayush Mishra**

B.Tech, National Institute of Technology Agartala (NIT Agartala)

Aspiring Data Analyst | SQL | Python | Machine Learning | Power BI

<div align="center">

**Turning Raw Data into Actionable Business Intelligence through Analytics, Machine Learning, and Visualization.**

</div>
