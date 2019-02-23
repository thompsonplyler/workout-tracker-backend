class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.integer :day
      t.string :name
      t.timestamps
    end
  end
end
