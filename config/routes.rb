Rails.application.routes.draw do
  root to: 'pages#index'
  resources :events
  get 'about', to: 'pages#about'
  get 'practice', to: 'pages#practice'
  get 'login', to: 'pages#login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
