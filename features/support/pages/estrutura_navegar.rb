class Estrutura_navegar < SitePrism::Page
    
    
    # Nome: Marco Aurélio Silva Ramos
    # E-mail: aureliomarcoramos@gmail.com
   
    def initialize
        #menu pagina princial
        @administracao = '#top-menu > ul > li:nth-child(4)'

        #link administracao
        @menu_administracao = 'Administração'
        @menu_minha_pagina = 'Minha página'
        @menu_projetos = 'Projetos'
        @menu_pagina_inicial = 'Página inicial'

        #menu pagina administracao
        @usuarios = 'Usuários'
        @grupos = 'Grupos'
        @papel = 'Papéis e permissões'
        @tarefas = 'Tipos de tarefas'

        #botao de novo usuario
        @novo_usuario = 'Novo usuário'

       end

       #menu pagina administracao
       #este link não esta junto com o outro grupo devido existir dois nomes projetos na pagina especifica
       element :projetos, '#admin-menu > ul > li:nth-child(1) > a'
        
      #selecionar aba no menu na pagina principal
      def navegar_menu(parametro)
          case parametro
          when 'Página inicial'
              find(@menu_pagina_inicial).click()
          when 'Minha página'
              click_link(@menu_minha_pagina)
          when 'Projetos'
              click_link(@menu_projetos)
          when 'Administração'
              click_link(@menu_administracao)
          end
        end
    
    #selecionando a aba do page de administracao
     def navegar_page_administracao(parametro)
        case parametro
        when  'projetos'
            projetos.click()
        when  'usuarios'
            click_link(@usuarios)
        when  'grupos'
            click_link(@grupos)
        when  'papel'
            click_link(@papel)
        when  'tarefas'
            click_link(@tarefas)
        end
     end


     #selecionando o botao de novo usuario
     def botao_novo_usuario
        click_link(@novo_usuario)
     end

end
