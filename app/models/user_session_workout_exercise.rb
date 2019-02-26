class UserSessionWorkoutExercise < ApplicationRecord
    belongs_to :user_session
    belongs_to :workout_exercise
    belongs_to :session_workout

end
