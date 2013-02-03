object @race
attributes :id, :name, :short_description, :long_description, :progress

child :goals do
  attributes :id, :distance, :run_type_id, :progress, :accumulated
  child :run_type do
    attributes :id, :name
  end
end