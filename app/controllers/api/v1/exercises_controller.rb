class Api::V1::ExercisesController < ApplicationController
    skip_before_action :authorized, only: [:create]
    def profile
      render json: Exercise.new(params)
    end

    def show 
        render json: Exercise.find(params[:id])
    end

    def index
        render json: Exercise.all
    end
    
    private
    
    def user_params
        params.require(:exercise).permit(:bi, :category, :description, :gif_url, :name)
    end
end