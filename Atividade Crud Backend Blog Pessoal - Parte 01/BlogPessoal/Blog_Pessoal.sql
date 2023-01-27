USE db_blogpessoal;


INSERT INTO tb_postagens (date, texto, titulo) 
VALUES (current_timestamp(), 'Blog Pessoal', 'Primeiro Teste');

INSERT INTO tb_postagens (date, texto, titulo) 
VALUES (current_timestamp(), 'Estou aprendendo', 'Iniciante em banco de dados');

SELECT * FROM tb_postagens;