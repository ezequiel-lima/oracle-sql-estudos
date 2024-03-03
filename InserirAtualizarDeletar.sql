CREATE TABLE TB_CLIENTES
(
	CPF VARCHAR2(11),
	NOME VARCHAR2(100),
	ENDERECO1 VARCHAR2(150),
	ENDERECO2 VARCHAR2(150),
	BAIRRO VARCHAR2(50),
	CIDADE VARCHAR2(50),
	ESTADO VARCHAR2(2),
	CEP VARCHAR2(8),
	DATA_NASCIMENTO DATE,
	IDADE INTEGER,
	SEXO VARCHAR2(1),
	LIMITE_CREDITO NUMBER(15,2),
	VOLUME_COMPRA NUMBER,
	PRIMEIRA_COMPRA NUMBER(1)
)

CREATE TABLE TB_VENDEDORES
(
	MATRICULA VARCHAR2(5),
	NOME VARCHAR2(100),
	DATA_ADMISSAO DATE,
	PERCENTUAL_COMISSAO NUMBER
)

INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES ('1040107', 'Light', 'Lata', '350 ml', 'Melancia', 4.56);

INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES ('1037797', 'Clean', 'PET', '2 Litros', 'Laranja', 16.01)

INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES ('1000889', 'Sabor da Montanha', 'Garrafa', '700 ml', 'Uva', 6.31)

INSERT INTO TB_PRODUTOS (PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES ('1004327', 'Videira do Campo', 'PET', '1,5 Litros', 'Melancia', 19.51)

INSERT INTO TB_VENDEDORES (MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO)
VALUES ('00233', 'Joao Geraldo da Fonseca', '01/12/2015', 0.10)

INSERT INTO TB_VENDEDORES (MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO)
VALUES ('00400', 'Maria Do Rosario', '23/07/2012', 0.15)

INSERT INTO TB_VENDEDORES (MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO)
VALUES ('00810', 'Marcia Almeida', '14/12/2016', 0.18)

INSERT INTO TB_VENDEDORES (MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO)
VALUES ('00414', 'Carlos Moreira', '13/11/2015', 0.14)

INSERT INTO TB_VENDEDORES (MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO)
VALUES ('00934', 'Juvenildo Martins', '09/03/2010', 0.20)

SELECT * FROM TB_VENDEDORES

SELECT * FROM TB_PRODUTOS 

UPDATE TB_PRODUTOS SET TAMANHO = '350 ml', EMBALAGEM = 'Lata', PRECO_LISTA = 5.50
WHERE PRODUTO = '1037797'

UPDATE TB_VENDEDORES SET PERCENTUAL_COMISSAO = 0.1 WHERE MATRICULA = '00810'

DELETE FROM TB_PRODUTOS WHERE PRODUTO = '1037797'

DELETE FROM TB_VENDEDORES WHERE MATRICULA = '00400'

ALTER TABLE TB_PRODUTOS ADD CONSTRAINT PK_TB_PRODUTOS PRIMARY KEY(PRODUTO)

ALTER TABLE TB_VENDEDORES ADD CONSTRAINT PK_TB_VENDEDORES PRIMARY KEY(MATRICULA)