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


DECLARE
	v_ID SEGMERCADO.ID%type := 3; /* Declaro a variavel com o mesmo tipo que esta na tabela*/
	v_DESCRICAO SEGMERCADO.DESCRICAO%type := 'Atacado';
BEGIN
	INSERT INTO SEGMERCADO(ID, DESCRICAO) VALUES (v_ID, v_DESCRICAO);
	COMMIT;
END;

DECLARE
   v_COD PRODUTO_EXERCICIO.COD%TYPE := '32223';
   v_DESCRICAO PRODUTO_EXERCICIO.DESCRICAO%TYPE := 'Sabor de Verão - Uva - 1 Litro';
   v_CATEGORIA PRODUTO_EXERCICIO.CATEGORIA%TYPE := 'Sucos de Frutas';
BEGIN
   INSERT INTO PRODUTO_EXERCICIO (COD, DESCRICAO, CATEGORIA) VALUES (v_COD, v_DESCRICAO, v_CATEGORIA);
   COMMIT;
END;

/* para garantir um consulta mais eficiente podemos gravar os dados já com o UPPER */
DECLARE
	v_ID SEGMERCADO.ID%type := 4; /* Declaro a variavel com o mesmo tipo que esta na tabela*/
	v_DESCRICAO SEGMERCADO.DESCRICAO%type := 'Atacado';
BEGIN
	INSERT INTO SEGMERCADO(ID, DESCRICAO) VALUES (v_ID, UPPER(v_DESCRICAO));
	COMMIT;
END;

SELECT s.* FROM SEGMERCADO s 

DECLARE
   v_COD produto_exercicio.cod%type := '67120';
   v_DESCRICAO produto_exercicio.descricao%type := 'Frescor da Montanha - Aroma Limão - 1 Litro';
   v_CATEGORIA produto_exercicio.categoria%type := 'Águas';
BEGIN
   INSERT INTO PRODUTO_EXERCICIO (COD, DESCRICAO, CATEGORIA) VALUES (v_COD, REPLACE(v_DESCRICAO, '-', '>'), v_CATEGORIA);
   COMMIT;
END;

SELECT pe.* FROM PRODUTO_EXERCICIO pe; 

DECLARE
	v_COD produto_exercicio.cod%type := '41232';
	v_DESCRICAO produto_exercicio.descricao%type := 'Sabor de Verão - Laranja - 1 Litro';
	v_CATEGORIA produto_exercicio.categoria%type := 'Sucos de Frutas';
BEGIN
	UPDATE PRODUTO_EXERCICIO SET DESCRICAO = REPLACE(v_DESCRICAO, '-', '>') WHERE COD = v_COD;
	v_COD := '32223';
	v_DESCRICAO := 'Sabor de Verão - Uva - 1 Litro';
	UPDATE PRODUTO_EXERCICIO SET DESCRICAO = REPLACE(v_DESCRICAO, '-', '>') WHERE COD = v_COD;
	COMMIT;
END;

/* Update com PLSQL */
SELECT s.* FROM SEGMERCADO s 

/* ALTERACAO */
DECLARE
	v_ID SEGMERCADO.ID%type := 2; 
	v_DESCRICAO SEGMERCADO.DESCRICAO%type := 'Industrial';
BEGIN
	UPDATE SEGMERCADO SET DESCRICAO = UPPER(v_DESCRICAO) WHERE ID = v_ID;
	COMMIT;
END;

/* INCLUSAO */
DECLARE
	v_ID SEGMERCADO.ID%type := 5;
	v_DESCRICAO SEGMERCADO.DESCRICAO%type := 'Esportistas';
BEGIN
	INSERT INTO SEGMERCADO(ID, DESCRICAO) VALUES (v_ID, UPPER(v_DESCRICAO));
	COMMIT;
END;

/* EXCLUSAO */
DECLARE
	v_ID SEGMERCADO.ID%type := 5;
BEGIN
	DELETE FROM SEGMERCADO WHERE ID = v_ID;
	COMMIT;
END;


DECLARE
   v_COD produto_exercicio.cod%type := '92347';
   v_DESCRICAO produto_exercicio.descricao%type := 'Aroma do Campo - Mate - 1 Litro';
   v_CATEGORIA produto_exercicio.categoria%type := 'Águas';
BEGIN
   INSERT INTO PRODUTO_EXERCICIO (COD, DESCRICAO, CATEGORIA) VALUES (v_COD, REPLACE(v_DESCRICAO,'-','>')
   , v_CATEGORIA);
   COMMIT;
END;

SELECT pe.* FROM PRODUTO_EXERCICIO pe

DECLARE
	v_COD PRODUTO_EXERCICIO.COD%TYPE := '92347';
	v_CATEGORIA PRODUTO_EXERCICIO.CATEGORIA%TYPE := 'Mate';
BEGIN
	UPDATE PRODUTO_EXERCICIO SET CATEGORIA = v_CATEGORIA WHERE COD = v_COD;
	COMMIT;
END;