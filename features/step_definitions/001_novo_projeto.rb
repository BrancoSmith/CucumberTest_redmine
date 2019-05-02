Quando("eu vou para a pagina de {string}, em seguida em {string}, eu clico em novo projeto") do|aba, page_projeto|
    @estrutura_navegar = Estrutura_navegar.new
    @estrutura_navegar_projeto = Estrutura_navegar_projeto.new
    @estrutura_novo_projeto = Estrutura_novo_projeto.new
    
    @informacoes_novo_projeto = []

    @estrutura_navegar.navegar_menu aba
    @estrutura_navegar.navegar_page_administracao page_projeto
    @estrutura_navegar_projeto.botao_novo_projeto


  end
  
  Quando("e insiro as informacoes do meu novo projeto, o {string}, {string}, {string}") do |nome, descricao, identificador|
    @informacoes_novo_projeto[0] = nome
    @informacoes_novo_projeto[1] = descricao
    @informacoes_novo_projeto[2] = identificador

    @estrutura_novo_projeto.preencher_novo_projeto @informacoes_novo_projeto
    sleep(2)
  end
  
  Entao("o sistema me retorna a mensagem {string}") do |mensagem|
    @msg = mensagem
    expect(page).to have_content @msg    
  end