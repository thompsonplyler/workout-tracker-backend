class Api::V1::UserSessionWorkoutExercisesController < ApplicationController
    # skip_before_action :authorized, only: [:create]  
    def profile
      render json: {user_session_workout_exercise: UserSessionWorkoutExerciseSerializer }
    end
    
    def create
      
    end
       
    private
        def user_params
          params.require(:user_session_workout_exercise).permit(:flag, :user_session_id, :session_workout_id, :workout_exercise_id, :input, :note)
        end
end
  