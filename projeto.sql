-- cria um  novo data base
CREATE DATABASE carros; 

-- coloca o data base em uso
USE carros;

-- cria tabela
CREATE TABLE marcas (
	id INT NOT NULL AUTO_INCREMENT,
    nome_marca VARCHAR(255) NOT NULL,
    origem VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE inventario (
	id INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(255) NOT NULL,
    transmissao VARCHAR(255) NOT NULL,
    motor VARCHAR(255) NOT NULL,
    combustivel VARCHAR(255) NOT NULL,
    marcas_id INT NOT NULL,
	PRIMARY KEY (id),
    FOREIGN KEY (marcas_id) REFERENCES marcas(id)
);

CREATE TABLE clientes (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
	PRIMARY KEY (id)
);

-- atualiza tabela
ALTER TABLE marcas ADD origem VARCHAR(255); 

-- inserir dados nas tabelas
INSERT INTO clientes (nome, sobrenome, endereco)
VALUES ('Andre', 'Iacono', 'Rua 1'),
	   ('Marcos', 'Souza', 'Rua 2'),
       ('Jefferson', 'Ribeiro', 'Rua 3'),
       ('Jaqueline', 'Nunes', 'Rua 4'),
       ('Livia', 'Maria', 'Rua 5');

SELECT * FROM clientes;

INSERT INTO marcas (nome_marca, origem)
VALUES ('BMW', 'Alemanha'),
	   ('Fiat', 'Italia'),
       ('Mercedes-Benz', 'Alemanha'),
       ('Renault', 'Franca'),
       ('Jaguar', 'Inglaterra');
       
SELECT * FROM marcas;

INSERT INTO inventario (modelo, transmissao, motor, combustivel, marcas_id)
VALUES ('BMW 218', 'Automatica', '2.0', 'Gasolina', 1),
	   ('XE 2.0D', 'Manual', '2.0', 'Diesel', 5);
       
SELECT * FROM inventario;
