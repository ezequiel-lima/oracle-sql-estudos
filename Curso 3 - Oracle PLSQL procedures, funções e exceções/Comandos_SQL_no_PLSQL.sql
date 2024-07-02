/* PL/SQL */
DECLARE
	v_ID NUMBER(5) := 2; /* v_ é uma variavel que foi declarade no declare, inicializada com o valor 2*/
BEGIN
	dbms_output.put_line(v_ID); /* exibi o resultado  */
	v_ID := 3; /* variavel recebe 3 */
	dbms_output.put_line(v_ID);
END;

/* Comando SQL no PL/SQL */
INSERT INTO SEGMERCADO(ID, DESCRICAO) VALUES (1, 'Varejo');

SELECT s.* FROM SEGMERCADO s 

DELETE FROM SEGMERCADO;

/* Criacao de comando PL/SQL para incluir dados na tabela */
DECLARE
	v_ID NUMBER(5) := 2;
	v_DESCRICAO VARCHAR2(100) := 'Industria';
BEGIN
	INSERT INTO SEGMERCADO(ID, DESCRICAO) VALUES (v_ID, v_DESCRICAO);
	COMMIT;
END;


SELECT pe.* FROM PRODUTO_EXERCICIO pe 

DECLARE
	v_COD VARCHAR2(5) := '41232';
	v_DESCRICAO VARCHAR2(100) := 'Sabor de Verão - Laranja - 1 Litro';
	v_CATEGORIA VARCHAR2(100) := 'Sucos de Frutas';
BEGIN
	INSERT INTO PRODUTO_EXERCICIO(COD, DESCRICAO, CATEGORIA) VALUES (v_COD, v_DESCRICAO, v_CATEGORIA);
	COMMIT;
END;


