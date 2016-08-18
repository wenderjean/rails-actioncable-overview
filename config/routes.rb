Rails.application.routes.draw do
  root to: "site#index"
  devise_for :users
  resources :chatrooms
  resources :messages
end
