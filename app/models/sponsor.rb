class Sponsor < ActiveRecord::Base
  belongs_to :race
  attr_accessible :name
end
