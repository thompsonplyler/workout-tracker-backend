class CreateUserWorkoutExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :user_workout_exercises do |t|
      t.integer :user_id
      t.integer :workout_exercise_id
      t.integer :user_input
      t.string :user_notes

      t.timestamps
    end
  end
end
