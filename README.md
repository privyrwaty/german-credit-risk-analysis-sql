# German Credit Risk Analysis — SQL

## Overview
SQL analysis of 1,000 loan applicants to identify factors driving credit default risk, and to support lending decisions.

## Dataset
German Credit Dataset — 1,000 applicants classified as:
- Good Risk (700)
- Bad Risk (300)

Includes: credit amount, duration, age, employment, housing, checking account status, purpose, and credit history.

## Business Questions
- What separates Good vs Bad credit risks?
- Do loan amount and duration affect default risk?
- Which applicant profiles are highest risk?

## Key Findings
- Bad-risk applicants took larger loans on average: **3,938 vs 2,985 for Good-risk** (+32% higher)
- Bad-risk applicants took longer loans on average: **24.9 months vs 19.2 months for Good-risk** (+5.7 months longer)
- Applicants with no checking account or low checking balance were more likely to be Bad risk
- Younger applicants and those with poor credit history showed higher default risk

## Tools Used
- SQL (MySQL)
- GitHub

## Files
- `analysis.sql` — All analysis queries
- `README.md` — Project documentation

## How to Run
1. Load the German Credit dataset into your SQL database
2. Run the queries in `analysis.sql`
3. Review the results by risk group
