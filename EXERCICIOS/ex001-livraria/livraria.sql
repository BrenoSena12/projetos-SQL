/* 
O nosso cliente solicitou uma tabela para armazenar os livros que são comercializados pela empresa. A solicitação é somente para livros e não há a necessidade de realizar busca em outras tabelas. Hoje há um funcionário de vendas que tem uma tabela do Excel para guardar esses registros, mas as buscas estão ficando complexas. Decidiu-se então criar um banco de dados separado para esse funcionário.
Após a criação da tabela, deveremos entregar algumas queries prontas para que sejam enviadas para o programador. As queries são as seguintes:
1 – Trazer todos os dados.
2 – Trazer o nome do livro e o nome da editora
3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.
4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.
5 – Trazer os valores dos livros das editoras de São Paulo.
6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).
*/

CREATE DATABASE livraria;

USE livraria;

CREATE TABLE livros(
	nome_livro VARCHAR(30),
    nome_autor VARCHAR(50),
    sexo_autor CHAR(1),
    numero_paginas FLOAT,
    nome_editora VARCHAR(50),
    valor_livro INT,
    uf_editora CHAR(2),
    ano_publicacao CHAR(4)
);

INSERT INTO livros(nome_livro, nome_autor, sexo_autor, numero_paginas, nome_editora, valor_livro, uf_editora, ano_publicacao)
VALUES('Cavaleiro Real', 'Ana Claudia', 'F', 465, 'Atlas', 49.9, 'RJ', 2009),
	  ('SQL para leigos', 'Jolie Nunes', 'M', 450, 'Addison', 98, 'SP', 2018),
	  ('Receitas Caseiras', 'Celia Tavares', 'F', 210, 'Atlas', 45, 'RJ', 2008),
	  ('4 Pessoas Efetivas', 'Eduardo Santos', 'M', 390, 'Beta', 78.99, 'RJ', 2018),
	  ('Habitos Saudáveis', 'Desconhecido', 'M', 630, 'Beta', 150.98, 'RJ', 2019),
	  ('A Casa Marrom', 'Hermes Macedo', 'M', 250, 'Bubba', 60, 'MG', 2016),
	  ('Estacio Querido', 'Geraldo Francisco', 'M', 310, 'Insignia', 100, 'ES', 2015),
	  ('Pra sempre amigas', 'Leda Silva', 'F', 510, 'Insignia', 78.98, 'ES', 2011),
	  ('Copas Inesqueciveis', 'Marco Alcantara', 'M', 200, 'Larson', 130.98, 'RS', 2018),
	  ('O poder da mente', 'Clara Mafra', 'F', 120, 'Continental', 56.58, 'RS', 2017);

-- 1) TRAZENTO TODOS OS DADOS
SELECT nome_livro, nome_autor, sexo_autor, numero_paginas, nome_editora, valor_livro, uf_editora, ano_publicacao FROM livros;

-- 2) TRAZER O NOME DO LIVRO E DA EDITORA
SELECT nome_livro AS livro, nome_editora AS editora FROM livros;

-- 3) TRAZER O NOME DO LIVRO E A UF DOS LIVROS PUBLICADOS POR AUTORES DO SEXO MASCULINO
SELECT nome_livro AS LIVRO, uf_editora AS EDITORA FROM livros WHERE sexo_autor = 'M';
      
-- 4) TRAZER O NOME DO LIVRO E O NÚMERO DE PÁGINAS DOS LIVROS PUBLICADOS POR AUTORES DO SEXO FEMININO
SELECT nome_livro AS LIVRO, numero_paginas AS QTD_PAGINAS FROM livros WHERE sexo_autor = 'f';

-- 5) TRAZER OS VALORES DOS LIVROS DAS EDITORAS DE SÃO PAULO
SELECT valor_livro FROM livros WHERE uf_editora = 'sp';

-- 6) TRAZER OS DADOS DOS AUTORES DO SEXO MASCULINO QUE TIVERAM LIVROS PUBLICADOS POR SÃO PAULO OU RIO DE JANEIRO
SELECT nome_livro, nome_autor, sexo_autor, numero_paginas, nome_editora, valor_livro, uf_editora, ano_publicacao
FROM livros WHERE sexo_autor ='M'
AND uf_editora = 'SP' OR uf_editora = 'RJ';
