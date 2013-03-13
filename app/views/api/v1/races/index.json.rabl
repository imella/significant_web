collection @races
attributes :id, :name, :short_description, :long_description, :progress, :accumulated
attributes created_at_int: :created_at, updated_at_int: :updated_at

node :current_goal do |race|
  {id: race.current_goal.id, milestone: race.current_goal.milestone, race_id: race.id, created_at: race.current_goal.created_at_int, updated_at: race.current_goal.updated_at_int}
end

node :links do |race|
  [
   {
      link: {
        rel: :show,
        url: api_v1_race_url(race),
        method: :get
      }
    }
  ]
end

child :run_types do
  attributes :id, :name
end