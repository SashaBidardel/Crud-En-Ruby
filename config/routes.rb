Rails.application.routes.draw do
  # resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/products' ,to: 'products#index'
  get '/products/new' ,to: 'products#new'
  post'/products' ,to: 'products#create'
end
