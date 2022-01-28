Rails.application.routes.draw do
  resources :routes
  resources :places
  resources :organizations
  resources :profiles
  root to: 'home#index'
  get 'main',to: 'main#index'
  get 'all_places',to: 'all_places#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    omniauth_callbacks: 'omniauth'
  }
end
