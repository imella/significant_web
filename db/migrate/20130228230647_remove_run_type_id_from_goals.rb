class RemoveRunTypeIdFromGoals < ActiveRecord::Migration
  def change
    remove_column :goals, :run_type_id
  end
end
