module SiteHelper
    def msg_jumbotron
        case params[:action]
        when 'index'
            "Últimas Perguntas Cadastradas..."
        when 'questions'
            "Resultados da pesquisa pelo termo: #{params[:term]}"
        when 'subject'
            "Questões de Categoria: #{params[:subject]}"
        end
    end
end
