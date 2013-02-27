class Run < ActiveRecord::Base
  belongs_to :run_type
  belongs_to :race
  belongs_to :user
  attr_accessible :average_speed, :ended_at, :started_at, :total_distance, :total_time, :run_type_id, :user_id, :race_id

  validates :average_speed, :started_at, :ended_at, :total_distance, :total_time, :run_type_id, :user_id, :race_id, presence: true

  scope :by_type, lambda { |run_type_id| where(run_type_id: run_type_id)}

  def started_at_int
    started_at.to_i * 1000
  end

  def ended_at_int
    ended_at.to_i * 1000
  end

  def created_at_int
    created_at.to_i * 1000
  end

  def updated_at_int
    updated_at.to_i * 1000
  end

end
