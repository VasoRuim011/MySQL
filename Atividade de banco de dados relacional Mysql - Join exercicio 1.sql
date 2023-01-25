CREATE DATABASE db_generation_game_online; 
USE db_generation_game_online;

CREATE TABLE tb_classe(
id BIGINT auto_increment,
tipo VARCHAR(255),
nivel_forca VARCHAR(255),
    arma VARCHAR(255),
    poder_especial VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE tb_personagem(
id BIGINT auto_increment,
nome VARCHAR(255),
vida INT,
defesa INT,
ataque INT,
    classe_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

INSERT INTO tb_classe( tipo, nivel_forca, arma, poder_especial)
VALUES ("Gerente", 1000, "RH", "JUSTA CAUSA");

INSERT INTO tb_classe( tipo, nivel_forca, arma, poder_especial)
VALUES ( "Vendedor", 1500, "Vendas", "LABIA");

INSERT INTO tb_classe( tipo, nivel_forca, arma, poder_especial)
VALUES ( "Team Leader", 3500, "Vendas", "CONVINCENTE");

INSERT INTO tb_classe( tipo, nivel_forca, arma, poder_especial)
VALUES ( "Copeira", 1700, "Copa", "MEGA_PALADAR");

INSERT INTO tb_classe( tipo, nivel_forca, arma, poder_especial)
VALUES ("Serviços Gerais", 1400, "Limpesa", "FURACÃO_2000");

SELECT * FROM tb_classe;

INSERT INTO tb_personagem(nome,vida,defesa,ataque,classe_id)
VALUES("Rick",1400 ,2000, 9000, 1);

INSERT INTO tb_personagem(nome,vida,defesa,ataque,classe_id)
VALUES("Moana",1000 , 1200 , 3000 , 5);

INSERT INTO tb_personagem(nome,vida,defesa,ataque,classe_id)
VALUES("Carol", 5000 , 1700 , 7500, 5);

INSERT INTO tb_personagem(nome,vida,defesa,ataque, classe_id)
VALUES("Jessica", 500 ,6000 ,7000 , 3);

INSERT INTO tb_personagem(nome,vida,defesa,ataque, classe_id)
VALUES("Carl", 2000, 800, 700 , 3);

INSERT INTO tb_personagem(nome,vida,defesa,ataque, classe_id)
VALUES("Merlyn", 2500, 6000, 88000 , 1);


SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem 
WHERE ataque > 2000;

SELECT * FROM tb_personagem 
WHERE defesa >= 1000 AND defesa <=2000;

SELECT * FROM tb_personagem 
WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem 
WHERE nome LIKE "%c%";

SELECT * FROM tb_personagem 
INNER JOIN tb_classe
ON tb_classe.id = tb_personagem.id
WHERE tipo LIKE "%Team Leader%";




