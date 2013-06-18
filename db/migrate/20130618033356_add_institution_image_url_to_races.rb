class AddInstitutionImageUrlToRaces < ActiveRecord::Migration
  def change
    add_column :races, :institution_image_url, :string
  end
end
