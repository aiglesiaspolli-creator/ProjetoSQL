# 🦷 Sistema de Gestão Odontológica - Banco de Dados (FEI)
> Sistema de Gestão para Franquia de Clínicas Odontológicas com Modelagem Conceitual, Lógica e Scripts SQL (DDL, DML e DQL)

Este repositório contém o projeto prático de **Banco de Dados** desenvolvido para a Centro Universitário FEI. O projeto consiste no mapeamento, modelagem e implementação SQL de um banco de dados relacional para o gerenciamento completo de uma franquia de clínicas odontológicas, centralizando o controle de unidades, pacientes, dentistas, recepcionistas, consultas, tratamentos, equipamentos e pagamentos.

---

## 📌 Escopo do Projeto

- **Problema de Negócio:** Substituição de controles manuais e planilhas por um sistema centralizado capaz de gerenciar unidades da franquia, histórico de atendimentos, agendamentos, tratamentos e fluxo financeiro.
- **Modelagem de Dados:**
  - **Modelo Conceitual (DER):** Diagrama Entidade-Relacionamento mapeando as regras de negócio, especializações (supertypes/subtypes) e cardinalidades.
  - **Modelo Lógico:** Esquema relacional estruturado com chaves primárias (PK), chaves estrangeiras (FK) e tabelas associativas para relacionamentos $N:M$.
- **Implementação SQL:**
  - `ddl.sql`: Criação das tabelas, definição de restrições de integridade (*Constraints*) e relacionamentos.
  - `dml.sql`: Inserção de dados para povoamento e testes do sistema.
  - `dql.sql`: Consultas com `JOIN`s, agrupamentos e filtros para geração de relatórios de gestão.

---

## 🛠️ Entidades e Estrutura Relacional

- **Clinica:** Unidades da franquia.
- **Funcionario:** Supertipo representando os colaboradores da clínica.
  - **Dentista / Recepcionista:** Subtipos herdeiros com atributos específicos (ex: CRO, Especialidade, Turno).
- **Paciente:** Clientes atendidos pela clínica, com histórico de consultas e vínculo com convênios.
- **Consulta:** Registro de atendimentos por data, hora, sala, paciente, dentista e recepcionista responsável.
- **Tratamento:** Procedimentos realizados nas consultas.
- **Equipamento:** Instrumentos e insumos utilizados nos tratamentos.
- **Pagamento:** Lançamentos financeiros gerados pelas consultas (suporte a parcelamento).
- **Convenio:** Planos de saúde odontológicos dos pacientes.
- **Fornecedor:** Fornecedores dos equipamentos da clínica.

---

## 📂 Estrutura do Repositório

```text
├── ddl.sql                   # Data Definition Language (CREATE TABLE, ALTER, DROP)
├── dml.sql                   # Data Manipulation Language (INSERT, UPDATE, DELETE)
├── dql.sql                   # Data Query Language (SELECT, JOINs, relatórios)
├── Trabalho Banco de Dados.pdf # Documentação completa, DER e Diagrama Lógico
└── README.md                 # Documentação do repositório
