--Exercício 1: chaves estrangeiras da tabela tracks

PRAGMA foreign_key_list(tracks);

--Exercício 2: álbuns e faixas com INNER JOIN

SELECT
    a.AlbumId AS [Albums AlbumId],
    a.Title AS [Album Name],
    t.AlbumId AS [Tracks AlbumId],
    t.Name AS [Track Name]
FROM albums AS a
INNER JOIN tracks AS t
    ON a.AlbumId = t.AlbumId;

--Exercício 3: adicionando o gênero com um segundo JOIN

SELECT
    a.AlbumId AS [Albums AlbumId],
    a.Title AS [Album Name],
    t.AlbumId AS [Tracks AlbumId],
    t.Name AS [Track Name],
    g.Name AS [Genre]
FROM albums AS a
INNER JOIN tracks AS t
    ON a.AlbumId = t.AlbumId
INNER JOIN genres AS g
    ON t.GenreId = g.GenreId;
