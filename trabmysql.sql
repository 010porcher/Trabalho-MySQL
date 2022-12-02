use trabfinal;

# CONSULTAS COM JOIN

select carros.MODELO, fabricante.FABRICANTE_ID, carros.ano
from carros
inner join fabricante on fabricante.COD_CAR = carros.COD_CAR;

select carros.MODELO, fabricante.FABRICANTE_ID
from carros
left join fabricante on fabricante.COD_CAR = carros.COD_CAR;

select carros.MODELO, fabricante.FABRICANTE_ID, fabricante.ORIGEM
from carros
right join fabricante on carros.COD_CAR = fabricante.COD_CAR;

select vendas.MODELO, preco.fipe, vendas.ano
from vendas
inner join preco on preco.COD_CAR = vendas.COD_CAR;

select vendas.MODELO, estado.BATIDO
from vendas
left join estado on estado.COD_CAR = vendas.COD_CAR;

# CONSULTAS COM ORDER BY
select * from carros
order by cor DESC;

select * from carros
order by ANO DESC;

select * from carros
order by PLACA DESC;

select * from carros
order by FABRICANTE_ID DESC;

select * from vendas
order by PRECO DESC;

select * from vendas
order by PRECO ASC;

SELECT(COD_CAR), modelo
FROM carros
GROUP BY modelo ;

SELECT(COD_CAR), ano
FROM carros
GROUP BY ano ;

SELECT(COD_CAR), nome
FROM carros
GROUP BY nome ;

SELECT(COD_CAR), modelo
FROM carros
GROUP BY modelo ;

SELECT(COD_CAR), preco
FROM carros
GROUP BY preco ;

# JOIN & ORDER BY


select vendas.MODELO, preco.fipe
from vendas
inner join preco on preco.COD_CAR = vendas.COD_CAR
order by FIPE DESC;

select vendas.MODELO, preco.fipe
from vendas
inner join preco on preco.COD_CAR = vendas.COD_CAR
order by FIPE ASC;

SELECT vendas.MODELO, preco.PRECO 
from veNdas
inner join preco on preco.COD_CAR = vendas.COD_CAR
order by preco DESC;

SELECT vendas.MODELO, preco.PRECO 
from veNdas
inner join preco on preco.COD_CAR = vendas.COD_CAR
order by preco ASC;

SELECT carros.ANO, vendas.modelo
from carros
inner join vendas on vendas.cod_car = carros.cod_car
order by ANO ASC;

SELECT carros.ANO, vendas.modelo
from carros
inner join vendas on vendas.cod_car = carros.cod_car
order by ANO DESC;

SELECT COUNT(MODELO)
FROM vendas;

SELECT COUNT(ano)
FROM preco;

SELECT AVG(preco)
FROM vendas;

SELECT AVG(km)
FROM carros;

SELECT AVG(fipe)
FROM preco;

SELECT SUM(preco)
FROM preco;

SELECT SUM(km)
FROM modelo;

CREATE VIEW view01 AS SELECT * FROM carros;
CREATE VIEW view02 AS SELECT * FROM estado;
CREATE VIEW view03 AS SELECT * FROM fabricante;
CREATE VIEW view04 AS SELECT * FROM modelo;
CREATE VIEW view05 AS SELECT * FROM preco;

SHOW TABLES;
