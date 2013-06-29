class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :image_url
      t.belongs_to :race

      t.timestamps
    end
    add_index :sponsors, :race_id
  end
end
