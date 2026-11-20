-- German Credit Risk Analysis
-- Dataset: 1,000 loan applicants

CREATE DATABASE IF NOT EXISTS german_credit;
USE german_credit;

-- Rename table and inspect structure
RENAME TABLE `german credit` TO `credit`;

SHOW TABLES;
SHOW COLUMNS FROM credit;
SELECT COUNT(*) AS total_customers FROM credit;
SELECT * FROM credit LIMIT 1;

-- 1. Customers by risk group
SELECT RESPONSE, COUNT(*) AS customers
FROM credit
GROUP BY RESPONSE;

-- 2. Average loan amount by risk group
SELECT RESPONSE,
       ROUND(AVG(AMOUNT), 0) AS avg_loan_amount,
       COUNT(*) AS customers
FROM credit
GROUP BY RESPONSE;

-- 3. Average loan duration by risk group
SELECT RESPONSE,
       ROUND(AVG(DURATION), 1) AS avg_duration_months,
       COUNT(*) AS customers
FROM credit
GROUP BY RESPONSE;

-- 4. Default rate by loan purpose
SELECT PURPOSE,
       COUNT(*) AS customers,
       ROUND(SUM(CASE WHEN RESPONSE = 'Bad Risk' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS bad_risk_pct
FROM credit
GROUP BY PURPOSE
ORDER BY bad_risk_pct DESC;

-- 5. Default rate by housing
SELECT HOUSING,
       COUNT(*) AS customers,
       ROUND(SUM(CASE WHEN RESPONSE = 'Bad Risk' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS bad_risk_pct
FROM credit
GROUP BY HOUSING
ORDER BY bad_risk_pct DESC;
