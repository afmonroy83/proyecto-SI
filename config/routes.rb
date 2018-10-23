Rails.application.routes.draw do
  resources :teachers
  resources :rooms
  resources :blocks
  resources :quarters
  resources :subjects
  resources :areas
  resources :students
  resources :programs
  resources :faculties
  devise_for :users
  get 'bienvenido/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'bienvenido#index', to: 'bienvenido#index', as: "home"
end
