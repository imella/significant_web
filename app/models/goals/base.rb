class Goals::Base < ActiveRecord::Base
  set_table_name 'goals'

  attr_accessible :race_id, :type, :race_type_id

  belongs_to :race
  belongs_to :race_type

end