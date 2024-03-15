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

SELECT * FROM categoria

INSERT INTO Categoria(Id, Nome, Descricao, DataCriacao, DataAtualizacao, UsuarioAtualizacao, Ativo) VALUES
('1', 'Maria Julia', 'hdkfjh', '2024-02-12', '2024-02-12', '2024-02-12', 'sim'),
('2', 'João Luís', 'kdkfjh', '2024-023-20', '2024-023-20', '2024-023-20', 'sim'),
('3', 'Luís Marques', 'wdkfjh', '2024-05-25', '2024-05-25', '2024-05-25', 'não'),
('4', 'Camila Andrade', 'hdkfjh', '2024-08-10', '2024-08-10', '2024-08-10', 'não'),
('5', 'Lucas Camilo', 'kdkfjh', '2024-01-30', '2024-01-30', '2024-01-30', 'sim');


-- 1. Atualizar o nome de um cliente:


-- 2. Deletar um produto:


-- 3. Alterar a categoria de um produto:


-- 4. Inserir um novo cliente:


-- 5. Inserir um novo pedido:


-- 6. Atualizar o preço de um produto:


############## DQL - Sem Joins
-- 1. Selecione todos os registros da tabela Produto:


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