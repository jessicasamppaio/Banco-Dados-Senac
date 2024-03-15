USE sistema_vendas;

################## DDL
-- 1. Crie uma tabela chamada Fornecedor para armazenar informações sobre os fornecedores do sistema.
-- id, nome, endereço, telefone, email e uma observação (text)

CREATE TABLE IF NOT EXISTS Fornecedor (
Id INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(100) NOT NULL,
Endereço VARCHAR(100),
Telefone VARCHAR(20),
Email VARCHAR(50),
Observacao TEXT
);

SELECT * FROM Fornecedor;

-- 2. Adicione uma coluna chamada CNPJ à tabela Fornecedor para armazenar os números de CNPJ dos fornecedores.

ALTER TABLE Fornecedor
ADD CNPJ VARCHAR(14)

-- 3. Adicione uma chave estrangeira à tabela Fornecedor para relacioná-la à tabela Categoria, representando a categoria do fornecedor.

ALTER TABLE Fornecedor
ADD FOREIGN KEY (Id) REFERENCES categoria(Id);

-- 4. Modifique o tipo da coluna Telefone na tabela Fornecedor para armazenar números de telefone com no máximo 15 caracteres.

ALTER TABLE Fornecedor
MODIFY COLUMN Telefone VARCHAR(15);

-- 5. Remova a coluna Observacao da tabela Fornecedor, pois não é mais necessária.

ALTER TABLE Fornecedor
DROP COLUMN Observacao

-- 6. Remova a tabela Fornecedor do banco de dados, se existir.

DROP TABLE Fornecedor;

#################### DML
-- 0. Crie ao menos 5 registros para cada tabela, ignorando o gerneciamento de usuários. Um dos clientes deverá ter o seu nome

SELECT * FROM FormaPagamento

INSERT INTO Cliente (Nome, Email, Telefone, UsuarioAtualizacao) VALUES 
    ('Maria Silva', 'maria@email.com', '123456789', 1),
    ('João Santos', 'joao@email.com', '987654321', 2),
    ('Ana Souza', 'ana@email.com', '555555555', 1),
    ('Pedro Oliveira', 'pedro@email.com', '111111111', 2),
    ('Carla Ferreira', 'carla@email.com', '999999999', 1);

    INSERT INTO Produto (Nome, Descricao, Preco, CategoriaID, UsuarioAtualizacao) VALUES 
    ('Camiseta', 'Camiseta na cor azul', 19.99, 1, 1),
    ('Calça jeans', 'Calça na cor preta', 29.99, 2, 1),
    ('Fone de ouvido', 'Fone bluetooth', 39.99, 1, 2),
    ('Shampoo', 'Shampoo para todos os tipos de cabelo', 49.99, 2, 2),
    ('Arroz', '1kg de arroz', 09.99, 1, 3);


INSERT INTO FormaPagamento (Nome, Descricao, UsuarioAtualizacao) VALUES 
    ('Cartão', 'Pagamento feito através de cartão.', 1),
    ('Dinheiro', 'Pagamento realizado através de dinheiro.', 2);

