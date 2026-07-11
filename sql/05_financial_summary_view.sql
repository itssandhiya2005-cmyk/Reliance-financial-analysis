CREATE OR REPLACE VIEW reliance_financial_summary AS
WITH combined_data AS (
    SELECT 
        i.Year,
        i.`Total Revenue`,
        b.`Total Assets`,
        b.`Total Debt`,
        b.`Stockholders Equity`,
        c.`Operating Cash Flow`,
        c.`Free Cash Flow`
    FROM reliance_income_cleaned i
    JOIN reliance_balance_cleaned b ON i.Year = b.Year
    JOIN reliance_cashflow_cleaned c ON i.Year = c.Year
)
SELECT 
    Year,
    `Total Revenue`,
    COALESCE(
        ROUND(
            (CAST(`Total Revenue` AS DECIMAL(30,2)) - CAST(LAG(`Total Revenue`) OVER (ORDER BY Year) AS DECIMAL(30,2)))
            / CAST(LAG(`Total Revenue`) OVER (ORDER BY Year) AS DECIMAL(30,2)) * 100
        , 2),
        'NA - first year'
    ) AS Revenue_Growth_Percent,
    ROUND(CAST(`Total Debt` AS DECIMAL(30,2)) / CAST(`Stockholders Equity` AS DECIMAL(30,2)), 2) AS Debt_To_Equity,
    CASE
        WHEN CAST(`Total Debt` AS DECIMAL(30,2)) / CAST(`Stockholders Equity` AS DECIMAL(30,2)) < 0.5 THEN 'Healthy'
        WHEN CAST(`Total Debt` AS DECIMAL(30,2)) / CAST(`Stockholders Equity` AS DECIMAL(30,2)) BETWEEN 0.5 AND 1 THEN 'Average'
        ELSE 'Risky'
    END AS Financial_Health,
    `Free Cash Flow`
FROM combined_data
ORDER BY Year;
