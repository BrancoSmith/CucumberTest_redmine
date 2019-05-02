class Estrutura_login < SitePrism::Page
    
    
    # Nome: Marco Aurélio Silva Ramos
    # E-mail: aureliomarcoramos@gmail.com

    
   def initialize
    @entrar_form_login = '#account > ul > li:nth-child(1) > a'
    @botao_entrar = '#login-submit'
   end

    #mapeamento de elementos
    element :usuario_input, '#username'
    element :senha_input, '#password'
    

 
    #preenchendo o formulario de login
     def preencher_login(parametro)
        entrar_form_login
        usuario_input.set parametro[0]
        senha_input.set parametro[1]
        botao_entrar
    end

    #clicando no botao entrar no formulario de login
    def entrar_form_login
        find(@entrar_form_login).click()
    end

    #botao logar
    def botao_entrar
        find(@botao_entrar).click()
    end


end