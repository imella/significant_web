class CreateRaceRunTypes < ActiveRecord::Migration
  def change
    create_table :race_run_types do |t|
      t.belongs_to :race
      t.belongs_to :run_type

      t.timestamps
    end
    add_index :race_run_types, :race_id
    add_index :race_run_types, :run_type_id
  end
end
