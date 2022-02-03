Rails.application.routes.draw do
  resources :volumes
  resources :mangas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "mangas#index"
end
