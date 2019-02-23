class Session < ApplicationRecord
    has_many :session_workouts
    has_many :workouts, through: :session_workouts
    accepts_nested_attributes_for :session_workouts
end
