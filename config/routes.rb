Rails.application.routes.draw do
  root "inicios#index"
  resources :productos
  resources :nosotros
  resources :negocios
  resources :inicios
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
