Rails.application.routes.draw do
  get 'login', to: "access#new"
  post 'login',to: "access#create"
  delete 'logout', to: "access#destroy"
  get 'admin', to: "admin#index"
  resources :users
  resources :orders
  resources :lineitems
  resources :carts
  get 'shopper/index'
  root "shopper#index", as:'shopper' # root = get '/'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
