require 'sidekiq/web'

Rails.application.routes.draw do
  resources :routes do
    collection do
    put 'approve',to: 'routes#approve'
    get 'approve',to: 'routes#approve'
    end
  end
  resources :organizations do
    collection do
    put 'approve',to: 'organizations#approve'
    get 'approve',to: 'organizations#approve'
    end
  end
  resources :places
  resources :profiles
  root to: 'home#index'
  get 'main',to: 'main#index'
  get 'admin_view',to: 'admin_view#index'
  mount Sidekiq::Web => '/sidekiq'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    omniauth_callbacks: 'omniauth'
  }
end
