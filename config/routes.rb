Rails.application.routes.draw do
  
  resources :formulariotwos
  resources :asignacions

  resources :formularios do
    member do
      get 'informacion_especifica', to: 'formularios#informacion_especifica'
    end
  end
  resources :areas
  resources :departamentos
  resources :welcome, only: [:index]
  root 'welcome#index'


  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
 end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
