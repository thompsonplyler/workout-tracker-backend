class Workout < ApplicationRecord
    has_many :session_workouts
    has_many :sessions, through: :session_workouts
    has_many :workout_exercises
    has_many :exercises, through: :workout_exercises
    
end
