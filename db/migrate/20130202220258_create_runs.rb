class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.belongs_to :run_type
      t.integer :total_time
      t.float :average_speed
      t.integer :total_distance
      t.datetime :started_at
      t.datetime :ended_at
      t.belongs_to :race
      t.belongs_to :user

      t.timestamps
    end
    add_index :runs, :run_type_id
    add_index :runs, :race_id
    add_index :runs, :user_id
  end
end
