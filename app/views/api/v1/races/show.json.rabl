object @race
attributes :id, :name, :short_description, :long_description, :progress
attributes created_at_int: :created_at, updated_at_int: :updated_at

node :links do
  [
    show: {
      url: api_v1_race_url(@race),
      method: :get
    }
  ]
end

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