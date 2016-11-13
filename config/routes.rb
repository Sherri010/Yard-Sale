Rails.application.routes.draw do
  devise_for :users
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to:"items#index"
  get "/mycart", to:"carts#index"

  post "/mycart/:id", to:"carts#create", as:"add_to_cart"
end
