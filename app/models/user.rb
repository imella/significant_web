class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :name, :oauth_token, :provider, :uid
end
