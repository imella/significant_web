class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :name, :oauth_token, :uid, :oauth_expires_at

  validates :name, :email, :uid, presence: true

  validates :email, uniqueness: true


  def self.find_by_id_or_facebook_id _id
    _user = find_by_id(_id) || find_by_uid(_id)
    if _user
      _user
    else
      raise ActiveRecord::RecordNotFound
    end
  end

  def created_at_int
    created_at.to_i
  end

  def updated_at_int
    updated_at.to_i
  end

end
