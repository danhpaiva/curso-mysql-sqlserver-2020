/* Considerando o que vc aprendeu sobre performance, resolva os exercicios abaixo */

--Traga os funcionarios que trabalhem
--no departamento de filmes OU no
--departamento de roupas

SELECT NOME AS 'NOME DO FUNCIONARIO', DEPARTAMENTO AS 'DEPARTAMENTO DO FUNCIONARIO'
FROM FUNCIONARIOS
WHERE DEPARTAMENTO = 'FILMES'
OR DEPARTAMENTO = 'ROUPAS';

--Traga os funcionarios do sexo masculino
--ou os funcionarios que trabalhem no setor Jardim

SELECT NOME AS 'NOME DO FUNCIONARIO', SEXO, DEPARTAMENTO
FROM FUNCIONARIOS
WHERE SEXO = 'MASCULINO'
OR DEPARTAMENTO = 'JARDIM';

--O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento 
--de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras
--desses dois setores. OR +  AND

SELECT NOME AS 'NOME DAS FUNCIONARIAS', SEXO, DEPARTAMENTO
FROM FUNCIONARIOS
WHERE SEXO = 'FEMININO'
AND (DEPARTAMENTO = 'JARDIM' OR DEPARTAMENTO = 'LAR');