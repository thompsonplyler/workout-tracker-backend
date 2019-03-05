class SessionWorkout < ApplicationRecord
    belongs_to :session
    belongs_to :workout
    accepts_nested_attributes_for :session
    accepts_nested_attributes_for :workout
    has_many :user_session_workout_exercises
    has_many :user_sessions, through: :user_session_workout_exercises
    has_many :workout_exercises, through: :user_session_workout_exercises
end
