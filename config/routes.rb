Rails.application.routes.draw do
  get 'user/index'
  root controller: :users, action: :index
  resources :user
end
