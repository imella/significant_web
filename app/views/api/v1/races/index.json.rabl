collection @races
attributes :id, :name, :short_description, :long_description, :progress, :accumulated, :current_goal
attributes created_at_int: :created_at, updated_at_int: :updated_at

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