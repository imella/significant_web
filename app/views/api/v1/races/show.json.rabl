object @race
attributes :id, :name, :short_description, :long_description, :progress

child :goals do
  attributes :id, :distance, :run_type_id, :progress, :accumulated
  attributes completed?: :completed
  child :run_type do
    attributes :id, :name
  end
end

child :runs do
  attributes :total_time, :average_speed, :total_distance
  child :user do
    attributes :id, :name
  end
end