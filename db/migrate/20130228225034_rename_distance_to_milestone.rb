class RenameDistanceToMilestone < ActiveRecord::Migration
  def change
    rename_column :goals, :distance, :milestone
  end
end
