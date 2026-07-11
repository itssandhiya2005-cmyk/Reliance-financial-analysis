# Reliance-financial-analysis
End-to-end financial analysis of Reliance Industries (FY2023-FY2026) using Python, MySQL, Power BI and Google Gemini AI
# Financial Performance & Working Capital Analytics
## Reliance Industries Limited (FY2023–FY2026)

> **An end-to-end financial analysis project covering profitability, risk, 
> cash efficiency, and scenario decision support — built with Python, 
> MySQL, Power BI, and Google Gemini AI.**

---

## Project Objective

This project analyses the financial health and performance trend of 
Reliance Industries Limited across FY2023–FY2026, answering three 
core questions:

- Is the company profitable, and is that profitability growing?
- Is the company financially safe in terms of debt and liquidity?
- Is the company operationally efficient at converting activity into cash?

A forward-looking **What-If Scenario Analysis** (Power BI) and an 
**AI-Generated Executive Briefing** (Google Gemini 2.5 Flash) extend 
the project beyond historical reporting into decision support.

---

## Key Findings

| Metric | Finding |
|--------|---------|
| Revenue Growth | Accelerating: 2.65% (FY24) → 7.06% (FY25) → 9.59% (FY26) |
| Net Profit Margin | Stable at 7.2%–7.7% across all years |
| Debt-to-Equity | Consistently healthy at ~0.44 |
| Free Cash Flow | Turned from -₹25,956 Cr (FY23) to +₹69,197 Cr (FY26) |
| Cash Reserves | Nearly 4x growth: ₹34,156 Cr → ₹1,37,327 Cr |

### Headline Insight — CCC Deterioration in FY2026
Despite FY2026 being the strongest revenue year, the **Cash Conversion 
Cycle deteriorated sharply from -4.6 days to +24.0 days**, driven by:
- Receivable days nearly doubling (11.8 → 20.2)
- Payable days shortening (94.3 → 73.7)

This hidden liquidity pressure would be completely missed by looking 
at revenue and profit alone — demonstrating the value of 
multi-dimensional financial analysis.

---

## Dashboard Preview

![Main Dashboard](screenshots/dashboard_main.png)
*Scenario Analysis Dashboard — cards update live as the growth rate slider is adjusted*

![Interactive Scenario](screenshots/dashboard_interactive.png)
*What-If scenario at 12% growth — Projected Revenue: ₹11.84T, Projected FCF: ₹774.39bn*

---

## Tools & Technologies

| Tool | Purpose |
|------|---------|
| Python (yfinance) | Data extraction from NSE via API |
| Google Colab | Data cleaning and CSV export |
| MySQL Workbench | SQL analysis — JOINs, CTEs, Window Functions, Views |
| Power BI Desktop | Interactive dashboard + What-If scenario model |
| Google Gemini 2.5 Flash | AI-generated executive briefing |

---

## SQL Techniques Used

- `JOIN` — combining income, balance sheet, and cash flow tables
- `CTE (WITH clause)` — clean multi-step query structure
- `LAG()` Window Function — year-over-year growth calculation
- `CASE WHEN` — automatic Healthy/Average/Risky health labels
- `CAST AS DECIMAL` — fixing text-type numeric columns from yfinance
- `CREATE VIEW` — saving reusable final analysis views
- `COALESCE` — replacing NULL base year with readable label

  ---

## How to Run

**1. Data Extraction (Python)**
```python
# Open notebooks/data_extraction.ipynb in Google Colab
# Run all cells to extract data from yfinance and download CSVs
```

**2. SQL Analysis (MySQL)**
```sql
-- Open MySQL Workbench
-- Run scripts in sql/ folder in order (01 → 05)
-- Import CSV files from data/ folder into reliance_analysis database
```

**3. Power BI Dashboard**

---

## Project Structure
