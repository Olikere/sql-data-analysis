-- Pergunta 1: quantos países distintos existem

SELECT
    COUNT(DISTINCT country_name) AS "total_distinct_countries"
FROM international_debt;

-- Pergunta 2: qual país tem o maior montante de dívida

SELECT
    country_name,
    SUM(debt) AS "total_debt"
FROM international_debt
GROUP BY country_name
ORDER BY SUM(debt) DESC
LIMIT 1;

-- Pergunta 3: qual país tem o menor valor de pagamentos

SELECT
    country_name,
    indicator_name,
    debt AS "lowest_repayment"
FROM international_debt
WHERE indicator_code = 'DT.AMT.DLXF.CD'
ORDER BY debt ASC
LIMIT 1;
