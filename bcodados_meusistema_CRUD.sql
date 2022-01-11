CREATE SCHEMA `meusistema`;

CREATE TABLE `meusistema`.`usuarios`(
	`usuario_id` INT NOT NULL AUTO_INCREMENT,
    `usuario_nome` VARCHAR(150) NULL,
    `usuario_login` VARCHAR(20) NULL,
    `usuario_senha` VARCHAR(50) NULL,
    PRIMARY KEY(`usuario_id`)
);

SELECT * FROM `meusistema`.`usuarios`;

INSERT INTO `meusistema`.`usuarios`(`usuario_nome`,`usuario_login`,`usuario_senha`)
VALUES ('vanessa','nessag','1234'),
	   ('guilherme','guig','9999'),
       ('junior','jrg','707070'),
       ('jennifer','jemg','9874');
       
UPDATE `meusistema`.`usuarios` SET `usuario_nome` = 'vanessag' WHERE `usuario_nome` = 'vanessa';

DELETE FROM `meusistema`.`usuarios` WHERE `usuario_nome` = 'junior';