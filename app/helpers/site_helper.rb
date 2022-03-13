module SiteHelper
    def msg_jumbotron
        case params[:action]
        when 'index'
            "Últimas Perguntas Cadastradas..."
        when 'questions'
            "Resultados da pesquisa pelo termo: #{sanitize params[:term]}"
        when 'subject'
            "Questões de Categoria: #{sanitize params[:subject]}"
        end
    end
end
