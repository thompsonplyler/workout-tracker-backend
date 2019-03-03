class UserSessionWorkoutExerciseSerializer < ActiveModel::Serializer
    attributes :id, :flag, :user_session_id, :session_workout_id, :workout_exercise_id, :input, :note
end