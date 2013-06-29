collection @races
attributes :id, :name, :short_description, :long_description, :progress, :accumulated, :image_url, :institution_image_url, :last_milestone, :youtube_id, :share_message_template
attributes created_at_int: :created_at, updated_at_int: :updated_at

node :current_goal do |race|
  {id: race.current_goal.id, milestone: race.current_goal.milestone, race_id: race.id, created_at: race.current_goal.created_at_int, updated_at: race.current_goal.updated_at_int, name: race.current_goal.name, progress: race.current_goal.progress, number: race.current_goal.number, accumulated: race.current_goal.accumulated}
end

child :goals do
  attributes :id, :distance, :progress, :accumulated, :milestone, :name, :number
  attributes completed?: :completed
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