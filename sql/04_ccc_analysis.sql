CREATE OR REPLACE VIEW reliance_cash_conversion_cycle AS
SELECT 
    b.Year,

    ROUND(
        CAST(b.Inventory AS DECIMAL(30,2)) 
        / CAST(i.`Cost Of Revenue` AS DECIMAL(30,2)) * 365
    , 1) AS Days_Inventory_Outstanding,

    ROUND(
        CAST(b.`Accounts Receivable` AS DECIMAL(30,2)) 
        / CAST(i.`Total Revenue` AS DECIMAL(30,2)) * 365
    , 1) AS Days_Sales_Outstanding,

    ROUND(
        CAST(b.`Accounts Payable` AS DECIMAL(30,2)) 
        / CAST(i.`Cost Of Revenue` AS DECIMAL(30,2)) * 365
    , 1) AS Days_Payable_Outstanding,

    ROUND(
        (CAST(b.Inventory AS DECIMAL(30,2)) / CAST(i.`Cost Of Revenue` AS DECIMAL(30,2)) * 365)
        + (CAST(b.`Accounts Receivable` AS DECIMAL(30,2)) / CAST(i.`Total Revenue` AS DECIMAL(30,2)) * 365)
        - (CAST(b.`Accounts Payable` AS DECIMAL(30,2)) / CAST(i.`Cost Of Revenue` AS DECIMAL(30,2)) * 365)
    , 1) AS Cash_Conversion_Cycle

FROM reliance_balance_clean_v2 b
JOIN reliance_income_clean_v2 i ON b.Year = i.Year
WHERE b.Year != '2022-03-31'
ORDER BY b.Year;
