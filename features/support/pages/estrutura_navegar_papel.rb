class Estrutura_navegar_papel < SitePrism::Page
    
    
    # Nome: Marco Aurélio Silva Ramos
    # E-mail: aureliomarcoramos@gmail.com
   
    def initialize
        
        #botao de novo usuario
        @novo_papel = 'Novo papel'

       end
        
    
     #selecionando o botao de novo papel
     def botao_novo_papel
        click_link(@novo_papel)
     end

end