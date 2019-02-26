class Api::V1::SessionWorkoutsController < ApplicationController
    # skip_before_action :authorized, only: [:create]  
    def profile
    end
    
    def create
      
    end

    def show
        render json: SessionWorkout.find(params[:id])
    end

    def index
        render json: SessionWorkout.all
    end
       
    private
        def user_params
          params.require(:session_workout).permit(:session_id, :workout_id, :order)
        end
end
  