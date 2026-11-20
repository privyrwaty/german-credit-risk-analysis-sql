-- German Credit Risk Analysis
-- Dataset: UCI Statlog German Credit dataset - 1,000 loan applicants
-- RESPONSE: 1 = Good Risk, 0 = Bad Risk
-- Amounts are in DM (Deutsche Mark)

CREATE DATABASE IF NOT EXISTS german_credit;
USE german_credit;

-- Run only once: table was originally named `german credit`
-- RENAME TABLE `german credit` TO `credit`;

-- Question 1: How many customers are Good vs Bad?
SELECT RESPONSE, COUNT(*) AS customers
FROM credit
GROUP BY RESPONSE;

-- Question 2: Do Bad customers borrow more?
SELECT RESPONSE,
       ROUND(AVG(AMOUNT), 0) AS avg_loan_amount,
       COUNT(*) AS customers
FROM credit
GROUP BY RESPONSE;

-- Question 3: Do longer loans fail more?
SELECT RESPONSE,
       ROUND(AVG(DURATION), 1) AS avg_duration_months,
       COUNT(*) AS customers
FROM credit
GROUP BY RESPONSE;
