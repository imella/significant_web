class Goal < ActiveRecord::Base
  belongs_to :race
  attr_accessible :distance, :type
end
