class SessionWorkout < ApplicationRecord
    belongs_to :session
    belongs_to :workout
    accepts_nested_attributes_for :session
    accepts_nested_attributes_for :workout
end
