Rails.application.routes.draw do
  get 'searches/search'
  get 'searches/search_result'
  resources :posts
  root 'home#index'
  get 'sessions/new'
  post 'sessions/create'
  get 'sessions/delete'
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
