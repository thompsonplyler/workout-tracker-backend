Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user, only: [:create]
      post '/users', to: 'user#create'
      # get '/profile', to: 'user#profile'
    end
  end
end