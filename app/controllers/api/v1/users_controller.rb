class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def profile
    render json: {user: UserSerializer.new(current_user)}, status: :accepted
  end
  
  def create
        @user = User.create(user_params)
        make_sessions(@user)
        if @user.valid?
          @token = encode_token(user_id: @user.id)
          render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
      end

      def index
        render json: User.all, status: :accepted
      end

      def current
        render json: current_user
      end
     
      private

      def make_sessions(user)
        sessions = Session.all
        sessions.map{|session| UserSession.create(user_id: user.id, session_id: session.id) }
      end

      def user_params
        params.require(:user).permit(:name, :password, :email)
      end
end
