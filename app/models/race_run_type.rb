class RaceRunType < ActiveRecord::Base
  belongs_to :race
  belongs_to :run_type
  # attr_accessible :title, :body
end
