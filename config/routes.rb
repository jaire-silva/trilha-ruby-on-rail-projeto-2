Rails.application.routes.draw do
  resources :logs, only: [:index]
  resources :comentarios
  resources :elencos
  resources :atores
  resources :filmes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "filmes#index"
end
