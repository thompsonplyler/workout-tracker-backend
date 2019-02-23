class Api::V1::CharacterController < ApplicationController
    # skip_before_action :authorized, only: [:get]

    def index
        @characters = Character.all
        render json: { characters: @characters}
    end

    def profile
        @character = Character.find(params[:id])
        render json: {character: @character}
    end
    
    def create
        @user = User.create(user_params)
        if @user.valid?
        render json: { user: CharacterSerializer.new(@character)}, status: :created
        else
        render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    private

    def character_params
        params.require(:character).permit(:name, :intelligence, :durability, :strength, :speed, :fighting, :energy, :id)
    end
end
