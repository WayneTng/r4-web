Rails.application.routes.draw do
  root 'room#index'

  mount ActionCable.server => '/cable'
end
