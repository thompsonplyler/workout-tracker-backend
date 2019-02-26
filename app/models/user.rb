class User < ApplicationRecord
    has_secure_password 
    validates :name, presence: true
    validates :email, uniqueness: true  
    
    has_many :user_sessions
    has_many :user_session_workout_exercises, through: :user_sessions
    has_many :sessions, through: :user_sessions
    has_many :workout_exercises, through: :user_session_workout_exercises
    has_many :exercises, through: :workout_exercises    
end
