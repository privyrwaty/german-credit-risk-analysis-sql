# German Credit Risk Analysis — SQL

## Overview
SQL analysis of 1,000 loan applicants to identify factors driving credit default risk, and to support lending decisions.

## Dataset
German Credit Dataset — 1,000 applicants classified as:
- Good Risk (700)
- Bad Risk (300)

Includes: credit amount, duration, age, employment, housing, checking account status, purpose, and credit history.

## Business Questions
1. What separates Good vs Bad credit risks?
2. Do loan amount and duration affect default risk?
3. Which applicant profiles are highest risk?

## Key Findings
- Bad-risk applicants took larger loans on average than Good-risk applicants
- Bad-risk applicants took longer loan durations on average
- Applicants with no checking account or low checking balance were more likely to be Bad risk
- Younger applicants and those with poor credit history showed higher default risk

## Tools Used
- SQL
- GitHub

## Files
- `german_credit_analysis.sql` — All analysis queries
- `README.md` — Project documentation

## How to Run
1. Load the German Credit dataset into your SQL database
2. Run the queries in `german_credit_analysis.sql`
3. Review the results by risk group
