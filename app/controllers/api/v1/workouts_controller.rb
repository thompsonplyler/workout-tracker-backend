class Api::V1::WorkoutsController < ApplicationController
    # skip_before_action :authorized, only: [:create]  
    def show 
        render json: Workout.find(params[:id])
        # render json: {user: UserSerializer.new(current_user)}
    end

    def index
      render json: Workout.all
    end
       
    private
        def user_params
          params.require(:workout).permit(:id, :component, :name)
        end