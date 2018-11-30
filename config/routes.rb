Rails.application.routes.draw do
  devise_for :users
  mount Cartify::Engine, at: '/'
  resources :products, only: [:index, :show]
  root controller: :products, action: :index
end