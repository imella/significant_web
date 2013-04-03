class RunType < ActiveRecord::Base
  attr_accessible :name

  validates :name, :modifier, presence: true
end
