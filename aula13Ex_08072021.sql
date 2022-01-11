-- 1 -- Na tabela clientes selecione os campos nome e sobrenome e concatene(função concat) eles para que formarem o nome completo do cliente. Relacione cada cliente com a cidade de cobrança que consta na tabela faturas. Precisamos apenas uma ocorrência distinta de cada cliente.

SELECT 
	DISTINCT CONCAT(`c`.`nome`," ",`c`.`sobrenome`),
	`f`.`cidade_cobranca`
FROM `clientes` AS `c` 
INNER JOIN `faturas` AS `f`
ON `c`.`id` = `f`.`id_cliente`;

-- 2 -- Na tabela cancoes selecione o nome da canção e relacionado com a tabela tipos_de_arquivos, selecione também o nome do tipo do arquivo. Inclua na sua seleção também as canções que não tem tipo de arquivo. Ordene pelo id da canção de forma decrescente limitado a 4000 registros.

SELECT 
    `cancoes`.`id` AS `Cancao_Id`,
    `cancoes`.`nome` AS `Cancao`,  
    `tipos_de_arquivo`.`nome` AS `Tipo`
FROM `cancoes`
LEFT JOIN `tipos_de_arquivo`
ON `cancoes`.`id_tipo_de_arquivo` = `tipos_de_arquivo`.`id`
ORDER BY `cancoes`.`id` DESC
LIMIT 4000;

-- 3 -- Em nosso banco de dados, cada fatura é composta por várias músicas adquiridas pelos clientes. Selecione da tabela faturas o id do cliente e a data da fatura. Usando também a tabela intermediária itens_da_faturas selecione também o nome de cada musica adquirida ou seja, na tabela canções o nome. Ordene tudo pelo id do cliente de forma decrescente.

SELECT
`faturas`.`id_cliente`,
`faturas`.`data_fatura`,
`itens_da_faturas`.`id_cancao`,
`cancoes`.`nome` AS `NomeCancao`
FROM `faturas`
INNER JOIN `itens_da_faturas` ON `faturas`.`id` = `itens_da_faturas`.`id_fatura`
INNER JOIN `cancoes` ON `itens_da_faturas`.`id_cancao` = `cancoes`.`id`
ORDER BY `faturas`.`id_cliente` DESC;

-- 4 -- Um artista tem albuns, que por sua vez tem cancões. Selecione o nome do artista da tabela artistas, selecione os nomes dos albuns deste artista (tabela intermediária albuns) e também o nome das canções deste artista contidas nos albuns (tabela cancoes). Ordene os resultados pelo nome do artista de forma decrescente.

SELECT
`albuns`.`titulo`,
`artistas`.`nome` AS `NomeArtista`,
`cancoes`.`nome` AS `NomeCancao`
FROM `artistas`
INNER JOIN `albuns` ON `artistas`.`id` = `albuns`.`id_artista`
INNER JOIN `cancoes` ON `albuns`.`id` = `cancoes`.`id_album`
ORDER BY `artistas`.`nome` DESC;

-- 5 -- Selecione o nome dos gêneros(table generos), o nome das canções deste gênero (table cancoes) e o tipo de arquivo de cada canção (tipos_de_arquivo). Selecione inclusive as musicas que o tipo de arquivo é nulo. Ordene tudo isso pelo nome do gênero de forma decrescente.

SELECT 
    `generos`.`nome` AS `Genero`,
    `cancoes`.`nome` AS `Cancao`,  
    `tipos_de_arquivo`.`nome` AS `Tipo`
FROM `generos`
INNER JOIN `cancoes` ON `generos`.`id` = `cancoes`.`id_genero`
LEFT JOIN `tipos_de_arquivo` ON `cancoes`.`id_tipo_de_arquivo` = `tipos_de_arquivo`.`id`
ORDER BY `generos`.`nome` DESC;