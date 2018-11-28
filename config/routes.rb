Rails.application.routes.draw do
    resources :products, only: [:index]

    root controller: :products, action: :index
end