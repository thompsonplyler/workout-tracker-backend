class UserSessionWorkoutExercise < ApplicationRecord
    # validates :user_session_id, presence: true
    # validates :session_workout_id, presence: true  
    # validates :workout_exercise_id, presence: true
    
    belongs_to :user_session
    belongs_to :workout_exercise
    belongs_to :session_workout

end
