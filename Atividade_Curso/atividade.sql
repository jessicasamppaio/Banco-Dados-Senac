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
    
    




-- 1. Atualizar o nome de um cliente:


-- 2. Deletar um produto:


-- 3. Alterar a categoria de um produto:


-- 4. Inserir um novo cliente:


-- 5. Inserir um novo pedido:


-- 6. Atualizar o preço de um produto:


############## DQL - Sem Joins
-- 1. Selecione todos os registros da tabela Produto:

SELECT * FROM Produto

-- 2. Selecione apenas o nome e o preço dos produtos da tabela Produto:


-- 3. Selecione os produtos da tabela Produto ordenados por preço, do mais barato para o mais caro:


-- 4. Selecione os produtos da tabela Produto ordenados por preço, do mais caro para o mais barato:

-- 5. Selecione os nomes distintos das categorias da tabela Categoria:


-- 6. Selecione os produtos da tabela Produto cujo preço esteja entre $10 e $50:


-- 7. Selecione os produtos da tabela Produto, mostrando o nome como "Nome do Produto" e o preço como "Preço Unitário":


-- 8. Selecione os produtos da tabela Produto, adicionando uma coluna calculada "Preço Total" multiplicando a quantidade pelo preço:


-- 9. Selecione os produtos da tabela Produto, mostrando apenas os 10 primeiros registros:

-- 10. Selecione os produtos da tabela Produto, pulando os primeiros 5 registros e mostrando os 10 seguintes:


############# DQL - Joins
-- 1. Selecione o nome do produto e sua categoria:


-- 2. Selecione o nome do cliente e o nome do produto que ele comprou:


-- 3. Selecione todos os produtos, mesmo aqueles que não têm uma categoria associada:


-- 4. Selecione todos os clientes, mesmo aqueles que não fizeram nenhum pedido:


-- 5. Selecione todas as categorias, mesmo aquelas que não têm produtos associados:


-- 6. Selecione todos os produtos, mesmo aqueles que não foram pedidos:



############### DQL com joins e demais filtros
-- 1. Selecione o nome da categoria e o número de produtos nessa categoria, apenas para categorias com mais de 5 produtos:


-- 2. Selecione o nome do cliente e o total de pedidos feitos por cada cliente:


-- 3. Selecione o nome do produto, o nome da categoria e a quantidade total de vendas para cada produto:


-- 4. Selecione o nome da categoria, o número total de produtos nessa categoria e o número de pedidos para cada categoria:


-- 5. Selecione o nome do cliente, o número total de pedidos feitos por esse cliente e a média de produtos por pedido, apenas para clientes que tenham feito mais de 3 pedidos:


##### Crie uma View qualquer para qualquer um dos joins desenvolvidos

##### Crie uma transaction que cadastra um cliente e faça uma venda
-- Início da transação

-- Inserir um novo cliente


-- Inserir um novo pedido para o cliente


-- Inserir itens no pedido


-- Commit da transação (confirmação das alterações)