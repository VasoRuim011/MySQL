CREATE DATABASE recursoshumanos; 
USE recursoshumanos;
CREATE TABLE tb_colaboradores(
id BIGINT auto_increment,
nome VARCHAR(255),
salario DECIMAL(8,2),
cargo VARCHAR(255),
    setor VARCHAR(255),
    tempo_empresa VARCHAR(255),
    PRIMARY KEY(id)
);
INSERT INTO tb_colaboradores( nome, salario, cargo, setor, tempo_empresa)
VALUES ("Majunara", 2500, "Gerente", "RH", "3 anos");

INSERT INTO tb_colaboradores( nome, salario, cargo, setor, tempo_empresa)
VALUES ("Norbeto", 1500, "Vendedor", "Vendas", "2 anos e 6 meses");

INSERT INTO tb_colaboradores( nome, salario, cargo, setor, tempo_empresa)
VALUES ("Clarisse", 3500, "Team Leader", "Vendas", "2 anos e 2 meses");

INSERT INTO tb_colaboradores( nome, salario, cargo, setor, tempo_empresa)
VALUES ("Marlete", 1700, "Copeira", "Copa", "1 ano e 3 meses");

INSERT INTO tb_colaboradores( nome, salario, cargo, setor, tempo_empresa)
VALUES ("Thomaz", 1400, "Serviços Gerais", "Limpesa", "3 anos");

SELECT * FROM tb_colaboradores; 

SELECT * FROM tb_colaboradores WHERE Salario > 2000;

SELECT * FROM tb_colaboradores WHERE Salario < 2000;

UPDATE tb_colaboradores
SET setor = 'Copa'
WHERE ID = 1;


