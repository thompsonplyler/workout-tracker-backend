class Api::V1::WorkoutExercisesController < ApplicationController
    skip_before_action :authorized, only: [:create]  
    def show 
        render json: WorkoutExercise.find(params[:id])
        # render json: {user: UserSerializer.new(current_user)}
    end

    def index
      render json: WorkoutExercise.all
    end
       
    private
        def user_params
          params.require(:workout_exercise).permit(:workout_id, :exercise_id, :reps, :set, :order)
        end
end
  