Rails.application.routes.draw do
  resources :attendances
  resources :customers
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "attendances#index"


  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
