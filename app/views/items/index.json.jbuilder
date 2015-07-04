json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :status
  json.url item_url(item, format: :json)
end
