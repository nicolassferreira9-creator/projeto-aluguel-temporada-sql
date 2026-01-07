create table hospedes(
id_hospede serial primary key,
nome varchar (70),
email varchar(70),
telefone numeric(9)
);

create table enderecos(
id_endereco serial primary key,
rua varchar(60),
numero int,
bairro varchar(30),
cidade varchar(30),
estado varchar (2)
);

create table propriedades(
id_propriedade serial primary key,
nome_imovel varchar(50),
capacidade_hospedes numeric(7,2),
endereco_propriedade varchar(50),
fk_endereco int not null references enderecos(id_endereco)
);

alter table propriedades add column
Preco_noite numeric(5,2)


create table reservas(
id_reserva serial primary key,
data_inicio date,
data_fim date,
valor_total numeric(9,3),
fk_propriedades int references propriedades (id_propriedade),
fk_hospedes int references hospedes (id_hospede)
);

