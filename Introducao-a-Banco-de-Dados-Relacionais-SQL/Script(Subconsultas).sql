SELECT * FROM viagens.destinos
WHERE id NOT IN (SELECT id_destino FROM viagens.reservas);

SELECT * FROM viagens.usuarios
WHERE id NOT IN (SELECT id_usuario FROM viagens.reservas);

SELECT nome, (SELECT COUNT(*) FROM viagens.reservas WHERE id_usuario = usuarios.id)
AS total_reservas FROM viagens.usuarios;