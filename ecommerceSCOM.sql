CREATE DATABASE ecommerce_Scom; 
USE ecommerce_Scom; 

CREATE TABLE produtos(
id int primary key auto_increment, 
nome varchar (100) not null ,
preco decimal (10,2) not null , 
estoque int not null 
);
CREATE TABLE  usuarios(
id int primary key auto_increment,
nome varchar(100) not null , 
email varchar (100) unique not null
);

CREATE TABLE carrinho_itens(
id int primary key auto_increment, 
usuario_id int, 
produto_id int , 
quantidade int , 
foreign key (usuario_id) references usuarios (id), 
foreign key (produto_id) references produtos (id)
);

CREATE TABLE enderecos (
id int primary key auto_increment, 
usuario_id int , 
nome_destinatario varchar(100),
cep varchar(9),
logradouro varchar(255),
foreign key (usuario_id) references usuarios (id)
);

CREATE TABLE cupons (
id int primary key auto_increment, 
codigo varchar(50) unique not null, 
desconto_percentual int, 
validade date , 
status ENUM ('ativo', 'expirado') default 'ativo'
);
-- - - - # inserindo dados  --------------------
INSERT INTO produtos (nome, preco, estoque) VALUES 
('Camiseta preta G', 49.50, 50),
('Tênis Corrida', 199.90, 10) , 
('Meia Esportiva', 9.90 ,2);
INSERT INTO usuarios (nome, email) VALUES 
('José Pereira', 'jose_pereira@com'),
('Márcia Soares', 'marcia_01@com'), 
(' Cláudio Lorenzo Matias', 'lorenzoclaudio@gmail');
INSERT INTO carrinho_itens (usuario_id, produto_id,quantidade) VALUES 
(1,2,1), 
(1,3,1);
INSERT INTO enderecos (usuario_id, nome_destinatario, cep, logradouro) VALUES 
(1,'josé','50010-100','rua jose almirante do rego'),
(2,'Márcia','52300-500', 'Avenida X'),
(3,'Claúdio', '50000-200','Travessa Pirangi');
INSERT INTO cupons (codigo, desconto_percentual, validade, status) VALUES 
('CUPOM_FALSO_2026', 10,'2023-01-01','expirado');