INSERT INTO Pedido (ClienteID, DataPedido, FormaPagamentoId, Status, UsuarioAtualizacao) VALUES 
    (1, '2024-03-14 10:00:00', 1, 'Em processamento', 1),
    (2, '2024-03-14 11:30:00', 2, 'Aguardando pagamento', 2),
    (3, '2024-03-14 12:45:00', 1, 'Em processamento', 1),
    (4, '2024-03-14 13:20:00', 3, 'Concluído', 2),
    (5, '2024-03-14 14:10:00', 2, 'Em processamento', 1);
    
    INSERT INTO Categoria (Nome, Descricao, UsuarioAtualizacao) VALUES 
    ('Eletrônicos', 'Produtos eletrônicos e tecnológicos.', 1),
    ('Roupas', 'Moda feminina, masculina e infantil.', 2),
    ('Livros', 'Livros de diversos gêneros e autores.', 1),
    ('Alimentos', 'Produtos alimentícios diversos.', 2),
    ('Móveis', 'Móveis para casa e escritório.', 1);
    
    INSERT INTO GrupoUsuario (Nome, Descricao, UsuarioAtualizacao) VALUES 
    ('Administradores', 'Grupo de usuários com permissões administrativas.', 1),
    ('Usuários Padrão', 'Grupo de usuários com permissões padrão.', 2),
    ('Gerentes', 'Grupo de usuários com funções de gerenciamento.', 1),
    ('Suporte Técnico', 'Grupo de usuários responsáveis pelo suporte técnico.', 2),
    ('Vendedores', 'Grupo de usuários responsáveis pelas vendas.', 1);
    
    INSERT INTO ItemPedido (PedidoId, ProdutoId, Quantidade, UsuarioAtualizacao) VALUES 
    (1, 1, 2, 1),
    (1, 2, 1, 1),
    (2, 3, 3, 2),
    (3, 1, 2, 1),
    (4, 4, 1, 2);
    
    INSERT INTO Permissao (Nome, Descricao, UsuarioAtualizacao) VALUES 
    ('Leitura', 'Permissão para leitura de dados.', 1),
    ('Escrita', 'Permissão para escrever dados.', 2),
    ('Atualização', 'Permissão para atualizar dados.', 1),
    ('Exclusão', 'Permissão para excluir dados.', 2),
    ('Administração', 'Permissão para administrar o sistema.', 1);
    
    
   INSERT INTO Usuario (NomeUsuario, Senha, Email, GrupoUsuarioID, UsuarioAtualizacao) VALUES 
    ('usuario1', 'senha123', 'usuario1@email.com', 1, 1),
    ('usuario2', 'senha456', 'usuario2@email.com', 2, 1),
    ('usuario3', 'senha789', 'usuario3@email.com', 1, 2),
    ('usuario4', 'senhaabc', 'usuario4@email.com', 2, 2),
    ('usuario5', 'senhaxyz', 'usuario5@email.com', 1, 3);


   INSERT INTO PermissaoGrupo (PermissaoID, GrupoUsuarioID) VALUES 
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 2),
    (5, 3);


-- 1. Atualizar o nome de um cliente:

UPDATE Clientes SET Nome = 'Camila Duarte' WHERE ID = 5;

-- 2. Deletar um produto:

DELETE FROM Produto WHERE ID = 5;

-- 3. Alterar a categoria de um produto:

UPDATE Produto SET CategoriaID = 2 WHERE ID = 1;


-- 4. Inserir um novo cliente:

INSERT INTO Cliente (Nome, Email, Telefone, UsuarioAtualizacao) VALUES 
('Luciana Santos', 'lucianasantos@email.com', '123456789', 1);

-- 5. Inserir um novo pedido:

INSERT INTO Pedido (ClienteID, DataPedido, FormaPagamentoId, Status, UsuarioAtualizacao) VALUES 
(6, '2024-09-11 10:00:00', 1, 'Concluído', 1),

-- 6. Atualizar o preço de um produto:

UPDATE Produto SET Preco = 59.99 WHERE ID = 1;


############## DQL - Sem Joins
-- 1. Selecione todos os registros da tabela Produto:

SELECT * FROM Produto

-- 2. Selecione apenas o nome e o preço dos produtos da tabela Produto:

SELECT Nome, Preco
FROM Produto;

-- 3. Selecione os produtos da tabela Produto ordenados por preço, do mais barato para o mais caro:

-- nesse precisei pesquisar pois não sabia como ordenar do menor para o maior valor
SELECT *
FROM Produto
ORDER BY Preco ASC;

-- 4. Selecione os produtos da tabela Produto ordenados por preço, do mais caro para o mais barato:

-- mesmo caso do exercicio anterior
SELECT *
FROM Produto
ORDER BY Preco DESC;

-- 5. Selecione os nomes distintos das categorias da tabela Categoria:

SELECT DISTINCT Nome
FROM Categoria;

-- 6. Selecione os produtos da tabela Produto cujo preço esteja entre $10 e $50:

SELECT *
FROM Produto
WHERE Preco >= 10 AND Preco <= 50;

-- 7. Selecione os produtos da tabela Produto, mostrando o nome como "Nome do Produto" e o preço como "Preço Unitário":

SELECT Nome AS 'Nome do Produto', Preco AS 'Preço Unitário'
FROM Produto;

-- 8. Selecione os produtos da tabela Produto, adicionando uma coluna calculada "Preço Total" multiplicando a quantidade pelo preço:
 
SELECT *,
Quantidade * Preco AS 'Preço Total'
FROM Produto;

-- 9. Selecione os produtos da tabela Produto, mostrando apenas os 10 primeiros registros:

-- Esse eu tive duvida em como fazer e foi necessário pesquisar
SELECT *
FROM Produto
LIMIT 10;


-- 10. Selecione os produtos da tabela Produto, pulando os primeiros 5 registros e mostrando os 10 seguintes:

-- Nesse também tive duvida
SELECT *
FROM Produto
LIMIT 10 OFFSET 5;


