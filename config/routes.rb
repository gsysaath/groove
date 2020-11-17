Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/dashboard', to: "pages#dashboard"
  resources :vinyls, only: [ :index, :show, :new, :create, :destroy] do
    resources :rents, only: [ :new, :create ]
  end
  resources :rents, only: [ :destroy ]
end
