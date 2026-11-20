Tools: MySQL Workbench, SQL (GROUP BY, AVG, COUNT, ROUND)
Goal: Help a bank spot risky loans before approving them.

# German Credit Risk Analysis
Who is likely to repay a loan?

## Dataset
Source: UCI Statlog German Credit dataset
Rows: 1,000 loan applicants
Table: credit in database german_credit
Amounts are in Deutsche Marks (DM)
Target column: RESPONSE (1 = Good, 0 = Bad credit risk)

## Question 1: How many customers are Good vs Bad?
Result:
RESPONSE | customers
1 (Good) | 700
0 (Bad) | 300
Finding:
Out of 1,000 applicants, 70% were classed as Good and 30% were classed as Bad credit risks. About 1 in every 3 applicants is a Bad credit risk, so predicting Bad customers is valuable.

## Question 2: Do Bad customers borrow more?
Result:
RESPONSE | avg_loan_amount | customers
1 (Good) | 2985 DM | 700
0 (Bad) | 3938 DM | 300
Finding:
Bad customers borrow on average 3,938 DM vs 2,985 DM for Good customers. That is 953 DM more, about 32% higher. Larger loan amounts are linked to higher default risk.

## Question 3: Do longer loans fail more?
Result:
RESPONSE | avg_duration_months | customers
1 (Good) | 19.2 | 700
0 (Bad) | 24.9 | 300
Finding:
Bad loans last on average 24.9 months vs 19.2 months for Good loans. That is 5.7 months longer. Longer duration is linked to higher default risk.

## Conclusion
Good customers tend to take smaller, shorter loans. Bad customers tend to take bigger, longer loans. A bank could use loan amount and loan duration as warning signs when assessing an application.

## Files
- `analysis.sql` — All analysis queries (Queries 1-3)
- `README.md` — Project documentation

## How to Run
1. Load the German Credit dataset into your SQL database
2. Run the queries in `analysis.sql`
3. Review the results by risk group

