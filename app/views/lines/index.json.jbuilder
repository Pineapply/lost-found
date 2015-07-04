json.array!(@lines) do |line|
  json.extract! line, :id, :name, :description, :destination, :time
  json.url line_url(line, format: :json)
end
