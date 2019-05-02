Quando("eu vou para a pagina de {string}, em seguida em {string}, eu clico em novo papel") do |aba, page_papel|
    @estrutura_navegar = Estrutura_navegar.new
    @estrutura_navegar_papel = Estrutura_navegar_papel.new
    @estrutura_novo_papel = Estrutura_papel.new

    @informacoes_novo_papael = []

    @estrutura_navegar.navegar_menu aba
    @estrutura_navegar.navegar_page_administracao page_papel
    @estrutura_navegar_papel.botao_novo_papel


  end
  
  Quando("insiro o {string}, a {string}, a {string}, e {string} e crio uma tarefa") do |nome_papel,visibilidade_tarefas, visibilidade_usuario, seleciono_permissoes|
    @informacoes_novo_papael[0] = nome_papel
    @informacoes_novo_papael[1] = visibilidade_tarefas
    @informacoes_novo_papael[2] = visibilidade_usuario
    @informacoes_novo_papael[3] = seleciono_permissoes

    @estrutura_novo_papel.preencher_novo_papel @informacoes_novo_papael
    sleep(2)
  end
  
  Entao("o sistema me retorna a {string}") do |mensagem|
    @msg = mensagem
    expect(page).to have_content @msg  
  end