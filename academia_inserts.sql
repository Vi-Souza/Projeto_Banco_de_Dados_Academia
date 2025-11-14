-- Unidades
INSERT INTO academia.unidades (nome_unid, email_unid, telefone_unid, status_unid, rua_unid, num_unid, bairro_unid, cidade_unid, estado_unid, cep_unid) VALUES
('Unidade Centro', 'centro@academia.com', '1130001000', 'ativa', 'Rua Floriano Peixoto', '120', 'Centro', 'São Bernardo do Campo', 'SP', '09600-000'),
('Unidade Rudge Ramos', 'rudgeramos@academia.com', '1130002000', 'ativa', 'Av. Rudge Ramos', '450', 'Rudge Ramos', 'São Bernardo do Campo', 'SP', '09640-000'),
('Unidade Paulicéia', 'pauliceia@academia.com', '1130003000', 'ativa', 'Rua do Parque', '50', 'Paulicéia', 'São Bernardo do Campo', 'SP', '09680-000'),
('Unidade Demarchi', 'demarchi@academia.com', '1130004000', 'inativa', 'Av. Demarchi', '900', 'Demarchi', 'São Bernardo do Campo', 'SP', '09820-000'),
('Unidade Assunção', 'assuncao@academia.com', '1130005000', 'ativa', 'Rua João Pessoa', '210', 'Assunção', 'São Bernardo do Campo', 'SP', '09810-000');

-- Planos
INSERT INTO academia.planos (nome_plano, preco_plan, duracao_plan, tipo_plan) VALUES
('Mensal Básico', 129.90, 30, 'mensal'),
('Mensal Plus', 169.90, 30, 'mensal'),
('Trimestral Fit', 349.90, 90, 'trimestral'),
('Semestral Pro', 649.90, 180, 'semestral'),
('Anual Premium', 1199.90, 365, 'anual');

-- Alunos
INSERT INTO academia.alunos (nome_aluno, email_aluno, telefone_aluno, status_aluno, rua_aluno, num_casa_aluno, bairro_aluno, cidade_aluno, estado_aluno, cep_aluno, data_cadastro_aluno, id_plano) VALUES
('Vitor Santos', 'vitor@email.com', '11999990001', 'ativo', 'Rua F', '10', 'Centro', 'São Bernardo do Campo', 'SP', '09600-010', '2024-07-10', 1),
('Mariana Rocha', 'mariana@email.com', '11999990002', 'ativo', 'Rua G', '20', 'Rudge Ramos', 'São Bernardo do Campo', 'SP', '09640-020', '2024-08-01', 2),
('Pedro Nunes', 'pedro@email.com', '11999990003', 'inativo', 'Rua H', '30', 'Paulicéia', 'São Bernardo do Campo', 'SP', '09680-030', '2023-12-15', 3),
('Juliana Mota', 'juliana@email.com', '11999990004', 'ativo', 'Rua I', '40', 'Demarchi', 'São Bernardo do Campo', 'SP', '09820-040', '2024-05-05', 4),
('Rafael Lima', 'rafael@email.com', '11999990005', 'suspenso', 'Rua J', '50', 'Assunção', 'São Bernardo do Campo', 'SP', '09810-050', '2024-09-20', 5),
('Lucas Ferreira', 'lucas@email.com', '11988889999', 'ativo', 'Rua K', '60', 'Centro', 'São Bernardo do Campo', 'SP', '09600-060', '2024-11-14', 1),
('Amanda Costa', 'amanda@email.com', '11977778888', 'ativo', 'Rua L', '70', 'Rudge Ramos', 'São Bernardo do Campo', 'SP', '09640-070', '2024-11-14', 2),
('Felipe Andrade', 'felipe@email.com', '11966667777', 'ativo', 'Rua M', '80', 'Paulicéia', 'São Bernardo do Campo', 'SP', '09680-080', '2024-11-14', 3),
('Bruna Martins', 'bruna@email.com', '11955556666', 'ativo', 'Rua N', '90', 'Demarchi', 'São Bernardo do Campo', 'SP', '09820-090', '2024-11-14', 4),
('Thiago Oliveira', 'thiago@email.com', '11944445555', 'ativo', 'Rua O', '100', 'Assunção', 'São Bernardo do Campo', 'SP', '09810-100', '2024-11-14', 5);

-- Departamentos
INSERT INTO academia.departamentos (nome_dep) VALUES
('Musculação'), ('Cardio'), ('Recepção'), ('Nutrição'), ('Administração');

-- Funcionarios
INSERT INTO academia.funcionarios (cpf_func, email_func, telefone_func, nome_func, data_adm_func, salario_func, horario_func, rua_func, num_casa_func, bairro_func, cidade_func, estado_func, cep_func, id_unid, id_dep) VALUES
('123.456.789-00', 'ana.silva@academia.com', '11988881111', 'Ana Silva', '2022-03-10', 4200.00, '06:00-14:00', 'Rua A', '100', 'Centro', 'São Bernardo do Campo', 'SP', '09600-001', 1, 1),
('987.654.321-00', 'bruno.souza@academia.com', '11977772222', 'Bruno Souza', '2021-07-01', 5200.00, '14:00-22:00', 'Rua B', '200', 'Rudge Ramos', 'São Bernardo do Campo', 'SP', '09640-001', 2, 2),
('111.222.333-44', 'carla.mendes@academia.com', '11966663333', 'Carla Mendes', '2020-01-15', 4800.00, '08:00-16:00', 'Rua C', '300', 'Paulicéia', 'São Bernardo do Campo', 'SP', '09680-001', 3, 1),
('555.666.777-88', 'diego.almeida@academia.com', '11955554444', 'Diego Almeida', '2019-05-20', 6000.00, '09:00-18:00', 'Rua D', '400', 'Demarchi', 'São Bernardo do Campo', 'SP', '09820-001', 4, 3),
('999.000.111-22', 'elisa.lima@academia.com', '11944445555', 'Elisa Lima', '2023-02-01', 4500.00, '12:00-20:00', 'Rua E', '500', 'Assunção', 'São Bernardo do Campo', 'SP', '09810-001', 5, 5);

-- Equipamentos
INSERT INTO academia.equipamentos (nome_equipamento, tipo_equipamento, data_compra_equipa, preco_equipamento, id_unid) VALUES
('Esteira ProMax', 'cardio', '2023-05-10', 12000.00, 1),
('Bicicleta Spinning X', 'cardio', '2022-11-22', 8000.00, 2),
('Leg Press 45', 'musculacao', '2021-08-15', 15000.00, 3),
('Remo Indoor', 'cardio', '2020-02-01', 7000.00, 4),
('Crossover', 'musculacao', '2024-01-20', 18000.00, 5);

-- Associativas: Aluno–Unidade (garantir 2+ ativos na Unidade 1)
INSERT INTO academia.alunos_unidades (id_unid, id_aluno) VALUES
(1, 1), (1, 6), (1, 7), (1, 8),
(2, 2), (3, 3), (4, 4), (5, 5),
(2, 9), (3, 10);

-- Associativas: Aluno–Plano (histórico)
INSERT INTO academia.planos_alunos (id_aluno, id_plano) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 1), (7, 2), (8, 3), (9, 4), (10, 5);

-- Associativas: Aluno–Funcionário
INSERT INTO academia.alunos_funcionarios (id_func, id_aluno) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(1, 6), (2, 7), (3, 8), (4, 9), (5, 10);
