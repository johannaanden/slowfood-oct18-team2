Rails.application.routes.draw do
  get 'products/show'
  devise_for :users
  resources :products, only: [:index, :show]
  root controller: :products, action: :index
  mount Cartify::Engine, at: '/'
end