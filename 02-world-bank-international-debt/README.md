# 02 - Dívida internacional (World Bank)

Projeto guiado do **DataCamp** sobre dados de dívida externa de países em desenvolvimento, coletados pelo **World Bank**. O objetivo é responder a três perguntas de negócio com consultas SQL.

- **Projeto:** 02 - Dataset real (projeto guiado)
- **Fonte dos dados:** World Bank, via DataCamp Workspace
- **Tabela:** `international_debt`
- **Ferramenta:** SQL no DataCamp Workspace
- **Status:** Concluído

> Os enunciados estão parafraseados e as consultas e interpretações são de minha autoria. Os dados pertencem ao World Bank. O arquivo do dataset não está neste repositório.

---

## Contexto

Países também se endividam, por exemplo para financiar infraestrutura, e o World Bank é uma das organizações que concedem empréstimos. A tabela traz, para cada país, o valor de vários indicadores de dívida, em dólares americanos correntes.

## Dados usados

Tabela `international_debt`:

| Coluna | Significado | Tipo |
|--------|-------------|------|
| `country_name` | Nome do país | texto |
| `country_code` | Código do país | texto |
| `indicator_name` | Descrição do indicador de dívida | texto |
| `indicator_code` | Código do indicador de dívida | texto |
| `debt` | Valor do indicador para o país, em dólares correntes | decimal |

Cada linha é a combinação de um país com um indicador de dívida.

## Índice

1. [Pergunta 1: quantos países distintos existem](#pergunta-1-quantos-países-distintos-existem)
2. [Pergunta 2: qual país tem o maior montante de dívida](#pergunta-2-qual-país-tem-o-maior-montante-de-dívida)
3. [Pergunta 3: qual país tem o menor valor de pagamentos](#pergunta-3-qual-país-tem-o-menor-valor-de-pagamentos)

---

## Pergunta 1: quantos países distintos existem

### Pergunta
Quantos países diferentes aparecem na tabela?

### Consulta
```sql
SELECT
    COUNT(DISTINCT country_name) AS "total_distinct_countries"
FROM international_debt;
```

### Resultado

| total_distinct_countries |
|--------------------------|
| 124 |

### Interpretação
A tabela tem dados de [N] países distintos.

### Limitações e decisões
- **Decisões de interpretação:** como cada país aparece em várias linhas (uma por indicador), usei `DISTINCT` para contar cada nome uma única vez.
- **O que o resultado não diz:** a contagem é por `country_name`. Se a tabela incluir agregados regionais (como "South Asia") ou nomes escritos de formas diferentes, eles também entram na contagem.
- **Alternativas consideradas:** contar por `country_code` serve como conferência. Se os dois números forem diferentes, há nomes repetidos para o mesmo código.

---

## Pergunta 2: qual país tem o maior montante de dívida

### Pergunta
Qual país tem o maior montante de dívida?

### Consulta
```sql
SELECT
    country_name,
    SUM(debt) AS "total_debt"
FROM international_debt
GROUP BY country_name
ORDER BY SUM(debt) DESC
LIMIT 1;
```

### Resultado

| country_name | total_debt |
|--------------|------------|
| China | 285793494734.2 |

### Interpretação
O país com o maior montante de dívida, somando todos os indicadores, é China, com 285793494734.2 dólares.

### Limitações e decisões
- **Decisões de interpretação:** como a dívida de cada país está dividida em vários indicadores, entendi "maior montante" como a **soma** de todos eles por país (`SUM` com `GROUP BY`), e não como o maior valor individual.
- **O que o resultado não diz:** somar todos os indicadores pode misturar categorias diferentes e até contar valores sobrepostos, dependendo de quais indicadores existem na tabela. O número serve para comparar países entre si, mas não é a dívida oficial de nenhum deles. Também vale conferir se o resultado é mesmo um país ou um agregado regional.
- **Alternativas consideradas:** `LIMIT 1` devolve apenas uma linha. Em caso de empate, o país mostrado seria arbitrário. Para ver o contexto, bastaria aumentar o `LIMIT` e listar os dez maiores.

---

## Pergunta 3: qual país tem o menor valor de pagamentos

### Pergunta
Qual país tem o menor valor de pagamentos de amortização (repayments)?



### Consulta : menor valor de pagamentos
```sql
SELECT
    country_name,
    indicator_name,
    debt AS "lowest_repayment"
FROM international_debt
WHERE indicator_code = 'DT.AMT.DLXF.CD'
ORDER BY debt ASC
LIMIT 1;
```

### Resultado

| country_name | indicator_name | lowest_repayment |
|--------------|----------------|------------------|
| Timor-Leste | Principal repayments on external debt, long-term (AMT, current US$) | 825000 |

### Interpretação
Entre os países da tabela, Timor-Leste tem o menor valor de pagamentos, com 825000 dólares no indicador `DT.AMT.DLXF.CD`.

### Limitações e decisões
- **Decisões de interpretação:** os pagamentos são um indicador específico, e não a tabela inteira. Por isso filtrei pelo código `DT.AMT.DLXF.CD` e depois ordenei do menor para o maior. Sem esse filtro, o menor `debt` poderia vir de qualquer indicador.
- **O que o resultado não diz:** um valor muito baixo, ou zero, pode refletir ausência de pagamentos ou falta de dado, e a tabela não permite distinguir os dois casos. Se vários países empatarem no menor valor, o `LIMIT 1` mostra só um deles.
- **Alternativas consideradas:** a consulta de apoio lista os indicadores cujo nome contém "repayment", o que ajuda a confirmar que o código escolhido é o certo. Usei `LOWER(...)` para a busca não depender de maiúsculas e minúsculas, já que isso varia entre bancos.

---

## Observações
Este projeto é guiado, ou seja, as perguntas vieram do DataCamp. Os pontos que mais me chamaram a atenção foram a unidade do que está sendo somado (indicadores diferentes não são necessariamente comparáveis) e o cuidado com `LIMIT 1`, que esconde empates.
