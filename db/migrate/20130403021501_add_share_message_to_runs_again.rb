class AddShareMessageToRunsAgain < ActiveRecord::Migration
  def change
    add_column :runs, :share_message, :text
  end
end
