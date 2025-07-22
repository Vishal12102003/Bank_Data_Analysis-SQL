# 🏦 Bank Loan Data Analysis (MySQL Project)

## 📊 Project Summary

This project focuses on analyzing bank loan data using **MySQL** to help financial institutions better understand customer behavior, loan performance, and risk patterns. The goal is to provide actionable insights to stakeholders for better decision-making.

---

## 💡 Problem Statement

Banks face challenges in understanding:
- Which branches or demographics yield the highest loan revenue?
- The rate of default and delinquency across portfolios.
- The effectiveness of different loan products and terms.
- Operational inefficiencies in loan disbursement and collection.

---

## 🎯 Objectives

- Analyze total loan volume, interest, collections, and disbursement trends.
- Study loan performance by branch, state, age group, religion, and credit grade.
- Identify default and delinquency patterns.
- Track disbursement lifecycle using `DisbursementDate` and `ClosedDate`.
- Calculate average loan maturity and unverified loan rate.

---

## 🧰 Tools Used

- **MySQL** – Data storage and analysis using SQL queries.
- **MySQL** – Initial exploration and cleaning.
- **Power BI** – Dashboards (referenced externally in presentation).
- **PowerPoint** – Final stakeholder presentation.

---

## 📌 Key KPIs Derived

| KPI                            | Description                                                   |
|-------------------------------|---------------------------------------------------------------|
| Total Loan Amount             | Total funds disbursed as loans.                               |
| Total Loans Issued            | Number of unique loan cases.                                  |
| Total Collection              | Total principal and interest repaid.                          |
| Total Interest Revenue        | Revenue earned via interest.                                  |
| Branch-Wise Revenue           | Sum of interest + fees per branch.                            |
| State-Wise Loan Volume        | Regional loan distribution.                                   |
| Religion-Wise Loan Volume     | Diversity-based loan distribution.                            |
| Grade-Wise Risk Analysis      | Portfolio risk by borrower grade.                             |
| Default & Delinquency Rates   | Ratio and count of risky loans.                               |
| Age Group-Wise Analysis       | Loan trends by age demographics.                              |
| Loan Maturity                 | Avg duration (months) between disbursement and closure.       |
| Loan Verification Status      | Count of unverified loans.                                    |
| Purpose-Based Loan Category   | Amount segmented by purpose.                                  |

---

## 📁 SQL Highlights

The following operations were performed:

- **Aggregations** (`SUM`, `AVG`, `COUNT`) across branches, states, religions, and purposes.
- **Risk Flags**: Filtered and analyzed defaulted and delinquent loans.
- **Time Functions**: Used `STR_TO_DATE`, `DATEDIFF`, and date logic to calculate loan tenure.
- **Groupings** for segmentation and trend analysis.
- **Conversions** to format results (millions, lakhs, percentages).

---

## 📽️ Project Demo

Refer to the final dashboard and stakeholder presentation [here](https://drive.google.com/file/d/1gwIwqb9LGcB2XVg7ugEbHRBwErqTbaBc/view?usp=sharing).

---

## 📌 Use Cases for Stakeholders

- **Credit Team**: Identifying risky customer segments.
- **Operations**: Optimizing loan disbursement efficiency.
- **Executives**: Strategic planning by geography or loan type.
- **Audit & Compliance**: Detecting anomalies and non-verified loans.

---

## 🧠 Insights

- Branches and states with the highest loan ROI identified.
- Youth demographic took the majority of loans.
- ~X% of loans were either defaulted or delinquent.
- Personal loans were the most popular by volume.

---

## 📎 File Structure

- `Loan Analytics.pptx` – Requirements from Stakeholders.
- `Bank_Data_analysis.sql` – SQL queries for the entire project.
- `Banking_Data_analysis.pptx` – Final stakeholder presentation.
---

## 🚀 Next Steps

- Integrate predictive modeling for default risk.
- Automate SQL-to-BI data pipelines.
