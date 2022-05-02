Rails.application.routes.draw do
  resources :raks
  devise_for :users
  get 'public/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "public#index"
end