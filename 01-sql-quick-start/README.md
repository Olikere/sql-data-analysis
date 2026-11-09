# 01 - SQL Quick Start

Exercícios do **Data Analysis Checklist** de cada módulo do livro *SQL Quick Start Guide* (Walter Shields), resolvidos com **SQLite** e o banco **Chinook**.

Este é o meu projeto de estudo guiado: aqui resolvo os exercícios propostos pelo livro e documento o raciocínio, incluindo erros, correções e decisões de interpretação.

> Os enunciados estão parafraseados e as consultas são de minha autoria. Os direitos do livro pertencem ao autor.

---

## Sobre o banco de dados

Os exercícios usam o **Chinook**, um banco de exemplo que simula uma loja de música digital, com tabelas como `customers`, `invoices`, `invoice_items`, `tracks`, `albums`, `artists` e `employees`.

- **Fonte oficial:** [lerocha/chinook-database](https://github.com/lerocha/chinook-database)
- **Arquivo `.db`:** não está neste repositório. Baixe a versão SQLite na fonte oficial para reproduzir as consultas.

## Como reproduzir

1. Baixe o banco Chinook (versão SQLite) na fonte oficial.
2. Abra o arquivo no **DB Browser for SQLite**.
3. Na aba **Execute SQL**, rode as consultas do arquivo `queries.sql` de cada módulo.

## Módulos

| Módulo | Tema | Status |
|--------|------|--------|
| [04](module-04/) | SELECT, WHERE, AS, COMMENTS, ORDER BY , LIMIT,  | Concluído |
| [05](module-05/) | CASE, AS, WHERE, ORDER BY, COUNT | Concluído |
| [06](module-06/) | INNER JOIN, chaves estrangeiras, alias de tabela | Concluído |
| [07](module-07/) | Funções de texto, agregações, GROUP BY, JOIN | Concluído |

> A tabela é atualizada conforme avanço no livro.

## Como cada módulo está organizado

```
module-XX/
├── README.md      # exercícios: pergunta, consulta, resultado, interpretação e limitações
├── queries.sql    # todas as consultas do módulo, comentadas por exercício
└── images/        # capturas de tela dos resultados
```

Os exercícios seguem o modelo definido em [`templates/case-template.md`](../templates/case-template.md).

## Referência

- Shields, Walter. *SQL Quick Start Guide*.

---

[Voltar ao repositório principal](../README.md)
