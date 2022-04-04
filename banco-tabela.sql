CREATE DATABASE IF NOT EXISTS vendas_2020;
USE vendas_2020;

DROP TABLE IF EXISTS vendas_janeiro;
CREATE TABLE IF NOT EXISTS vendas_janeiro(
data_compra DATE,
id_pedido VARCHAR(7),
id_produto VARCHAR( 7), 
entrega_uf VARCHAR(2), 
receita_frete DECIMAL(11,8),
receita_produto DECIMAL(12,7), 
quantidade_produto SMALLINT, 
situacao VARCHAR(12),
tipo_venda VARCHAR(2),
canal VARCHAR(15), 
desconto_produto DECIMAL(11,8),
receita_total DECIMAL(12,7),
nome_produto VARCHAR(1000),
categoria VARCHAR(1000));

LOAD DATA LOCAL INFILE "C:/.../teste-tecnico-madeira/base_vendas_2020.csv" INTO TABLE vendas_2020.vendas_janeiro
CHARACTER SET latin1
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\r'
IGNORE 1 LINES

(@vdata_compra,
@vid_pedido,
@vid_produto, 
@ventrega_uf, 
@vreceita_frete,
@vreceita_produto, 
@vquantidade_produto, 
@vsituacao,
@vtipo_venda,
@vcanal, 
@vdesconto_produto,
@vreceita_total,
@vnome_produto,
@vcategoria)
SET
data_compra = NULLIF(@vdata_compra,''),
id_pedido = NULLIF(@vid_pedido,''),
id_produto = NULLIF(@vid_produto,''), 
entrega_uf = NULLIF(@ventrega_uf,''), 
receita_frete = NULLIF(@vreceita_frete,''),
receita_produto = NULLIF(@vreceita_produto,''), 
quantidade_produto = NULLIF(@vquantidade_produto,''), 
situacao = NULLIF(@vsituacao,''),
tipo_venda = NULLIF(@vtipo_venda,''),
canal = NULLIF(@vcanal,''), 
desconto_produto = NULLIF(@vdesconto_produto,''),
receita_total = NULLIF(@vreceita_total,''),
nome_produto = NULLIF(@vnome_produto,''),
categoria = NULLIF(@vcategoria,'');
