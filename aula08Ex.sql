SELECT * FROM bcoaula08.escolas;

SELECT * FROM bcoaula08.estudantes;

SELECT * FROM bcoaula08.estudantes WHERE `estudante_idade`<30;

SELECT * FROM bcoaula08.escolas;

SELECT * FROM bcoaula08.estudantes;

SELECT * FROM bcoaula08.estudantes WHERE `estudante_idade`<30;

SELECT * FROM bcoaula08.estudantes WHERE `escola_id` IS null;

SELECT * FROM bcoaula08.estudantes WHERE `estudante_idade` BETWEEN 10 AND 21;

SELECT * FROM bcoaula08.estudantes 
WHERE `estudante_idade` > 20
ORDER BY `estudante_idade` ASC;
SELECT * FROM bcoaula08.estudantes WHERE `escola_id` IS null;

SELECT * FROM bcoaula08.estudantes WHERE `estudante_idade` BETWEEN 10 AND 21;

SELECT * FROM bcoaula08.estudantes 
WHERE `estudante_nome` LIKE '%Andrade%';

SELECT * FROM `bcoaula08`.`estudantes` LIMIT 5;

SELECT * FROM `bcoaula08`.`estudantes` WHERE `estudante_id` >= 10 ;

SELECT `estudante_nome` FROM `bcoaula08`.`estudantes`;

SELECT * FROM `bcoaula08`.`estudantes` WHERE `estudante_idade` = 18;

SELECT * FROM `bcoaula08`.`estudantes` WHERE `estudante_idade` > 40;

SELECT * FROM `bcoaula08`.`estudantes` WHERE `estudante_idade` >= 65;

SELECT * FROM `bcoaula08`.`estudantes` WHERE `estudante_idade` < 35;

SELECT * FROM `bcoaula08`.`estudantes` WHERE `estudante_idade` <= 30;

SELECT * FROM `bcoaula08`.`estudantes` WHERE `estudante_idade` <> 40;

SELECT * FROM `bcoaula08`.`estudantes` WHERE `escola_id` IS NULL;

SELECT * FROM `bcoaula08`.`estudantes` WHERE `estudante_idade` BETWEEN 32 AND 45;

SELECT * FROM `bcoaula08`.`estudantes` WHERE `estudante_idade` IN (18, 35, 52);

SELECT * FROM `bcoaula08`.`estudantes` WHERE `estudante_idade` = 18 OR `estudante_idade` = 35 OR `estudante_idade` = 52;

SELECT * FROM `bcoaula08`.`estudantes` WHERE `estudante_nome` LIKE 'a%'; 

SELECT * FROM `bcoaula08`.`estudantes` WHERE `estudante_idade` ORDER BY `estudante_idade` DESC;

SELECT * FROM `bcoaula08`.`estudantes` WHERE `estudante_idade` ORDER BY `estudante_idade` ASC; 

SELECT * FROM `bcoaula08`.`estudantes` LIMIT 15 OFFSET 19; 

DELETE FROM `bcoaula08`.`estudantes` WHERE `estudante_idade` = 18;

