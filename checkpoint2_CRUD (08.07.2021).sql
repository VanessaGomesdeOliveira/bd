CREATE SCHEMA `checkpoint2`;

CREATE TABLE `checkpoint2`.`corretores`(
    `corretor_id` INT NOT NULL AUTO_INCREMENT,
    `corretor_nome` VARCHAR(10) NULL,
    `corretor_creci` VARCHAR(10) NULL,
    `corretor_telefone` VARCHAR(16) NULL,
    `corretor_email` VARCHAR(30) NULL,
    `corretor_cpf` VARCHAR(14) NULL,
    `corretor_cidade` VARCHAR(14) NULL,
    `corretor_estado` VARCHAR(14) NULL,
    PRIMARY KEY(`corretor_id`)
);

CREATE TABLE `checkpoint2`.`empreendimentos_imobiliarios`(
    `empreendimento_id` INT NOT NULL AUTO_INCREMENT,
    `empreendimento_nome` VARCHAR(150) NULL,
    `empreendimento_cnpj` VARCHAR(30) NULL,
    `empreendimento_endereco` VARCHAR(100) NULL,
    `empreendimento_numero` VARCHAR(10) NULL,
    `empreendimento_cidade` VARCHAR(30) NULL,
    `empreendimento_estado` VARCHAR(30) NULL,
    `empreendimento_cep` VARCHAR(30) NULL,
    `empreendimento_unidade` VARCHAR(10) NULL,
    `empreendimento_telefone` VARCHAR(16) NULL,
    `empreendimento_email` VARCHAR(30) NULL,
    PRIMARY KEY(`empreendimento_id`)
);

CREATE TABLE `checkpoint2`.`clientes`(
    `cliente_id` INT NOT NULL AUTO_INCREMENT,
    `cliente_nome` VARCHAR(150) NULL,
    `cliente_cpf` VARCHAR(14) NULL,
    `cliente_telefone` VARCHAR(16) NULL,
    `cliente_email` VARCHAR(30) NULL,
    `cliente_cidade` VARCHAR(30) NULL,
    `cliente_estado` VARCHAR(30) NULL,
    `empreendimento_id` INT,
    `corretor_id` INT,
    PRIMARY KEY(`cliente_id`),
    INDEX `empreendimento_id_idx` (`empreendimento_id` ASC) VISIBLE,
    INDEX `corretor_id_idx` (`corretor_id` ASC) VISIBLE,
    CONSTRAINT `FKempreendimentoid` FOREIGN KEY(`empreendimento_id`) REFERENCES `checkpoint2`.`empreendimentos_imobiliarios`(`empreendimento_id`),
    CONSTRAINT `FKcorretorid` FOREIGN KEY(`corretor_id`) REFERENCES `checkpoint2`.`corretores`(`corretor_id`)
);

SELECT * FROM `checkpoint2`.`clientes`;

INSERT INTO `checkpoint2`.`clientes`(`cliente_nome`,`cliente_cpf`,`cliente_telefone`,`cliente_email`,`cliente_cidade`,`cliente_estado`)
VALUES ('vanessa','33344455511','11999999999','vanessa@gmail.com','sao paulo','sp'),
       ('edson','99944455511','11889999999','edson@gmail.com','salvador','ba'),
       ('guilherme','88844455511','11779999999','guilherme@gmail.com','fortaleza','ce'),
       ('iracema','77744455511','11669999999','iracema@gmail.com','rio de janeiro','rj');
       
UPDATE `checkpoint2`.`clientes` SET `cliente_nome` = 'iracemag' WHERE `cliente_nome` = 'iracema';

DELETE FROM `checkpoint2`.`clientes` WHERE `cliente_nome` = 'edson';