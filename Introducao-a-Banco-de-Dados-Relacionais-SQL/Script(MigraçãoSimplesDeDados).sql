DROP TABLE viagens.usuarios_nova;
CREATE TABLE viagens.usuarios_nova (
  id INT,
  nome VARCHAR(255) NOT NULL COMMENT 'Nome do usuário',
  email VARCHAR(255) NOT NULL UNIQUE COMMENT 'Endereço de e-mail do usuário',
  dataNascimento DATE NOT NULL COMMENT 'Data de nascimento do usuário',
  endereco VARCHAR(100) NOT NULL COMMENT 'Endereço do Cliente'
);

INSERT INTO viagens.usuarios_nova (id, nome, email, dataNascimento, endereco)
SELECT id, nome, email, dataNascimento, endereco
FROM viagens.usuarios;