class Exercise < ApplicationRecord
    has_many :workout_exercises
    has_many :workouts, through: :workout_exercises
    has_many :user_session_workout_exercises, through: :workout_exercises
    accepts_nested_attributes_for :workout_exercises
end
