Rails.application.routes.draw do
  root 'articles#index'
  resources :sessions
  resources :users  
  resources :articles
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
