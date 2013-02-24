class FixLocationTypoInUser < ActiveRecord::Migration
 def change
   rename_column :users, :localtion, :location
 end
end
