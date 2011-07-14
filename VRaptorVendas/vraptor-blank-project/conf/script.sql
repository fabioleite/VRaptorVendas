DROP TABLE IF EXISTS produtos;
CREATE TABLE  produtos (
  `id` int(11) auto_increment,
  `nome` varchar(30) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert into produtos (nome, descricao, preco) values ('Manga', 'Fruta ótima', 2.1);
insert into produtos (nome, descricao, preco) values ('Uva', 'Fruta excelente', 4.5);

select * from produtos