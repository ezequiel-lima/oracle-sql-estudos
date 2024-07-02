/* STRING */
SELECT tdc.NOME FROM TABELA_DE_CLIENTES tdc 

SELECT LOWER(tdc.NOME) FROM TABELA_DE_CLIENTES tdc /* Transforma a string em minusculo */

SELECT UPPER(tdc.NOME) FROM TABELA_DE_CLIENTES tdc /* Transforma a string em maiusculo */

SELECT INITCAP(tdc.NOME) FROM TABELA_DE_CLIENTES tdc /* Transforma a primeira letra da string em maiusculo */

SELECT CONCAT(CONCAT(tdc.ENDERECO_1, ' '), tdc.BAIRRO) FROM TABELA_DE_CLIENTES tdc /* primeiro concateno com o espaço e depois com o bairro */
 
SELECT (tdc.ENDERECO_1 || ' ' || tdc.BAIRRO) AS Endereco_Completo FROM TABELA_DE_CLIENTES tdc /* CONCAT de outra forma */
 
SELECT LPAD(tdp.NOME_DO_PRODUTO, 70, '*')  FROM TABELA_DE_PRODUTOS tdp /* Preencho os campos vazios a esquerda no caso com '*' e informo a quantidade */
 
SELECT RPAD(tdp.NOME_DO_PRODUTO, 70, '*')  FROM TABELA_DE_PRODUTOS tdp /* Preencho os campos vazios a direita no caso com '*' e informo a quantidade */
  
SELECT SUBSTR(tdp.NOME_DO_PRODUTO, 1, 10) FROM TABELA_DE_PRODUTOS tdp /* primeiro parametro é a string, o segundo é o inicio da string, e o terceiro é a quantidade que você deseja obter na substring */

SELECT tdp.NOME_DO_PRODUTO FROM TABELA_DE_PRODUTOS tdp WHERE INSTR(tdp.NOME_DO_PRODUTO, 'Campo') <> 0 /* INSTR é para saber se o segundo parametro contem na string */

SELECT LTRIM(tdp.NOME_DO_PRODUTO) FROM TABELA_DE_PRODUTOS tdp /* remove espaço vazio a esquerda */

SELECT RTRIM(tdp.NOME_DO_PRODUTO) FROM TABELA_DE_PRODUTOS tdp /* remove espaço vazio a direita */

SELECT TRIM(tdp.NOME_DO_PRODUTO) FROM TABELA_DE_PRODUTOS tdp /* remove espaço vazio a esquerda e direita, mas não remove espaço do meio da string */

SELECT REPLACE(tdp.NOME_DO_PRODUTO, ' ', '') FROM TABELA_DE_PRODUTOS tdp /* remove todos os espaços vazios */

SELECT REPLACE(tdp.NOME_DO_PRODUTO, 'Litros', 'L') FROM TABELA_DE_PRODUTOS tdp /* O replace pega o segundo parametro e substitui pelo teceiro, ou seja Litros vira L na consulta */

SELECT REGEXP_REPLACE(tdp.NOME_DO_PRODUTO, 'Litros?','L') FROM TABELA_DE_PRODUTOS tdp; /* Utiliza expressões regulares para substituir 'Litro' ou 'Litros' por 'L' */
/* STRING */

/* DATE */
SELECT SYSDATE FROM DUAL

SELECT TO_CHAR(SYSDATE, 'DD/MM/YYYY HH:MI:SS') FROM DUAL

SELECT tdc.NOME, tdc.DATA_DE_NASCIMENTO FROM TABELA_DE_CLIENTES tdc 

SELECT tdc.NOME, TO_CHAR(tdc.DATA_DE_NASCIMENTO, 'DD MONTH YYYY DAY') FROM TABELA_DE_CLIENTES tdc  /* converte data para texto */

SELECT tdc.NOME, (ROUND((MONTHS_BETWEEN(SYSDATE, tdc.DATA_DE_NASCIMENTO)/12), 0)) AS IDADE FROM TABELA_DE_CLIENTES tdc  

/* Extrai o ano da data de nascimento e filtra por um ano específico */
SELECT tdc.NOME, tdc.DATA_DE_NASCIMENTO, EXTRACT(YEAR FROM tdc.DATA_DE_NASCIMENTO) AS ANO_NASCIMENTO
FROM TABELA_DE_CLIENTES tdc
WHERE EXTRACT(YEAR FROM tdc.DATA_DE_NASCIMENTO) = 1985;
/* DATE */

/* NUMBER */
SELECT 3.4 FROM DUAL 

SELECT ROUND(3.4) FROM DUAL  /* Arredonda 3.4 para o inteiro mais próximo, resultando em 3. */

SELECT ROUND(3.5) FROM DUAL  /* Arredonda 3.5 para o inteiro mais próximo, resultando em 4. */

SELECT ROUND(3.6) FROM DUAL  /* Arredonda 3.6 para o inteiro mais próximo, resultando em 4. */

SELECT TRUNC(3.4) FROM DUAL  /* Trunca 3.4 para o inteiro mais próximo sem arredondamento, resultando em 3. */

SELECT TRUNC(3.5) FROM DUAL  /* Trunca 3.5 para o inteiro mais próximo sem arredondamento, resultando em 3. */

SELECT TRUNC(3.6) FROM DUAL  /* Trunca 3.6 para o inteiro mais próximo sem arredondamento, resultando em 3. */

SELECT CEIL(3.4) FROM DUAL  /* Arredonda 3.4 para o maior resultando em 4. */

SELECT CEIL(3.5) FROM DUAL  /* Arredonda 3.5 para o maior resultando em 4. */

SELECT CEIL(3.6) FROM DUAL  /* Arredonda 3.6 para o maior resultando em 4. */

SELECT FLOOR(3.4) FROM DUAL  /* Arredonda 3.4 para o menor resultando em 3. */

SELECT FLOOR(3.5) FROM DUAL  /* Arredonda 3.5 para o menor resultando em 3. */

SELECT FLOOR(3.6) FROM DUAL  /* Arredonda 3.6 para o menor resultando em 3. */

SELECT POWER(2, 2) FROM DUAL  /* Calcula 2 elevado à potência de 2, resultando em 4. */

SELECT SQRT(2) FROM DUAL /* Calcula a raiz quadrada de 2, aproximadamente 1.414. */
/* NUMBER */
