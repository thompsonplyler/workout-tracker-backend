class CreateSessionWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :session_workouts do |t|
      t.integer :session_id
      t.integer :workout_id
      t.integer :workout_order

      t.timestamps
    end
  end
end
