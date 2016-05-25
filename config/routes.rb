Rails.application.routes.draw do
  root 'home#index'

  mount ActionCable.server => '/cable'

  resources :home, only: :index
end
