 #language: pt

    # Nome: Marco Aurélio Silva Ramos
    # E-mail: aureliomarcoramos@gmail.com


Funcionalidade: Novo Projeto 
SENDO o administrador
EU QUERO eu quero cadastrar um novo projeto
PARA para poder inserir as informacoes dele no sistema

Contexto: Novo Projeto
Dado que estou na pagina principal e logo no sistema dando meu usuario "admin" e minha senha 12345678

@novo_projeto
Esquema do Cenario: Novo projeto
Quando eu vou para a pagina de "Administração", em seguida em "projetos", eu clico em novo projeto
E e insiro as informacoes do meu novo projeto, o <nome>, <descricao>, <identificador>
Entao o sistema me retorna a mensagem <mensagem>

Exemplos:
|nome|descricao|identificador|mensagem|
|""|"Entenda seu público: o primeiro passo para decidir os caminhos da sua descrição"|"o projeto do seculo"|"Nome não pode ficar vazio"|
|"projeto 02"|"Entenda seu público: o primeiro passo para decidir os caminhos da sua descrição"|""|"Identificador não pode ficar vazio"|
|"projeto 245"|"Entenda seu público: o primeiro passo para decidir os caminhos da sua descrição"|"projeto-245"|"Criado com sucesso."|