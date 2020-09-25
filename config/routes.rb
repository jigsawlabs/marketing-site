Rails.application.routes.draw do
  root to: 'pages#free'
  get 'about', to: 'pages#about'
  get 'tos', to: 'pages#tos'
  get 'practice', to: 'pages#practice'
  get 'login', to: 'pages#login'
  get 'course_details', to: 'pages#course_details'
  get 'free', to: 'pages#free', as: :course_signup

  post 'update_application', to: 'applications#update_app', as: 'update_app'
  resources :events
  get '/events_path' => redirect("https://www.meetup.com/Data-Workshops/events/"), :as => :events_path
  get '/applications/new' => redirect("https://meetings.hubspot.com/jeff525/-office-hours"), :as => :new_application_path
  resources :applications

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