############# DQL - Joins
-- 1. Selecione o nome do produto e sua categoria:
SELECT Produto.Nome, Categoria.Nome
FROM Produto
INNER JOIN Categoria ON Produto.CategoriaID = Categoria.Id;


-- 2. Selecione o nome do cliente e o nome do produto que ele comprou:

SELECT Cliente.Nome, Produto.Nome
FROM Cliente
INNER JOIN Pedido ON Cliente.Id = Pedido.ClienteID
INNER JOIN ItemPedido ON Pedido.Id = ItemPedido.PedidoId
INNER JOIN Produto ON ItemPedido.ProdutoId = Produto.Id;

-- 3. Selecione todos os produtos, mesmo aqueles que não têm uma categoria associada:
SELECT Produto.Nome, Categoria.Nome
FROM Produto
LEFT JOIN Categoria ON Produto.CategoriaID = Categoria.Id;


-- 4. Selecione todos os clientes, mesmo aqueles que não fizeram nenhum pedido:

SELECT Cliente.Nome, Pedido.Id 
FROM Cliente
LEFT JOIN Pedido ON Cliente.Id = Pedido.ClienteID;


-- 5. Selecione todas as categorias, mesmo aquelas que não têm produtos associados:

SELECT Categoria.Nome, Produto.Nome
FROM Categoria
LEFT JOIN Produto ON Categoria.Id = Produto.CategoriaID;


-- 6. Selecione todos os produtos, mesmo aqueles que não foram pedidos:

SELECT Produto.Nome, ItemPedido.Quantidade
FROM Produto
LEFT JOIN ItemPedido ON Produto.Id = ItemPedido.ProdutoId;



############### DQL com joins e demais filtros
-- 1. Selecione o nome da categoria e o número de produtos nessa categoria, apenas para categorias com mais de 5 produtos:

-- esse foi necessário pesquisar pois perdi algumas aulas e não tinha entendido bem como fazer
SELECT Categoria.Nome, COUNT(Produto.Id)
FROM Categoria
INNER JOIN Produto ON Categoria.Id = Produto.CategoriaID
GROUP BY Categoria.Id
HAVING COUNT(Produto.Id) > 5;


-- 2. Selecione o nome do cliente e o total de pedidos feitos por cada cliente:

SELECT Cliente.Nome, COUNT(Pedido.Id)
FROM Cliente
LEFT JOIN Pedido ON Cliente.Id = Pedido.ClienteID
GROUP BY Cliente.Id;


-- 3. Selecione o nome do produto, o nome da categoria e a quantidade total de vendas para cada produto:
SELECT Produto.Nome, Categoria.Nome, SUM(ItemPedido.Quantidade)
FROM Produto
INNER JOIN Categoria ON Produto.CategoriaID = Categoria.Id
LEFT JOIN ItemPedido ON Produto.Id = ItemPedido.ProdutoId
GROUP BY Produto.Id;


-- 4. Selecione o nome da categoria, o número total de produtos nessa categoria e o número de pedidos para cada categoria:

--tive dificuldade nesse
SELECT Categoria.Nome, COUNT(DISTINCT Produto.Id), COUNT(DISTINCT Pedido.Id)
FROM Categoria
LEFT JOIN Produto ON Categoria.Id = Produto.CategoriaID
LEFT JOIN ItemPedido ON Produto.Id = ItemPedido.ProdutoId
LEFT JOIN Pedido ON ItemPedido.PedidoId = Pedido.Id
GROUP BY Categoria.Id;


-- 5. Selecione o nome do cliente, o número total de pedidos feitos por esse cliente e a média de produtos por pedido, apenas para clientes que tenham feito mais de 3 pedidos:

-- Tive dificuldade nesse também
SELECT Cliente.Nome,
COUNT(DISTINCT Pedido.Id),
AVG(COUNT(DISTINCT ItemPedido.ProdutoId))
FROM Cliente
LEFT JOIN Pedido ON Cliente.Id = Pedido.ClienteID
LEFT JOIN ItemPedido ON Pedido.Id = ItemPedido.PedidoId
GROUP BY Cliente.Id
HAVING COUNT(DISTINCT Pedido.Id) > 3;


##### Crie uma View qualquer para qualquer um dos joins desenvolvidos

##### Crie uma transaction que cadastra um cliente e faça uma venda
-- Início da transação

-- Inserir um novo cliente


-- Inserir um novo pedido para o cliente


-- Inserir itens no pedido


-- Commit da transação (confirmação das alterações)