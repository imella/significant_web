collection @races
attributes :id, :name, :short_description, :long_description, :progress, :accumulated
attributes created_at_int: :created_at, updated_at_int: :updated_at

node :links do |race|
  [
    {
      action: :show,
      url: api_v1_race_url(race),
      method: :get
    }
  ]
end