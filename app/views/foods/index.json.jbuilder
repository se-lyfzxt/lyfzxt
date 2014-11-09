json.array!(@foods) do |food|
  json.extract! food, :id, :foodname, :city_id, :image
  json.url food_url(food, format: :json)
end
