/* Considerando o que vc aprendeu sobre performance, resolva os exercicios abaixo */

SELECT COUNT(*) FROM FUNCIONARIOS;

--Traga os funcionarios que trabalhem
--no departamento de filmes OU no
--departamento de roupas

SELECT COUNT(*), departamento
FROM FUNCIONARIOS
group by departamento
order by 1;

SELECT NOME, DEPARTAMENTO
FROM FUNCIONARIOS
WHERE DEPARTAMENTO = 'ROUPAS'
OR
DEPARTAMENTO = 'FILMES'
ORDER BY DEPARTAMENTO;

--Traga os funcionarios do sexo masculino
--ou os funcionarios que trabalhem no setor Jardim

SELECT COUNT(*), SEXO
FROM FUNCIONARIOS
GROUP BY SEXO;

SELECT COUNT(*), DEPARTAMENTO
FROM FUNCIONARIOS
GROUP BY DEPARTAMENTO;

SELECT NOME AS 'NOME DO FUNCIONARIO', SEXO, DEPARTAMENTO
FROM FUNCIONARIOS
WHERE SEXO = 'MASCULINO'
OR DEPARTAMENTO = 'JARDIM';

--O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento 
--de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras
--desses dois setores. OR +  AND

SELECT COUNT(*), SEXO
FROM FUNCIONARIOS
GROUP BY SEXO;

SELECT NOME AS 'NOME DAS FUNCIONARIAS', SEXO, DEPARTAMENTO
FROM FUNCIONARIOS
WHERE 
	(DEPARTAMENTO = 'LAR' AND SEXO = 'FEMININO')
OR
	(DEPARTAMENTO = 'FILMES' AND SEXO = 'FEMININO')
ORDER BY 3;