class Race < ActiveRecord::Base
  attr_accessible :long_description, :name, :short_description, :logo

  has_attached_file :logo


end
