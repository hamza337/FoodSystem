Rails.application.routes.draw do
  get 'restaurants/index'
  get 'customers/new'
  get 'customers/show'
  devise_for :customers
  resources :customers
  resources :restaurants
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "homes#index"
end
