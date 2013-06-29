object @race
attributes :id, :name, :short_description, :long_description, :progress, :accumulated, :image_url, :institution_image_url, :last_milestone, :youtube_id
attributes created_at_int: :created_at, updated_at_int: :updated_at

node :links do
  [
    {
      link: {
        rel: :show,
        url: api_v1_race_url(@race),
        method: :get
      }
    }
  ]
end

node :current_goal do
  {id: @race.current_goal.id, milestone: @race.current_goal.milestone, progress: @race.current_goal.progress, accumulated: @race.current_goal.accumulated, race_id: @race.id, created_at: @race.current_goal.created_at_int, updated_at: @race.current_goal.updated_at_int, name: @race.current_goal.name}
end

child :goals do
  attributes :id, :distance, :progress, :accumulated, :milestone, :name
  attributes completed?: :completed
end

child :runs do
  attributes :id, :total_time, :average_speed, :total_distance
  attributes created_at_int: :created_at, updated_at_int: :updated_at
  child :user do
    attributes :id, :name
  end
  child :run_type do
    attributes :id, :name
  end
end

child :run_types do
  attributes :id, :name
end

child :sponsors do
  attributes :id, :name, :image_url
end
