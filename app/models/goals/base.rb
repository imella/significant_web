class Goals::Base < ActiveRecord::Base
  self.table_name = 'goals'

  attr_accessible :race_id, :type, :run_type_id

  belongs_to :race
  belongs_to :run_type

end