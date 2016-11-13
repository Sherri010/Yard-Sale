Rails.application.routes.draw do
  devise_for :users
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to:"items#index"
   #root to: 'devise/registrations#new'

end