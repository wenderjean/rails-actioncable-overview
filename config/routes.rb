Rails.application.routes.draw do
  root to: "site#index"

  mount ActionCable.server => '/cable'

  devise_for :users
  resources :chatrooms
  resources :messages
end
