Rails.application.routes.draw do
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/dashboard', to: "pages#dashboard"
  get '/random', to: "pages#random"
  resources :vinyls, only: [ :index, :show, :new, :create, :destroy] do
    resources :rents, only: [ :new, :create ]
  end
  resources :rents, only: [ :destroy ]
end
