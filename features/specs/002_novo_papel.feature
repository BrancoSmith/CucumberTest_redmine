#language: pt

    # Nome: Marco Aurélio Silva Ramos
    # E-mail: aureliomarcoramos@gmail.com


Funcionalidade: 
SENDO o administrador
EU QUERO eu quero cadastrar um novo projeto
PARA para poder inserir as informacoes dele no sistema

Contexto: 
Dado que estou na pagina principal e logo no sistema dando meu usuario "admin" e minha senha 12345678

@novo_papel
Esquema do Cenario: Novo Papel
Quando eu vou para a pagina de "Administração", em seguida em "papel", eu clico em novo papel
E insiro o <nome_papel>, a <visibilidade_tarefas>, a <visibilidade_usuario>, e <seleciono_permissoes> e crio uma tarefa
Entao o sistema me retorna a <mensagem>

Exemplos:
|nome_papel|visibilidade_tarefas|visibilidade_usuario|seleciono_permissoes|mensagem|
|""|"Todas as tarefas"|"Todos usuários ativos"|"Marcar Todos"|"Nome não pode ficar vazio"|
|"papel 1"|"Todas as tarefas"|"Todos usuários ativos"|"Marcar Todos"|"Criado com sucesso."|
|"papel 1"|"Todas as tarefas"|"Todos usuários ativos"|"Desmarcar todos"|"Nome não está disponível"|
