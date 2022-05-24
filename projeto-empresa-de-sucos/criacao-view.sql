CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `vw_maiores_embalagens` AS
    SELECT 
        `tabela_de_produtos`.`EMBALAGEM` AS `EMBALAGEM`,
        MAX(`tabela_de_produtos`.`PRECO_DE_LISTA`) AS `MAIOR_PRECO`
    FROM
        `tabela_de_produtos`
    GROUP BY `tabela_de_produtos`.`EMBALAGEM`
