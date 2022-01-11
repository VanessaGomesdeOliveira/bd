SELECT * FROM `musi_mundos2`.`faturas`;

SELECT MAX(`valor_total`) FROM `faturas` WHERE `cidade_cobranca`= 'Oslo';

SELECT MIN(`valor_total`) FROM `faturas`;

SELECT AVG(`valor_total`) FROM `faturas` WHERE `pais_cobranca` = 'Canada';

SELECT COUNT(*) FROM `faturas` WHERE `pais_cobranca` = 'Canada';

SELECT SUM(`valor_total`) FROM `faturas`;

SELECT `id`, `data_fatura`, `valor_total` FROM `faturas` WHERE
`valor_total` < (SELECT AVG(`valor_total`) FROM `faturas`);

SELECT * FROM `musi_mundos2`.`empregados`;

SELECT MAX(`data_nascimento`) FROM `empregados`;

SELECT MIN(`data_nascimento`) FROM `empregados`;

SELECT DATE_FORMAT(`data_nascimento`, '%d %M %Y') FROM
`empregados`;

SELECT * FROM `musi_mundos2`.`cancoes`;

SELECT COUNT(*) FROM `cancoes` WHERE `compositor` = 'AC/DC';

SELECT AVG(`duracao_segundos`)*1000 FROM `cancoes`;

SELECT AVG(`bytes`) FROM `cancoes` WHERE `compositor` = 'AC/DC';

SELECT * FROM `musi_mundos2`.`clientes`;

SELECT COUNT(*) FROM `clientes` WHERE `cidade` = 'Sao Paulo';

SELECT COUNT(*) FROM `clientes` WHERE `pais` = 'Paris';

SELECT COUNT(*) FROM `clientes` WHERE `email` LIKE '%yahoo%';