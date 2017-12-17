Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'pages#index'

  resources :users, only: [:show]
  resource :user, only: [:edit] do
    collection do
      patch 'update_password'
    end
  end
end
