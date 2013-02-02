class AddRunTypeIdToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :run_type_id, :integer
  end
end
