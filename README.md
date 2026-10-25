# SQL Data Analysis

Portfólio de estudo e prática em **análise de dados com SQL**. Cada caso parte de uma pergunta em linguagem natural, a traduz em uma consulta SQL e interpreta o resultado também em linguagem natural, incluindo limitações e decisões tomadas.


---

## Como cada caso é documentado

Todos os casos seguem o mesmo formato:

1. **Pergunta de negócio**, em linguagem natural
2. **Dados usados** (tabelas e colunas relevantes)
3. **Consulta SQL**
4. **Resultado** (tabela ou captura de tela)
5. **Interpretação**: o que o número significa
6. **Limitações e decisões**: o que o resultado não diz e quais escolhas fiz

O modelo está em [`templates/case-template.md`](templates/case-template.md).

## Projetos

| Projeto | Descrição | Dados | Status |
|---------|-----------|-------|--------|
| [01 - SQL Quick Start](01-sql-quick-start/) | Exercícios do *Data Analysis Checklist* de cada módulo do livro | Chinook (SQLite) | Em andamento |
| 02 - Dataset real | Análise autoral com dados públicos | A definir | Planejado |

## Habilidades praticadas

- **Consulta básica:** `SELECT`, `WHERE`, `DISTINCT`, `ORDER BY`, `LIMIT`, aliases
- **Operadores:** comparação, lógicos e aritméticos, `LIKE`
- **Lógica condicional:** `CASE`
- **Funções:** texto (incluindo concatenação), data e agregação
- **Agrupamento:** `GROUP BY` e `HAVING`
- **Múltiplas tabelas:** `JOIN`
- **Consultas avançadas:** subconsultas

> A lista cresce conforme avanço 

## Ferramentas

- **SQLite** e **DB Browser for SQLite**
- **Git e GitHub**

## Estrutura do repositório

```
sql-data-analysis/
├── README.md
├── 01-sql-quick-start/
│   ├── README.md
│   ├── module-01/
│   │   ├── README.md
│   │   ├── queries.sql
│   │   └── images/
│   └── ...
├── 02-<dataset-real>/
└── templates/
    └── case-template.md
```

## Sobre os dados

- **Chinook:** banco de exemplo que simula uma loja de música digital. Fonte oficial: [lerocha/chinook-database](https://github.com/lerocha/chinook-database). O arquivo `.db` não está neste repositório; baixe na fonte para reproduzir as consultas.
- Datasets de outros projetos serão sempre linkados com a fonte e a licença, sem subir arquivos grandes.

## Como reproduzir

1. Baixe o banco do projeto desejado (instruções no README de cada pasta).
2. Abra no DB Browser for SQLite.
3. Em **Execute SQL**, rode as consultas do arquivo `queries.sql`.


## Referências

- Shields, Walter. *SQL Quick Start Guide*. Os enunciados aqui estão parafraseados e as consultas são de minha autoria.

## Autor

**Igor Alves**
[LinkedIn](https://www.linkedin.com/in/olisec/) · [GitHub](https://github.com/Olikere)
