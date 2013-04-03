class AddShareMessageTemplateToRaces < ActiveRecord::Migration
  def change
    add_column :races, :share_message_template, :text
  end
end
