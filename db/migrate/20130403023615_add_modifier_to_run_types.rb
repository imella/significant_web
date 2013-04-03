class AddModifierToRunTypes < ActiveRecord::Migration
  def change
    add_column :run_types, :modifier, :float
  end
end
