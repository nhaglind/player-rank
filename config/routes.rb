Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'
  resources :teams
  resources :players
  root to: 'pages#index'
end
