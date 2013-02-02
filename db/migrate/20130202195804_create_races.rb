class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name
      t.string :short_description
      t.text :long_description

      t.timestamps
    end
  end
end
