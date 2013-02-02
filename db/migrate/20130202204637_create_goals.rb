class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :distance
      t.belongs_to :race
      t.string :type

      t.timestamps
    end
    add_index :goals, :race_id
  end
end
