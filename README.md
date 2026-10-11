Customer Churn Analysis

Tools: Python, SQL (SQLite), Excel

Project Overview

Analyzed telecom customer data to identify customer churn patterns and understand which customer segments have higher churn rates.

Business Objective

- Calculate the overall customer churn rate.
- Identify customer segments with higher churn.
- Analyze the relationship between contract type, tenure, and payment method and customer churn.
- Provide actionable recommendations to support customer retention.

Dataset

Telecom customer dataset containing customer demographics, services, contract details, charges, tenure, and churn status.

- Records after cleaning: 7,043
- Source: Add the original dataset source and link.

Data Cleaning

- Removed duplicate customer records.
- Converted MonthlyCharges and TotalCharges into numeric values.
- Handled missing TotalCharges values using a documented imputation method.
- Standardized inconsistent category labels.

Analysis

- Python: Exploratory data analysis, segment comparisons, and correlation heatmap.
- SQL: Queries analyzing churn by contract, payment method, and customer segment.
- Excel: Pivot tables and churn summaries by contract, payment method, and tenure group.

Key Findings

- Overall churn rate: 26.5%.
- Month-to-month contract churn rate: 42.7%.
- Two-year contract churn rate: 2.8%.
- Churn was higher among customers with shorter tenure.
- Electronic check customers had a churn rate of 45.3%.

All statistics should be verified against the cleaned dataset before publication.

Business Recommendations

- Evaluate retention offers for month-to-month customers.
- Investigate early-tenure customer experience and onboarding.
- Examine why electronic check customers have higher churn.
- Monitor churn rates across customer segments over time.

Project Files

- Python notebook
- SQL queries
- Excel analysis
