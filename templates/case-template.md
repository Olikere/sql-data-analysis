# Caso: <título curto e descritivo>

- **Projeto:** <ex.: 01 - SQL Quick Start · Módulo 01>
- **Banco/Dataset:** <ex.: Chinook (SQLite)>
- **Status:** <Concluído | Em revisão>

---

## 1. Pergunta de negócio

<Escreva a pergunta em linguagem natural, com as suas palavras. Se vier de um livro ou curso, parafraseie.>

## 2. Dados usados

| Tabela | Colunas relevantes | Observação |
|--------|--------------------|------------|
| `<tabela>` | `<coluna1>`, `<coluna2>` | <por que é necessária> |

## 3. Consulta SQL

```sql
-- <comentário curto sobre a abordagem, se necessário>
SELECT
    <colunas>
FROM <tabela>
WHERE <condição>;
```

## 4. Resultado

![Resultado da consulta](images/<nome_descritivo>.png)

<Se o resultado for pequeno, pode colocar a tabela em Markdown no lugar da imagem.>

## 5. Interpretação

<Explique em linguagem natural o que o resultado significa, como se estivesse contando para alguém que não conhece SQL. Inclua a unidade do número (por fatura, por cliente, por ano...).>

## 6. Limitações e decisões

- **Decisões de interpretação:** <ex.: usei `BillingCountry` em vez de `customers.Country` porque...>
- **O que o resultado não diz:** <ex.: é a média por fatura, não a média anual>
- **Alternativas consideradas:** <outras formas de resolver e por que escolhi esta>

## 7. O que aprendi (opcional)

<Erros cometidos, conceitos que ficaram mais claros, o que faria diferente. Se voltar ao caso depois com uma técnica nova, registre aqui o que mudou.>
