Rails.application.routes.draw do
  get 'user/index'
  resources :user
end
