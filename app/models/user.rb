class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :name, :oauth_token, :provider, :uid

  validates :name, :email, :oauth_token, :provider, :uid, presence: true

end
