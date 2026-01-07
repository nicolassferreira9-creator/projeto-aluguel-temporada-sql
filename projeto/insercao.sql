insert into hospedes (nome,email,telefone)
values('Nicolas','niczito@gmail.com','7540192'),
('Vanessa','vanessinha@gmail.com','124859335'),
('Gilberto','gilberto@gmail.com','28393048');


insert into propriedades (id_propriedade,nome_imovel,capacidade_hospedes,endereco_propriedade,fk_endereco,preco_noite)
values('1','Casa de praia','150','Estrada Velha da Estrela',1,'450.00'),
('2','Hotel Fazenda','500','Estrada União Industria',2,'690.00'),
('3','Maldivas','800','Magé',3,'300.00');


insert into enderecos (rua,numero,bairro,cidade,estado)
values('Lopes Trovão','324','Meio da Serra','Petrópolis','RJ'),
('CPX DA PENHA','157','Favelinha','Magé','ES'),
('Rua do Alemão','213','Catatu','Piabetá','MG');

insert into reservas(data_inicio,data_fim,valor_total,fk_hospedes,fk_propriedades)
values('12-10-2025','18-10-2025',1200,1,2),
('05-01-2026','10-01-2026',3000,1,1),
('07-02-2026','10-02-2026',1000,3,3);
