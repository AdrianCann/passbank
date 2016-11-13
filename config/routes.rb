Rails.application.routes.draw do
  root to: 'messages#index'
  resources :messages, only: [:index, :create]
  resources :message_views, only: [:new, :create]
end
