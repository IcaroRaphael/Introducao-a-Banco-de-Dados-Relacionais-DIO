ALTER TABLE viagens.usuarios
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);

ALTER TABLE viagens.destinos 
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);

ALTER TABLE viagens.reservas
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);

ALTER TABLE viagens.reservas
ADD CONSTRAINT fk_reservas_usuarios
FOREIGN KEY(id_usuario) REFERENCES viagens.usuarios (id);

ALTER TABLE viagens.reservas
ADD CONSTRAINT fk_reservas_destinos
FOREIGN KEY(id_destino) REFERENCES viagens.destinos (id);
