class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :name, :oauth_token, :uid, :oauth_expires_at

  validates :name, :email, :oauth_token, :uid, presence: true

  validates :email, uniqueness: true


  def self.find_by_id_or_facebook_id _id
    find_by_id(_id) || find_by_uid(_id)
  end

end
