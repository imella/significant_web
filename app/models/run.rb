class Run < ActiveRecord::Base
  belongs_to :run_type
  belongs_to :race
  belongs_to :user
  attr_accessible :average_speed, :ended_at, :started_at, :total_distance, :total_time, :run_type_id, :user_id, :race_id
end
