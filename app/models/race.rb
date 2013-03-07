class Race < ActiveRecord::Base
  attr_accessible :long_description, :name, :short_description, :logo

  has_attached_file :logo

  has_many :goals
  has_many :runs
  has_many :race_run_types
  has_many :run_types, through: :race_run_types


  def progress
    (goals.map &:progress).reduce(:+) / goals.size
  end

  def accumulated
    (goals.map &:accumulated).reduce(:+)
  end

  def created_at_int
    created_at.to_i * 1000
  end

  def updated_at_int
    updated_at.to_i * 1000
  end

end
