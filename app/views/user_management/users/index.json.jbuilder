json.array!(@users) do |user_management_user|
  json.extract! user_management_user, :id
  json.url user_management_user_url(user_management_user, format: :json)
end
