class WorkoutExerciseSerializer < ActiveModel::Serializer
    attributes :workout_id, :exercise_id, :reps, :set, :order
end