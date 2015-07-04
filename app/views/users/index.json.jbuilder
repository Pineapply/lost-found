json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :type
  json.url user_url(user, format: :json)
end
