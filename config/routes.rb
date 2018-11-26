Rails.application.routes.draw do
  devise_for :users
  get 'user/index'
  root controller: :users, action: :index
  resources :user
end
