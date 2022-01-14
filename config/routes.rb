Rails.application.routes.draw do
  resources :organizations
  resources :profiles
  root to: 'home#index'
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
        confirmations: 'users/confirmations',
        passwords: 'users/passwords',
        omniauth_callbacks: 'omniauth',

  }

end
