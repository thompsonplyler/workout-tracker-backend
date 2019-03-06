Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user, only: [:create]
      post '/users', to: 'users#create'
      resources :user_session_workout_exercises
      post '/user_session_workout_exercises', to: 'user_session_workout_exercise#create'
      resources :exercises
      resources :workout_exercises
      resources :user_sessions
      get '/daily_workout', to: 'user_sessions#daily_workout'
      # => '/user_sessions#daily_workout', :as => :daily_workout
      resources :session_workout 
      resources :workouts
      post '/login', to: 'auth#create'
      get '/profile', to: 'user#profile'
    end
  end
  # get '/api/v1/user_sessions/daily_workouts' to 'user_sessions#daily_workouts', as: 'daily_workouts'
end