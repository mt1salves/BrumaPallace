SELECT
	Marca.nome_fantasia AS 'Marca',
    Marca.cnpj,
    Produto.nome AS 'Produto'
FROM Marca
INNER JOIN Produto
ON Produto.Marca_idMarca = Marca.idMarca;

SELECT
	Produto.nome AS 'Produtos Consumidos',
    Produto.codigo,
    Produto.descricao,
    Reserva.codigo AS 'Reserva'
FROM Produto
INNER JOIN Produtos_Consumidos
ON Produto.idProduto = Produtos_Consumidos.Produto_idProduto
INNER JOIN Reserva
ON Reserva.idReserva = Produtos_Consumidos.Reserva_idReserva;

SELECT
	Cliente.nome AS 'Cliente',
    Cliente.sobrenome,
    Cliente.cpf,
    Cliente.rg,
    Cliente.telefone_principal,
    Quarto.numero AS 'Quarto',
    Quarto.andar,
    Quarto.descricao,
    Quarto.preco_padrao
FROM Cliente
INNER JOIN Reserva
ON Cliente.idCliente = Reserva.Cliente_idCliente
INNER JOIN Quarto
ON Quarto.idQuarto = Reserva.Quarto_idQuarto;

SELECT
	Servico.nome AS 'Serviços Consumidos',
    Servico.descricao,
    Servico.codigo,
	Reserva.codigo AS 'Quarto reservado'
FROM Servico
INNER JOIN Servicos_Consumidos
ON Servico.idServico = Servicos_Consumidos.Servico_idServico
INNER JOIN Reserva
ON Reserva.idReserva = Servicos_Consumidos.Reserva_idReserva;