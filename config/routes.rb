Rails.application.routes.draw do
  devise_for :users
  resources :products, only: [:index, :edit, :update,:show,:create,:new]
  mount Cartify::Engine, at: '/' 
  root controller: :products, action: :index
end