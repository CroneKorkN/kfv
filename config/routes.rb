Rails.application.routes.draw do
  resources :attendances
  resources :customers
  resources :employees

  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'employees#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: "attendances#index"
end
