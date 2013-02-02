class AddRaceTypeIdToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :race_type_id, :integer
    add_index :goals, :race_type_id
  end
end
