class Api::V1::UserSessionWorkoutExerciseController < ApplicationController
    # skip_before_action :authorized, only: [:create]  
    def create

    end
       
    private
        def user_params
          params.require(:user_session_workout_exercise).permit(:user_session_id, :session_workout_id, :workout_exercise_id, :input, :note)
        end
end
  