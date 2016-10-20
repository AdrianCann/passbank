Rails.application.routes.draw do
  resources :message_views, only: [:new, :create]
end
