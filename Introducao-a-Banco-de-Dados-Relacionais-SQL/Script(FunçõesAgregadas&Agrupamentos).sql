SELECT COUNT(*) as total_usuarios FROM viagens.usuarios;

SELECT COUNT(*) as total_usuarios FROM viagens.usuarios us
INNER JOIN reservas rs ON us.id = rs.id_usuario;

SELECT MAX(TIMESTAMPDIFF(YEAR, dataNascimento, CURRENT_DATE())) AS maior_idade
FROM viagens.usuarios;

SELECT COUNT(*), id FROM viagens.reservas
GROUP BY id_destino;

SELECT COUNT(*) AS qtd_reservas, id FROM viagens.reservas
GROUP BY id_destino
ORDER BY qtd_reservas;