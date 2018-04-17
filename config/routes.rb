Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'
  resources :teams
  root to: 'pages#index'
end
