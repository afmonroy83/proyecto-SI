Rails.application.routes.draw do
  devise_for :users
  get 'bienvenido/index' , to: 'bienvenido#index', as: "home"
  get 'agregar/monitorias' , to: 'agregar#monitorias', as: "monitorias"
  get 'cursos/matricular', to: 'cursos#matricular', as: "cursos"
  resources :student

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'bienvenido#index'
end
