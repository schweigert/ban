SELECT nome, endereco FROM clientes c WHERE c."ID" IN (
	SELECT "cliente"
	FROM locacoes l 
	WHERE l."dataD" > l."dataPD" )