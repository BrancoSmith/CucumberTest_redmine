class Estrutura_papel < SitePrism::Page

      
    # Nome: Marco Aurélio Silva Ramos
    # E-mail: aureliomarcoramos@gmail.com
   
    #mapeando elementos
    def initialize

        #drop list visibilidade tarefas
        @select_visibilidade_t_todas = '#role_issues_visibility'
        @select_visibilidade_t_nao_privadas = '#role_issues_visibility > option:nth-child(2)'
        @select_visibilidade_t_criadas_usuario = '#role_issues_visibility > option:nth-child(3)'

        #drop list visibilidade usuarios
        @select_visibilidade_u_todo = '#role_users_visibility > option:nth-child(1)'
        @select_visibilidade_u_ativos = '#role_users_visibility > option:nth-child(2)'


        @botao_marcar_todos = 'Marcar todos' 
        @botao_desmarcar_todos = 'Desmarcar todos'

        @botao_criar_papel = 'Criar'

    end

    #mapeando elementos do formulario
    element :nome_input, '#role_name'

    #preenchendo formulario do papel
    def preencher_novo_papel(parametro)
        nome_input.set parametro[0]
        visibilidade_tarefas parametro[1]
        visibilidade_usuario parametro[2]
        selecione_permissoes parametro[3]
        botao_criar_papel
    end


    #preencher visibilidade tarefas
    def visibilidade_tarefas(argumento)
        if argumento == "Todas as tarefas"
            find(@select_visibilidade_t_todas).select_option
        elsif argumento == "Todas as tarefas não privadas"
            find(@select_visibilidade_t_nao_privadas).select_option
        elsif argumento == "Tarefas criadas ou atribuídas ao usuário"
            find(@select_visibilidade_t_criadas_usuario).select_option
        end
    end


     #preencher visibilidade usuario
     def visibilidade_usuario(argumento)
        if argumento == "Todos usuários ativos"
            find(@select_visibilidade_u_ativos).select_option
        elsif argumento == "Membros de projetos visíveis"
            find(@select_visibilidade_u_todo).select_option
        end
    end 


    #botao criar projeto
    def botao_criar_papel
        click_button(@botao_criar_papel)
    end

    def selecione_permissoes(argumento)
        if argumento == "Marcar Todos"
            click_link(@botao_marcar_todos)
        elsif argumento == "Desmarcar todos"
            click_link(@botao_desmarcar_todos)
        end
    end 
   


end