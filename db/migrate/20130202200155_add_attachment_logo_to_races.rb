class AddAttachmentLogoToRaces < ActiveRecord::Migration
  def self.up
    change_table :races do |t|
      t.attachment :logo
    end
  end

  def self.down
    drop_attached_file :races, :logo
  end
end
