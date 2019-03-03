class Api::V1::UserSessionWorkoutExercisesController < ApplicationController
    # skip_before_action :authorized, only: [:create]  

    
    def create
      @user_session_workout_exercise = UserSessionWorkoutExercise.create(user_session_workout_exercise_params)
        if @user_session_workout_exercise.valid?
        render json: { user_session_workout_exercise: UserSessionWorkoutExerciseSerializer.new(@user_session_workout_exercise)}, status: :created
      else
        render json: {error: 'data not valid' , status: :not_acceptable}
      end
    end

    def index
      render json: UserSessionWorkoutExercise.all
    end

    def show
      @user_session_workout_exercise = UserSessionWorkoutExercise.find(params[:id])
      render json: @user_session_workout_exercise 
    end

    def update
      @user_session_workout_exercise = UserSessionWorkoutExercise.find(params[:id])
      @user_session_workout_exercise.update(user_session_workout_exercise_params)
      if @user_session_workout_exercise.valid? 
        render json: {user_session_workout_exercise: UserSessionWorkoutExerciseSerializer.new(@user_session_workout_exercise)}
      else
        render json: {error: "Could not update.", status: :not_acceptable}
      end
    end

    private
        def user_session_workout_exercise_params
          params.require(:user_session_workout_exercise).permit(:flag, :user_session_id, :session_workout_id, :workout_exercise_id, :input, :note)
        end
end
  