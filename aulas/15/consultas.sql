-- SELECT TUDO NA TABELA x
SELECT * FROM PEDIDO;

-- SELECT COM CONTAGEM TOTAL DE REGISTROS
SELECT COUNT(*) AS Total_Pedidos
FROM pedido;

-- SELECT QUANTOS PEDIDOS CADA CLIENTE FEZ
SELECT DISTINCT ClienteID, COUNT(*)
FROM pedido
GROUP BY clienteId;

-- SELECIONAR O TOTAL DE ITENS POR PEDIDO
SELECT pedidoId, COUNT(*) AS ProdutosPorPedido
FROM itenspedidos
GROUP BY pedidoId;

-- SELECIONAR PRODUTOS MAIS VENDIDOS
SELECT produtoId, SUM(quantidade) AS MaisVendidos
FROM itenspedidos
GROUP BY produtoId
ORDER BY MaisVendidos DESC;

-- LITE OS CLIENTES INFORMANDO:
-- TOTAL GASTO, MEDIA DE PRODUTOS, DATA DO PRIMEIRO E ULTIMO PEDIDO

SELECT
	pedido.clienteId,
    COUNT(*) AS NumPedidos,
    SUM(produto.preco * itenspedidos.quantidade) AS TotalGasto,
    AVG(itenspedidos.quantidade) AS MediaProdutosPorPedido,
    MIN(pedido.dataPedido) AS PrimeiroPedido,
    MAX(pedido.dataPedido) AS UltimoPedido
    FROM pedido
    JOIN itenspedidos ON pedido.id = itenspedidos.pedidoId
	JOIN produto ON itenspedidos.produtoId = produto.id
    GROUP BY pedido.clienteId;
    
    SELECT * FROM PEDIDO
