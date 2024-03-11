-- Listar Usuários do Sistema
SELECT User, HOST from mysql.user;

-- Criação de um Usuário de Aplicação
CREATE USER 'aplicacao'@'localhost'
IDENTIFIED BY 'Aplicacao@123';

-- Crie um usuario "Administrador" com permissao de acesso
-- de qualquer lugar, com nossa senha padrao
CREATE USER 'Administrador'@'%'
IDENTIFIED BY 'Administrador@123';

-- Mudar senha de usuário
SET PASSWORD FOR 'aplicacao'@'localhost' = PASSWORD ('Aplicacao@321');

-- Mudar o host do usuario
RENAME USER 'aplicacao'@'localhost' TO 'aplicacao'@'%'

-- Remover um usuário
DROP USER 'aplicacao'@'%'