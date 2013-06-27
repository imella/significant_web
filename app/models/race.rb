class Race < ActiveRecord::Base
  attr_accessible :long_description, :name, :short_description, :logo, :youtube_id

  has_attached_file :logo
  has_attached_file :institution_image

  has_many :goals
  has_many :runs
  has_many :race_run_types
  has_many :run_types, through: :race_run_types
  has_many :sponsors


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
    _goal = nil
    goals.order(:milestone).each do |goal|
      if not goal.completed?
        _goal = goal
      end
    end
    if not _goal.nil?
      _goal
    else
      _goal = goals.last
    end
    goal
  end

end
