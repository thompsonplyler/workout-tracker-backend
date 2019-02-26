class WorkoutExercise < ApplicationRecord
    belongs_to :workout
    belongs_to :exercise
    has_many :user_session_workout_exercises
    accepts_nested_attributes_for :workout
    accepts_nested_attributes_for :exercise
end
