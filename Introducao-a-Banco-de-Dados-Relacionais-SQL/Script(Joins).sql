SELECT * FROM viagens.usuarios us
INNER JOIN viagens.reservas rs ON us.id = rs.id_usuario
INNER JOIN destinos ds ON rs.id_destino = ds.id;

SELECT * FROM viagens.usuarios us
LEFT JOIN viagens.reservas rs ON us.id = rs.id_usuario;

SELECT * FROM viagens.reservas rs
RIGHT JOIN viagens.usuarios us ON us.id = rs.id_usuario;

SELECT * FROM viagens.reservas rs
RIGHT JOIN viagens.destinos ds
ON rs.id_destino = ds.id;