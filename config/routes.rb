Rails.application.routes.draw do
  devise_for :users
  resources :products, only: [:index, :edit, :update]
  root controller: :products, action: :index
end