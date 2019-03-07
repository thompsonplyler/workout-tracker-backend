class Api::V1::UserSessionsController < ApplicationController
    # skip_before_action :authorized, only: [:create]
  
    def profile
    end

    def show
        render json: UserSession.find(params[:id])
    end

    def index
        render json: UserSession.all.sort_by{|u|u.id}
    end

    def daily_workout
        render json: DailyWorkoutSerializer.new
    end
    
    def create
   
    end

    def update
        @user_session = UserSession.find(params[:id])
      @user_session.update(user_session_params)
      if @user_session.valid? 
        render json: {user_session: UserSessionSerializer.new(@user_session)}
      else
        render json: {error: "Could not update.", status: :not_acceptable}
      end
    end


       
        private

        def user_session_params
          params.require(:user_session).permit(:user_id, :session_id, :completed)
        end
  end
  