CREATE INDEX idx_nome ON viagens.usuarios (nome);

EXPLAIN SELECT * FROM viagens.usuarios WHERE nome = "João Silva";