class Goal < ActiveRecord::Base
  belongs_to :race
  attr_accessible :milestone

  def progress
    (accumulated >= milestone) ? 1.0 : (accumulated.to_f / milestone.to_f)
  end

  def accumulated
    race.runs.sum(:score)
  end

  def completed?
    accumulated >= milestone
  end
end
