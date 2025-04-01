CREATE TABLE Professor (
    id_professor SERIAL PRIMARY KEY,
    nome_completo VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE Turma (
    id_turma SERIAL PRIMARY KEY,
    nome_turma VARCHAR(50) NOT NULL,
    id_professor INT REFERENCES Professor(id_professor) ON DELETE SET NULL,
    horario VARCHAR(100)
);

CREATE TABLE Aluno (
    id_aluno SERIAL PRIMARY KEY,
    nome_completo VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    id_turma INT REFERENCES Turma(id_turma) ON DELETE SET NULL,
    nome_responsavel VARCHAR(255),
    telefone_responsavel VARCHAR(20),
    email_responsavel VARCHAR(100),
    informacoes_adicionais TEXT
);
