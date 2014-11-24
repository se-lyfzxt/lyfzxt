json.array!(@users) do |user|
  json.extract! user, :id, :email, :nickname, :sex, :city_id, :note, :admin
  json.url user_url(user, format: :json)
end
