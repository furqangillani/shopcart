Rails.application.routes.draw do

  root "pages#index"

  devise_for :sellers
  devise_for :admins
  devise_for :users

  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
