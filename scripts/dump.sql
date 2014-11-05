CREATE DATABASE SYSPONTO;

GO

CREATE TABLE TB_FUN_FUNCIONARIO(
	FUN_CPF        VARCHAR(14)  NOT NULL,
	FUN_NOME       VARCHAR(100) NOT NULL,
	FUN_DT_NASC    DATETIME,
	FUN_LOGRADOURO VARCHAR(100) NOT NULL,
	FUN_BAIRRO     VARCHAR(50),
	FUN_CEP        VARCHAR(10),
	FUN_TELEFONE   VARCHAR(11),
	FUN_CELULAR    VARCHAR(11),
	FUN_EMAIL      VARCHAR(100),
	
	FUN_SENHA      VARCHAR(50),
	FUN_ADM        VARCHAR(1)  NOT NULL,
	
	FUN_MARCO1     DATETIME,
	FUN_MARCO2     DATETIME,
	FUN_MARCO3     DATETIME,
	FUN_MARCO4     DATETIME,
	
	CONSTRAINT PK_FUN PRIMARY KEY(FUN_CPF),
	CONSTRAINT CK_ADM CHECK(FUN_ADM IN ('S','N'))
);

GO

CREATE TABLE TB_PON_PONTO(
	FUN_CPF  VARCHAR(14) NOT NULL,
	PON_DATA DATETIME NOT NULL,
	PON_HORA DATETIME NOT NULL,
	
	CONSTRAINT FK_PON_FUN FOREIGN KEY(FUN_CPF) REFERENCES TB_FUN_FUNCIONARIO(FUN_CPF),
	CONSTRAINT PK_PON     PRIMARY KEY(FUN_CPF,PON_DATA,PON_HORA)
);

GO

CREATE TABLE TB_FER_FERIADOS(
	FER_DATA      DATETIME NOT NULL,
	FER_DESCRICAO VARCHAR(100),
	
	CONSTRAINT PK_FER PRIMARY KEY(FER_DATA)
);