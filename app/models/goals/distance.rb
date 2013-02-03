class Goals::Distance < Goals::Base
  attr_accessible :distance

  # Return percentage of progress, a number between 0..1
  def progress
    (accumulated >= distance) ? 1.0 : (accumulated.to_f / distance.to_f)
  end

  def accumulated
    race.runs.by_type(run_type_id).sum(:total_distance)
  end

  def completed?
    accumulated >= distance
  end
end