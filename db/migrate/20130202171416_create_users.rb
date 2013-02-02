class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.date :birthday
      t.string :provider
      t.string :uid
      t.string :oauth_token

      t.timestamps
    end
  end
end
