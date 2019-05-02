# language: pt

    # Nome: Marco Aurélio Silva Ramos
    # E-mail: aureliomarcoramos@gmail.com


Funcionalidade: novo usuario
SENDO o administrador
EU QUERO eu quero cadastrar um novo usuario
PARA para poder inserir as informacoes dele no sistema

Contexto: novo usuario
Dado que estou na pagina principal e logo no sistema dando meu usuario "admin" e minha senha 12345678

@novo_usuario
Esquema do Cenario: novo usuario
Quando eu entro na aba "Administração", eu vou para a tela de "usuarios", entro na tela de novo usuario
E insiro as informacoes do usuario, usuario <usuario>, nome <nome>, sobrenome <sobrenome>, email <email>,
E idioma <idioma>, senha <senha>, confirmar senha <confirmar_senha>
Entao o sistema me retona a mensagem <mensagem>

Exemplos:
|usuario|nome|sobrenome|email|idioma|senha|confirmar_senha|mensagem|
|""|""|""|""|""|""|""|"E-mail não pode ficar vazio"|
|""|"marcelo"|"braga"|"marcelobraga@mda.com"|"portugues"|"12345678"|"2345678"|"Usuário não pode ficar vazio"|
|"marcelo.braga"|""|"braga"|"marcelobraga@mda.com"|"portugues"|"12345678"|"12345678"|"Nome não pode ficar vazio"|
|"marcelo.braga"|"marcelo"|""|"marcelobraga@mda.com"|"portugues"|"12345678"|"12345678"|"Sobrenome não pode ficar vazio"|
|"marcelo.braga"|"marcelo"|"braga"|""|"portugues"|"12345678"|"12345678"|"E-mail não pode ficar vazio"|
|"marcelo.braga"|"marcelo"|"braga"|"marcelobraga@mda.com"|"portugues"|""|"12345678"|"Senha é muito curto"|
|"marcelo.braga"|"marcelo"|"braga"|"marcelobraga@mda.com"|"portugues"|"12345678"|""|"Senha não está de acordo com a confirmação"|
|"marcelo.braga"|"marcelo"|"braga"|"marcelobraga@mda.com"|"portugues"|"12345678"|"12345984984"|"Senha não está de acordo com a confirmação"|
|"marcelo.braga"|"marcelo"|"braga"|"marcelobraga@mda.com"|"portugues"|"12345678"|"12345678"|"Usuário marcelo.braga criado."|
|"marcelo.braga"|"marcelo"|"braga"|"marcelobraga@mda.com"|"portugues"|"12345678"|"12345678"|"E-mail não está disponível"|

