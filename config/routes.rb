Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles
  # The above line will give all the resources same can be done by following line:
  # resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
end
