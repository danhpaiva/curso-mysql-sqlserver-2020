/* SELECAO, PROJECAO */

-- Projeção é tudo o que você quer ver na tela
SELECT NOW() AS DATA_ATUAL;

SELECT 2 + 2 AS SOMA;

-- Seleção é um subconjunto do conjunto total de registros de uma tabela
-- Cláusula de seleção é o WHERE

SELECT NOME, SEXO, EMAIL --PROJEÇÃO
FROM CLIENTE --ORIGEM
WHERE SEXO = 'F'; --SELECAO

SELECT NUMERO
FROM TELEFONE
WHERE TIPO = 'CEL';