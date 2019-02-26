class UserSession < ApplicationRecord
    belongs_to :user
    belongs_to :session
    has_many :user_session_workout_exercises
end
