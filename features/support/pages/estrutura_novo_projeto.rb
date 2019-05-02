class Estrutura_novo_projeto < SitePrism::Page

      
    # Nome: Marco Aurélio Silva Ramos
    # E-mail: aureliomarcoramos@gmail.com
   
    #mapeando elementos
    def initialize
        @botao_criar_projeto = 'Criar'

    end

    #mapeando elementos do formulario
    element :nome_input, '#project_name'
    element :descricao_input, '#project_description'
    element :identificador_input, '#project_identifier'

    #preenchendo formulario do projeto
    def preencher_novo_projeto(parametro)
        nome_input.set parametro[0]
        descricao_input.set parametro[1]
        identificador_input.set parametro[2]

        botao_criar_projeto
    end

    #botao criar projeto
    def botao_criar_projeto
        click_button(@botao_criar_projeto)
    end


end