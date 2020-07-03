CREATE DATABASE LIVRARIA;

USE LIVRARIA;

CREATE TABLE LIVROS(
	  NOME_LIVRO VARCHAR(50)
	, NOME_AUTOR VARCHAR(50)
	, SEXO CHAR(1)
	, NUMERO_PAGINAS INT(4)
	, NOME_EDITORA VARCHAR(25)
	, VALOR_LIVRO FLOAT(10,2)
	, UF_EDITORA CHAR(2)
	, ANO_PUBLICACAO INT(4)
);

INSERT INTO LIVROS VALUES('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',2009)
						,('SQL para leigos','João Nunes','M',450,'Addison',98,'SP',2018)
						,('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',2008)
						,('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78,'RJ',2018)
						,('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150,'RJ',2019)
						,('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016)
						,('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015)
						,('Pra sempre amigas','Leda Silva','F',510,'Insignia',78,'ES',2011)
						,('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130,'RS',2018)
						,('O poder da mente','Clara Mafra','F',120,'Continental',56,'SP',2017);
						
/*Trazer todos os dados.*/					
SELECT * 
FROM LIVROS;

/*Trazer o nome do livro e o nome da editora*/
SELECT NOME_LIVRO AS 'NOME DO LIVRO', NOME_EDITORA AS 'NOME DA EDITORA'
FROM LIVROS;

/*Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.*/
SELECT NOME_LIVRO AS 'NOME DO LIVRO', UF_EDITORA AS 'ESTADO'
FROM LIVROS
WHERE SEXO = 'M';

/*Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.*/
SELECT NOME_LIVRO AS 'NOME DO LIVRO', NUMERO_PAGINAS AS 'PAGINAS'
FROM LIVROS
WHERE SEXO = 'F';

/*Trazer os valores dos livros das editoras de São Paulo.*/
SELECT NOME_LIVRO AS 'NOME DO LIVRO', VALOR_LIVRO AS 'VALOR DO LIVRO'
FROM LIVROS
WHERE UF_EDITORA = 'SP';

/*Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).*/
SELECT NOME_AUTOR AS 'NOME DO AUTOR', SEXO
FROM LIVROS
WHERE SEXO = 'M' AND (UF_EDITORA = 'RJ' OR UF_EDITORA = 'SP');

/* BÔNUS: COMANDO PARA SABER A DATABASE CORRENTE*/
STATUS;