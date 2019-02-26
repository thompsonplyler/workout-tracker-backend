class CreateUserSessionWorkoutExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :user_session_workout_exercises do |t|
      t.integer :user_session_id
      t.integer :session_workout_id
      t.integer :workout_exercise_id
      t.integer :input
      t.boolean :flag
      t.string :note

      t.timestamps
    end
  end
end
