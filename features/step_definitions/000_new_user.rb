Dado("que estou na pagina principal e logo no sistema dando meu usuario {string} e minha senha {int}") do |usuario, senha|
    visit '/'

    #instanciando objetos
    @login = Estrutura_login.new
    @navegar = Estrutura_navegar.new
    @novo_usuario = Estrutura_novo_usuario.new

    #arrys de informacoes
    @informacoes_novo_usuario = []
    @informacoes_login = []

    #efetuando login
    @informacoes_login[0] = usuario
    @informacoes_login[1] = senha
    @login.preencher_login @informacoes_login
  end
  
  Quando("eu entro na aba {string}, eu vou para a tela de {string}, entro na tela de novo usuario") do |aba, page_usuario|                                 
        #Entrando na page de novo usuario
        @navegar.navegar_menu aba
        @navegar.navegar_page_administracao page_usuario
        @navegar.botao_novo_usuario
                                                                
  end                                                                                                                                                    
                                                                                                                                                         
  Quando("insiro as informacoes do usuario, usuario {string}, nome {string}, sobrenome {string}, email {string},") do |usuario, nome, sobrenome, email|
    @informacoes_novo_usuario[0] = usuario
    @informacoes_novo_usuario[1] = nome
    @informacoes_novo_usuario[2] = sobrenome
    @informacoes_novo_usuario[3] = email
                                                                             
  end                                                                                                                                                    
                                                                                                                                                         
  Quando("idioma {string}, senha {string}, confirmar senha {string}") do |idioma, senha, confirmar_senha|    
    @informacoes_novo_usuario[4] = idioma
    @informacoes_novo_usuario[5] = senha
    @informacoes_novo_usuario[6] = confirmar_senha
    @novo_usuario.preencher_formulario_novo_usuario @informacoes_novo_usuario
    sleep(2)                              
                                                                             
  end                                                                                                                                                    
                                                                                                                                                         
  Entao("o sistema me retona a mensagem {string}") do |mensagem|
    @msg = mensagem
    expect(page).to have_content @msg                                                                                                                                                                                 
                                                                             
  end                                                                                                                                                                                                 