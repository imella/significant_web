class AddMoreAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender, :string
    add_column :users, :localtion, :string
  end
end
