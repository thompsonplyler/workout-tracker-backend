class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.integer :last_exercise_id
      t.integer :next_exercise_id

      t.timestamps
    end
  end
end
