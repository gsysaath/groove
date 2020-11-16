Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/dashboard', to: "pages#dashboard"
  resources :vinyles, only: [ :index, :show, :new, :create, :destroy] do
    resources :trades, only: [ :create ]
  end
  resources :trades, only: [ :destroy ]
end
