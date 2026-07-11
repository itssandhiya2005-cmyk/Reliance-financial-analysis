SELECT * FROM reliance_cashflow_cleaned
ORDER BY Year;

SELECT year,
ROUND(CAST(`Operating Cash Flow` AS DECIMAL (30,2)) / 10000000, 2) AS Operating_Cashflow_crores,
ROUND(CAST(`Investing Cash Flow`AS DECIMAL (30,2)) / 10000000, 2) AS Investing_Cashflow_crores,
ROUND(CAST(`Financing Cash Flow`AS DECIMAL (30,2)) / 10000000, 2) AS Financing_Cashflow_crores
FROM reliance_cashflow_cleaned
ORDER BY Year;

SELECT year,
ROUND(CAST(`Free Cash Flow` AS DECIMAL (30,2)) / 10000000, 2) AS Free_Cash_Flow_Crores
FROM reliance_cashflow_cleaned
ORDER BY Year;
