Rails.application.routes.draw do
  
  resources :releases do
    match '/scrape', to: 'releases#scrape', via: :post, on: :collection
  end

  resources :volumes
  resources :mangas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "mangas#index"
end
