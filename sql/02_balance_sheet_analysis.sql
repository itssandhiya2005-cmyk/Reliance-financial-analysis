SELECT * FROM reliance_balance_cleaned
ORDER BY Year;

SELECT Year,
ROUND(CAST(`Total Assets` AS DECIMAL (30,2))/10000000,2)
AS Total_Assets_crores
FROM reliance_balance_cleaned
ORDER BY Year;

SELECT Year,
       ROUND(CAST(`Total Assets` AS DECIMAL(30,2)) / 10000000, 2) AS Assets_Crores,
       ROUND(CAST(`Total Liabilities Net Minority Interest` AS DECIMAL(30,2)) / 10000000, 2) AS Liabilities_Crores
FROM reliance_balance_cleaned
ORDER BY Year;

SELECT Year,
ROUND(CAST(`Cash And Cash Equivalents` AS DECIMAL (30,2)) / 10000000, 2) AS Cash_crores
FROM reliance_balance_cleaned
ORDER BY Year;

SELECT Year,
ROUND(CAST(`Total Debt` AS DECIMAL (30,2)) / 10000000, 2) AS Debt_crores,
ROUND(CAST(`Stockholders Equity` AS DECIMAL (30,2)) / 10000000, 2) AS Equity_crores,
ROUND(CAST(`Total Debt` AS DECIMAL(30,2)) / 
       CAST(`Stockholders Equity` AS DECIMAL(30,2)), 2) AS Debt_To_Equity_Ratio
FROM reliance_balance_cleaned
ORDER BY Year;

