Rails.application.routes.draw do
  root to: 'pages#index'
  resources :events
  get 'about', to: 'pages#about'
  get 'practice', to: 'pages#practice'
  get 'login', to: 'pages#login'
  get 'course_details', to: 'pages#course_details'
  post 'update_application', to: 'applications#update_app', as: 'update_app'
  resources :events
  resources :applications

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
