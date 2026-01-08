update propriedades
set preco_noite = '330.00'
where  id_propriedade = '3';

delete from hospedes
where id_hospede = '2';


select cidade, nome_imovel from enderecos
join propriedades on fk_endereco = id_endereco


update reservas
set data_inicio = '17-10-2025'
where id_reserva ='10';

update propriedades
set preco_noite = 100
where id_propriedade = 1

