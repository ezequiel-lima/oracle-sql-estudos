SELECT * FROM TB_CLIENTES

SELECT * FROM TB_PRODUTOS

SELECT PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
FROM TB_PRODUTOS

/* você da um APELIDO para uma coluna na tabela */
SELECT PRODUTO AS "CODIGO DO PRODUTO", NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA
FROM TB_PRODUTOS

/* utilizando filtros */
SELECT * FROM TB_PRODUTOS WHERE PRODUTO = '1040107'
SELECT * FROM TB_PRODUTOS WHERE SABOR = 'Melancia'
SELECT * FROM TB_PRODUTOS WHERE SABOR = 'Limao'

/* utilizando o filtro para atualizar, o que eu coloco depois do WHERE serve tanto para o select quanto para o update*/
UPDATE TB_PRODUTOS SET SABOR = 'Citricos' WHERE SABOR = 'Limao'