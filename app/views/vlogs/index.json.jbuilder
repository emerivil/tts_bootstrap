json.array!(@vlogs) do |vlog|
  json.extract! vlog, :id, :name, :description, :year_founded
  json.url vlog_url(vlog, format: :json)
end
