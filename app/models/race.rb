class Race < ActiveRecord::Base
  attr_accessible :long_description, :name, :short_description, :logo

  has_attached_file :logo

  has_many :goals
  has_many :runs
  has_many :race_run_types
  has_many :run_types, through: :race_run_types


  def progress
    accumulated / last_milestone
  end

  def accumulated
    runs.sum(:score)
  end

  def created_at_int
    created_at.to_i * 1000
  end

  def updated_at_int
    updated_at.to_i * 1000
  end

  def last_milestone
    goals.last.milestone
  end

  def current_goal
    _goal = goals.keep_if { |g| not g.completed? }.first
    if _goal
      _goal
    else
      goals.last
    end
  end

end
