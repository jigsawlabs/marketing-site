Rails.application.routes.draw do
  root to: 'pages#index'
  get 'about', to: 'pages#about'
  get 'tos', to: 'pages#tos'
  get 'practice', to: 'pages#practice'
  get 'login', to: 'pages#login'
  get 'course_details', to: 'pages#course_details'

  get "/course_signup" => redirect("http://learn.jigsawlabs.io/account/finish_auth?course_id=course-v1:masters+5+2019&enrollment_action=enroll&email_opt_in=false"), :as => :course_signup
  post 'update_application', to: 'applications#update_app', as: 'update_app'
  resources :events
  get '/events_path' => redirect("https://www.meetup.com/Data-Workshops/events/"), :as => :events_path
  resources :applications

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
