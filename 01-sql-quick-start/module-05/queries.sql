-- Exercício 1: rótulos de venda com CASE

SELECT
    BillingCountry,
    Total,
    CASE
        WHEN BillingCountry = 'USA' THEN 'Domestic Sales'
        ELSE 'Foreign Sales'
    END AS [SalesType]
FROM invoices
ORDER BY SalesType;

/*
Exercício 3: faturas domésticas acima de 15

Consulta 1: quais são
*/

SELECT
    BillingCountry,
    Total,
    CASE
        WHEN BillingCountry = 'USA' THEN 'Domestic Sales'
        ELSE 'Foreign Sales'
    END AS [SalesType]
FROM invoices
WHERE SalesType = 'Domestic Sales'
  AND Total > 15
ORDER BY SalesType;

/*
Exercício 3: faturas domésticas acima de 15

Consulta 2: quantas são
*/

SELECT
    COUNT(*) AS [Domestic Invoices Over 15]
FROM invoices
WHERE BillingCountry = 'USA'
  AND Total > 15;
