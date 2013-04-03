# encoding: utf-8
class Run < ActiveRecord::Base
  belongs_to :run_type
  belongs_to :race
  belongs_to :user
  attr_accessible :average_speed, :ended_at, :started_at, :total_distance, :total_time, :run_type_id, :user_id, :race_id, :share_message

  validates :average_speed, :started_at, :ended_at, :total_distance, :total_time, :run_type_id, :user_id, :race_id, presence: true

  scope :by_type, lambda { |run_type_id| where(run_type_id: run_type_id)}

  before_save :set_score, :set_share_message
  before_validation :set_average_speed

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

  def set_score
    self.score = self.total_distance
  end

  def set_average_speed
    self.average_speed = (self.total_distance.to_f/(self.total_time.to_f / 1000.0)) * 3.6
  end

  def to_km
    total_distance / 1000
  end

  def set_share_message
    self.share_message = "Acabo de aportar #{to_km} Km de #{run_type.name}, para la campaña #{race.name}"
  end

end
