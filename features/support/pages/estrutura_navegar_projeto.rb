class Estrutura_navegar_projeto < SitePrism::Page
    
    
    # Nome: Marco Aurélio Silva Ramos
    # E-mail: aureliomarcoramos@gmail.com
   
    def initialize
        
        #botao de novo usuario
        @novo_projeto = 'Novo projeto'

       end
        
    
     #selecionando o botao de novo projeto
     def botao_novo_projeto
        click_link(@novo_projeto)
     end

end
