Rails.application.routes.draw do
  root to: 'home#index'
  get 'users/form/index', to: 'users/users#index'
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
        confirmations: 'users/confirmations',
        passwords: 'users/passwords',
        omniauth_callbacks: 'omniauth',

  }
end
