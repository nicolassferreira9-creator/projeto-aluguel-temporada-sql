update propriedades
set preco_noite = '330.00'
where  id_propriedade = '3';

delete from hospedes
where id_hospede = '2';


select cidade, nome_imovel from enderecos
join propriedades on fk_endereco = id_endereco