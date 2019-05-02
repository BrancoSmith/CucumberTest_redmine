class Estrutura_novo_usuario < SitePrism::Page
    
    
    # Nome: Marco Aurélio Silva Ramos
    # E-mail: aureliomarcoramos@gmail.com
   
    def initialize
   
   #itens de campo idioma
    @idioma_portugues_select = '#user_language > option:nth-child(36)'
    @idioma_italian_select = '#user_language > option:nth-child(26)'
    @idioma_english_select = '#user_language > option:nth-child(16)'
    @idioma_japanese_select = '#user_language > option:nth-child(27)'

    #botao criarn novo usuario
    @botao_criar = 'Criar'
   
   
    end


    #preencher formulario
    element :input_usuario, '#user_login'
    element :input_nome, '#user_firstname'
    element :input_sobrenome, '#user_lastname'
    element :input_email, '#user_mail'
    element :input_senha, '#user_password'
    element :input_confirmar_senha, '#user_password_confirmation'



    def preencher_formulario_novo_usuario(parametro)
        input_usuario.set parametro[0]
        input_nome.set parametro[1]
        input_sobrenome.set parametro[2]
        input_email.set parametro[3]
        idioma parametro[4]
        input_senha.set parametro[5]
        input_confirmar_senha.set parametro[6]
        botao_criar_usuario
    end


    #preencher tipo de Os
    def idioma(argumento)
        if argumento == "portugues"
            find(@idioma_portugues_select).select_option
        elsif argumento == "italiano"
            find(@idioma_italian_select).select_option
        elsif argumento == "japones"
            find(@idioma_japanese_select).select_option
        elsif argumento == "ingles"
            find(@idioma_english_select).select_option
        end
    end


    def botao_criar_usuario
        click_button(@botao_criar)
    end

end