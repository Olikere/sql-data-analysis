-- Exercício 1: sobrenomes que começam com B

SELECT
    LastName AS [Last Name]
FROM
  customers
WHERE
   LastName LIKE 'B%'
ORDER BY
  LastName ASC;

-- Exercício 2: empresa no topo da ordem decrescente

SELECT
    Company
FROM
  customers
ORDER BY
  Company DESC
LIMIT 1;

/* Exercício 3: clientes sem CEP
 Consulta 1: quantos são
*/
SELECT
    COUNT(*) AS [Customers Without Postal Code]
FROM
  customers
WHERE
  PostalCode IS NULL;

/* Exercício 3: clientes sem CEP
 Consulta 1: quem são
*/

SELECT
    FirstName,
    LastName,
    PostalCode
FROM
  customers
WHERE
  PostalCode IS NULL
ORDER BY LastName;
