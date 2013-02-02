class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :name, :oauth_token, :uid, :oauth_expires_at

  validates :name, :email, :oauth_token, :uid, presence: true

end
