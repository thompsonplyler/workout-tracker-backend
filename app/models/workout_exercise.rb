class WorkoutExercise < ApplicationRecord
    belongs_to :workout
    belongs_to :exercise
    accepts_nested_attributes_for :workout
    accepts_nested_attributes_for :exercise
end
