CREATE DATABASE reliance_analysis;
USE reliance_analysis;
SELECT * FROM reliance_income_cleaned;

SELECT `Year`, `Total Revenue`
FROM reliance_income_cleaned
ORDER BY `Year`;

SELECT Year, `Total Revenue`
FROM reliance_income_cleaned
ORDER BY CAST(`Total Revenue` AS DECIMAL(30,2)) DESC
LIMIT 1;

SELECT `Year`, `Total Revenue`, `Net Income Common Stockholders`,
ROUND(
(CAST(`Net Income Common Stockholders` AS DECIMAL(30,2)) / CAST(`Total Revenue` AS DECIMAL(30,2))) * 100, 2) AS Profit_Margin_Percent
FROM reliance_income_cleaned
ORDER BY `Year` DESC;

SELECT Year,
`Operating Income`,`Net Income Common Stockholders`,
CAST(`Operating Income` AS DECIMAL (30,2)) - CAST(`Net Income Common Stockholders` AS DECIMAL (30,2)) AS  Deductions
 FROM reliance_income_cleaned
 ORDER BY YEAR
 
SELECT Year, `Tax Provision`, `Total Revenue`,
       ROUND(
           (CAST(`Tax Provision` AS DECIMAL(30,2)) /
           CAST(`Total Revenue` AS DECIMAL(30,2))) * 100
       , 2) AS Tax_Percent
FROM reliance_income_cleaned
ORDER BY Year;
