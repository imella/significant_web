class AddYoutubeIdToRace < ActiveRecord::Migration
  def change
    add_column :races, :youtube_id, :string
  end
end
