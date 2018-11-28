Rails.application.routes.draw do

  #get 'home/index'
  devise_for :users
  root to: "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :products, only: [:index]

    root controller: :products, action: :index
end
