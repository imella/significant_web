class AddScoreToRuns < ActiveRecord::Migration
  def change
    add_column :runs, :score, :float
  end
end
