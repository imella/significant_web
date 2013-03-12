class Goal < ActiveRecord::Base
  belongs_to :race
  attr_accessible :milestone

  default_scope order(:milestone)

  def progress
    (accumulated >= milestone) ? 1.0 : (accumulated.to_f / milestone.to_f)
  end

  def accumulated
    race.runs.sum(:score)
  end

  def completed?
    accumulated >= milestone
  end

  def created_at_int
    created_at.to_i * 1000
  end

  def updated_at_int
    updated_at.to_i * 1000
  end
end
