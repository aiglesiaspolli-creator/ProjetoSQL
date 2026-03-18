DDL (Linguagem de dedfinição de dados) = Cria, remove e atualiza tabelas
  Create table
Constraint forign key
DCL (Linguagem de controle de dados)= cria usuario
  create user
DML (Linguagem de Manipulação de dados)= 
  insert into values
  delete from where
  update set where
-----------------------------------------------------------
create table(
  ISBN integer primary key,
  Titulo varchar(255),
  Autor varchar(255),
  )
create table(
  Id Serial Primary key,
  Data_emprestimo date,
  Data_devolucao date,
  Isbn_livro
  Constraint fk_livro_emprestimo
  foreing key (Isbn_livro)
  references livro(isbn)
)
