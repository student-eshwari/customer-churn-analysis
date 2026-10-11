-- Query 1: Overall churn rate
SELECT COUNT(*) AS total_customers,
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
       ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 1) AS churn_pct
FROM churn;



-- Query 2: Churn rate by contract type
SELECT Contract,
       COUNT(*) AS customers,
       ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 1) AS churn_pct
FROM churn
GROUP BY Contract
ORDER BY churn_pct DESC;



-- Query 3: Churn rate by payment method
SELECT PaymentMethod,
       COUNT(*) AS customers,
       ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 1) AS churn_pct
FROM churn
GROUP BY PaymentMethod
ORDER BY churn_pct DESC;



-- Query 4: Average tenure of churned vs retained customers
SELECT Churn,
       COUNT(*) AS customers,
       ROUND(AVG(tenure), 1) AS avg_tenure_months,
       ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges
FROM churn
GROUP BY Churn;



-- Query 5: Highest-churn segments (Contract + InternetService)
SELECT Contract,
       InternetService,
       COUNT(*) AS customers,
       ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 1) AS churn_pct
FROM churn
GROUP BY Contract, InternetService
HAVING COUNT(*) >= 100
ORDER BY churn_pct DESC
LIMIT 5;