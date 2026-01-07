-- Active: 1767804029560@@127.0.0.1@5432@db_novo
select nome, nome_imovel,data_inicio from propriedades
join reservas on fk_propriedades = id_propriedade
join hospedes on id_hospede = fk_hospedes


select * from reservas 
where valor_total > 500;  




create view vw_faturamento_por_movel as
select nome_imovel, sum(valor_total) from propriedades
join reservas on id_propriedade = fk_propriedades
Group by nome_imovel  