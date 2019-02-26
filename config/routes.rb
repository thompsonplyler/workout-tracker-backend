Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user, only: [:create]
      post '/users', to: 'user#create'
      resources :exercises
      resources :workout_exercises
      resources :user_sessions
      resources :session_workouts
      resources :workouts
      # get '/profile', to: 'user#profile'
    end
  end
end