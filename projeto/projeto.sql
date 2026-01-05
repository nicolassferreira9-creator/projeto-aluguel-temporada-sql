create table hospedes(
id_hospede serial primary key,
nome varchar (70),
email varchar(70),
telefone numeric(9)
);

create table enderecos(
id_endereco serial primary key,
rua varchar(60),
numero numeric(5),
bairro varchar(30),
cidade varchar(30),
estado varchar (2)
);

create table propriedades(
id_propriedade serial primary key,
nome_imovel varchar(50),
capacidade_hospedes numeric(7,2),
endereco_propriedade varchar(50)
);