Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
    get 'search', to: 'search#questions'
  end
  namespace :users_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index' #Dashboard
    #cria rotas no padrão REST
    resources :admins #Administradores
    resources :subjects #Assuntos/Áreas
    resources :questions #Perguntas

  end
  devise_for :admins
  devise_for :users

  root to: 'site/welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
