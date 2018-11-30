Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
  resources :products, only: [:index, :show]
  root controller: :products, action: :index
  mount Cartify::Engine, at: '/'

=======
  resources :products, only: [:index]
  root controller: :products, action: :index
>>>>>>> 62dc54648e6011c0d6161cec86822c9925aa0487
end