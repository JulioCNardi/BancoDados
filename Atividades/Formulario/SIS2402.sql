CREATE SCHEMA  `SIS2402`;
USE `SIS2402`;

-- Criando Tabela
CREATE TABLE `SIS2402`.`CLIENTES`(
	`id` VARCHAR(255),
	NomeCompleto VARCHAR(255),
    Email VARCHAR(255),
    Nascimento DATE,
    Sexo_ou_genero VARCHAR(255),
    CEP CHAR(255),
    Rua VARCHAR(255),
    Numero INT,
    Bairro VARCHAR(255),
    Cidade VARCHAR(255),
    UF CHAR(2),
    Pais VARCHAR(255)
    );