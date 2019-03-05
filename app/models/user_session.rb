class UserSession < ApplicationRecord
    belongs_to :user
    belongs_to :session
    has_many :user_session_workout_exercises
    has_many :workout_exercises, through: :user_session_workout_exercises
    has_many :session_workouts, through: :user_session_workout_exercises
end
