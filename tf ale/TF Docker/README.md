# ADSUniFAATProjeto

Este repositório contém a configuração de um banco de dados PostgreSQL usando Docker para um sistema de gerenciamento escolar.

# Estrutura do Banco de Dados

O banco de dados é chamado **Escola** e contém três tabelas principais:

1. Professor
   - id_professor (PK, INT, AutoIncremento)
   - nome_completo (VARCHAR(255))
   - email (VARCHAR(100))
   - telefone (VARCHAR(20))

2. Turma
   - id_turma (PK, INT, AutoIncremento)
   - nome_turma (VARCHAR(50))
   - id_professor (FK, INT)
   - horario (VARCHAR(100))

3. Aluno
   - id_aluno (PK, INT, AutoIncremento)
   - nome_completo (VARCHAR(255))
   - data_nascimento (DATE)
   - id_turma (FK, INT)
   - nome_responsavel (VARCHAR(255))
   - telefone_responsavel (VARCHAR(20))
   - email_responsavel (VARCHAR(100))
   - informacoes_adicionais (TEXT, Opcional)

# Relacionamentos

  *Aluno PERTENCE_A Turma**: Um aluno pertence a uma turma, e uma turma pode ter muitos alunos. Este relacionamento é implementado pela chave estrangeira `id_turma` em `Aluno`.
  *Turma TEM Professor**: Uma turma tem um professor responsável, e um professor pode ser responsável por várias turmas. Este relacionamento é implementado pela chave estrangeira `id_professor` em `Turma`.

# Como Rodar

1. Clone este repositório:

   git clone https://github.com/seu-usuario/ADSUniFAATProjeto.git
