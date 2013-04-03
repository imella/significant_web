class DestroyShareMessageFromRuns < ActiveRecord::Migration
  def change
    remove_column :runs, :share_message
  end
end
