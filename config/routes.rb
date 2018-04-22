Rails.application.routes.draw do

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :contacts
  resources :sessions
  resources :users

  root 'contacts#index'
end
