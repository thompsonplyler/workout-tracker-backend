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
    
    def create
   
    end
       
        private
        def user_params
          params.require(:user_session).permit(:user_id, :session_id, :completed)
        end
  end
  