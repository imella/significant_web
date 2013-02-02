class Goals::Base < ActiveRecord::Base
  set_table_name 'goals'

  belongs_to :race
  attr_accessible :race_id, :type

end