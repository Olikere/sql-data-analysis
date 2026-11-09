/*
Exercício 1: lista de endereçamento dos clientes dos EUA
*/

SELECT
    UPPER(FirstName) || ' ' || UPPER(LastName) || ' ' ||
    Address || ', ' || City || ', ' || State || ' ' ||
    SUBSTR(PostalCode, 1, 5) AS [Mailing Label]
FROM customers
WHERE Country = 'USA';

/*
Exercício 2: média de vendas dos EUA

Consulta 1: média por fatura
*/

SELECT
    BillingCountry AS [Country],
    ROUND(AVG(Total), 2) AS [Avg Invoice Total]
FROM invoices
WHERE BillingCountry = 'USA';


/*
Exercício 2: média de vendas dos EUA

Consulta 2: média por ano (complemento)
*/

SELECT
    ROUND(SUM(Total) / COUNT(DISTINCT STRFTIME('%Y', InvoiceDate)), 2) AS [Avg Annual Sales USA]
FROM invoices
WHERE BillingCountry = 'USA';

/*
Exercício 3: total de vendas da empresa
*/

SELECT
    ROUND(SUM(Total), 2) AS [Total Sales]
FROM invoices;

/*
Exercício 4: dez melhores clientes por receita
*/

SELECT
    UPPER(c.FirstName) || ' ' || UPPER(c.LastName) AS [Client Name],
    ROUND(SUM(i.Total), 2) AS [Total Revenue]
FROM invoices AS i
INNER JOIN customers AS c
    ON c.CustomerId = i.CustomerId
GROUP BY
    c.CustomerId,
    c.FirstName,
    c.LastName
ORDER BY SUM(i.Total) DESC
LIMIT 10;
