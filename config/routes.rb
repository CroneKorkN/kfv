Rails.application.routes.draw do
  resources :customers
  resources :duties do # as employee
    get 'approve', to: 'duties#approve', as: 'approve'
  end
  resources :employees do
    resources :duties # as admin
  end
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'employees#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: "duties#approve"
end
