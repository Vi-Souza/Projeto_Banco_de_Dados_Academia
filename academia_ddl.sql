-- Schema
CREATE SCHEMA IF NOT EXISTS academia;

-- Unidades
CREATE TABLE academia.unidades (
    id_unid SERIAL PRIMARY KEY,
    nome_unid VARCHAR(100) NOT NULL,
    email_unid VARCHAR(100) UNIQUE NOT NULL,
    telefone_unid VARCHAR(20) NOT NULL,
    status_unid VARCHAR(20) NOT NULL,
    rua_unid VARCHAR(100) NOT NULL,
    num_unid VARCHAR(10) NOT NULL,
    bairro_unid VARCHAR(50) NOT NULL,
    cidade_unid VARCHAR(50) NOT NULL,
    estado_unid CHAR(2) NOT NULL,
    cep_unid VARCHAR(10) NOT NULL
);

-- Planos
CREATE TABLE academia.planos (
    id_plano SERIAL PRIMARY KEY,
    nome_plano VARCHAR(100) NOT NULL,
    preco_plan NUMERIC(10,2) NOT NULL,
    duracao_plan INT NOT NULL,
    tipo_plan VARCHAR(20) NOT NULL
);

-- Alunos
CREATE TABLE academia.alunos (
    id_aluno SERIAL PRIMARY KEY,
    nome_aluno VARCHAR(100) NOT NULL,
    email_aluno VARCHAR(100) UNIQUE NOT NULL,
    telefone_aluno VARCHAR(20),
    status_aluno VARCHAR(20) NOT NULL,
    rua_aluno VARCHAR(100) NOT NULL,
    num_casa_aluno VARCHAR(10) NOT NULL,
    bairro_aluno VARCHAR(50) NOT NULL,
    cidade_aluno VARCHAR(50) NOT NULL,
    estado_aluno CHAR(2) NOT NULL,
    cep_aluno VARCHAR(10) NOT NULL,
    data_cadastro_aluno DATE NOT NULL,
    id_plano INT
);

-- Departamentos
CREATE TABLE academia.departamentos (
    id_dep SERIAL PRIMARY KEY,
    nome_dep VARCHAR(100) NOT NULL
);

-- Funcionarios
CREATE TABLE academia.funcionarios (
    id_func SERIAL PRIMARY KEY,
    cpf_func VARCHAR(14) UNIQUE NOT NULL,
    email_func VARCHAR(100) UNIQUE NOT NULL,
    telefone_func VARCHAR(20),
    nome_func VARCHAR(100) NOT NULL,
    data_adm_func DATE NOT NULL,
    salario_func NUMERIC(10,2) NOT NULL,
    horario_func VARCHAR(30) NOT NULL,
    rua_func VARCHAR(100) NOT NULL,
    num_casa_func VARCHAR(10) NOT NULL,
    bairro_func VARCHAR(50) NOT NULL,
    cidade_func VARCHAR(50) NOT NULL,
    estado_func CHAR(2) NOT NULL,
    cep_func VARCHAR(10) NOT NULL,
    id_unid INT,
    id_dep INT
);

-- Equipamentos
CREATE TABLE academia.equipamentos (
    id_equipamento SERIAL PRIMARY KEY,
    nome_equipamento VARCHAR(100) NOT NULL,
    tipo_equipamento VARCHAR(50) NOT NULL,
    data_compra_equipa DATE NOT NULL,
    preco_equipamento NUMERIC(10,2) NOT NULL,
    id_unid INT
);

-- Associativas
CREATE TABLE academia.planos_alunos (
    id_aluno INT NOT NULL,
    id_plano INT NOT NULL,
    PRIMARY KEY (id_aluno, id_plano)
);

CREATE TABLE academia.alunos_funcionarios (
    id_func INT NOT NULL,
    id_aluno INT NOT NULL,
    PRIMARY KEY (id_func, id_aluno)
);

CREATE TABLE academia.alunos_unidades (
    id_unid INT NOT NULL,
    id_aluno INT NOT NULL,
    PRIMARY KEY (id_unid, id_aluno)
);

-- FKs
ALTER TABLE academia.alunos
    ADD CONSTRAINT fk_alunos_planos FOREIGN KEY (id_plano) REFERENCES academia.planos(id_plano);

ALTER TABLE academia.funcionarios
    ADD CONSTRAINT fk_funcionarios_unid FOREIGN KEY (id_unid) REFERENCES academia.unidades(id_unid),
    ADD CONSTRAINT fk_funcionarios_dep FOREIGN KEY (id_dep) REFERENCES academia.departamentos(id_dep);

ALTER TABLE academia.equipamentos
    ADD CONSTRAINT fk_equipamentos_unid FOREIGN KEY (id_unid) REFERENCES academia.unidades(id_unid);

ALTER TABLE academia.planos_alunos
    ADD CONSTRAINT fk_planos_alunos_aluno FOREIGN KEY (id_aluno) REFERENCES academia.alunos(id_aluno),
    ADD CONSTRAINT fk_planos_alunos_plano FOREIGN KEY (id_plano) REFERENCES academia.planos(id_plano);

ALTER TABLE academia.alunos_funcionarios
    ADD CONSTRAINT fk_alunos_funcionarios_func FOREIGN KEY (id_func) REFERENCES academia.funcionarios(id_func),
    ADD CONSTRAINT fk_alunos_funcionarios_aluno FOREIGN KEY (id_aluno) REFERENCES academia.alunos(id_aluno);

ALTER TABLE academia.alunos_unidades
    ADD CONSTRAINT fk_alunos_unidades_unid FOREIGN KEY (id_unid) REFERENCES academia.unidades(id_unid),
    ADD CONSTRAINT fk_alunos_unidades_aluno FOREIGN KEY (id_aluno) REFERENCES academia.alunos(id_aluno);
