Rails.application.routes.draw do
  root to: 'home#index'
  resources :books, only: [:index]

  namespace :api do
    resources :books, only: [:index, :show, :create, :update]
  end

end
