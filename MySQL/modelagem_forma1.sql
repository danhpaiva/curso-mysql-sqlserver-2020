/* PRIMEIRA FORMA NORMAL */

/* REGRAS
1 - TODO CAMPO VETORIZADO SE TORNARÁ OUTRA TABELA;

2 - TODO CAMPO MULTIVALORADO SE TORNARÁ OUTRA TABELA;

3 - TODA TABELA NECESSITA DE PELO MENOS UM CAMPO QUE IDENTIFIQUE TODO REGISTRO COMO SENDO ÚNICO (CHAVE PRIMÁRIA)
*/

CREATE DATABASE COMERCIO;

USE COMERCIO;

CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT
	, NOME VARCHAR(50) NOT NULL
	, SEXO ENUM('F','M') NOT NULL
	, EMAIL VARCHAR(50) UNIQUE
	, CPF VARCHAR(15) UNIQUE
);

CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT
	, RUA VARCHAR(30) NOT NULL
	, BAIRRO VARCHAR(30) NOT NULL
	, CIDADE VARCHAR(30) NOT NULL
	, ESTADO CHAR(2) NOT NULL
	, ID_CLIENTE INT UNIQUE
	, FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(IDCLIENTE)
);

CREATE TABLE TELEFONE(
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT
	, TIPO ENUM('RES', 'COM', 'CEL') NOT NULL
	, NUMERO VARCHAR(10) NOT NULL
	, ID_CLIENTE INT
	, FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(IDCLIENTE)
);